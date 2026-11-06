-- VilliShop MVP foundation
-- Apply only to a dedicated VilliShop Supabase project after reviewing this migration.
-- Never run against the YoungXCode AI Sales OS project.

create extension if not exists pgcrypto;

create type public.app_role as enum ('customer', 'shop_owner', 'rider', 'admin', 'super_admin');
create type public.shop_status as enum ('pending', 'approved', 'suspended', 'rejected');
create type public.order_status as enum ('placed', 'accepted', 'packed', 'ready_for_pickup', 'assigned', 'picked_up', 'on_the_way', 'delivered', 'cancelled', 'refunded');
create type public.payment_status as enum ('pending', 'authorized', 'paid', 'failed', 'refunded', 'partially_refunded');

create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text, phone text unique, avatar_url text,
  preferred_language text not null default 'hi',
  created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create table public.user_roles (
  user_id uuid not null references public.profiles(id) on delete cascade,
  role public.app_role not null, created_at timestamptz not null default now(),
  primary key (user_id, role)
);
create table public.zones (
  id uuid primary key default gen_random_uuid(), name text not null, slug text not null unique,
  district text, state text not null default 'Rajasthan', pincode text,
  center_lat double precision, center_lng double precision, delivery_radius_km numeric(7,2),
  is_active boolean not null default true, created_at timestamptz not null default now()
);
create table public.shops (
  id uuid primary key default gen_random_uuid(), owner_id uuid not null references public.profiles(id),
  zone_id uuid not null references public.zones(id), name text not null, description text,
  category text not null default 'grocery', phone text, address text not null,
  latitude double precision, longitude double precision,
  status public.shop_status not null default 'pending', opening_time time, closing_time time,
  minimum_order_amount numeric(12,2) not null default 0 check (minimum_order_amount >= 0),
  created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create table public.shop_members (
  shop_id uuid not null references public.shops(id) on delete cascade,
  user_id uuid not null references public.profiles(id) on delete cascade,
  member_role text not null default 'manager' check (member_role in ('owner','manager','staff')),
  created_at timestamptz not null default now(), primary key (shop_id, user_id)
);
create table public.categories (
  id uuid primary key default gen_random_uuid(), parent_id uuid references public.categories(id),
  name text not null, slug text not null unique, icon_url text,
  sort_order integer not null default 0, is_active boolean not null default true
);
create table public.products (
  id uuid primary key default gen_random_uuid(), shop_id uuid not null references public.shops(id) on delete cascade,
  category_id uuid references public.categories(id), name text not null, description text, brand text,
  unit_label text not null default 'piece', image_url text,
  mrp numeric(12,2) check (mrp is null or mrp >= 0),
  base_price numeric(12,2) not null check (base_price >= 0),
  platform_margin_percent numeric(6,3) not null default 0 check (platform_margin_percent >= 0),
  selling_price numeric(12,2) not null check (selling_price >= 0),
  is_active boolean not null default true, created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table public.inventory (
  product_id uuid primary key references public.products(id) on delete cascade,
  available_quantity numeric(12,3) not null default 0 check (available_quantity >= 0),
  low_stock_threshold numeric(12,3) not null default 5 check (low_stock_threshold >= 0),
  is_available boolean not null default true, updated_at timestamptz not null default now()
);
create table public.customer_addresses (
  id uuid primary key default gen_random_uuid(),
  customer_id uuid not null references public.profiles(id) on delete cascade,
  label text not null default 'Home', recipient_name text, phone text, address_line text not null,
  landmark text, village text, district text, state text not null default 'Rajasthan',
  pincode text, latitude double precision, longitude double precision,
  is_default boolean not null default false, created_at timestamptz not null default now()
);
create table public.carts (
  id uuid primary key default gen_random_uuid(), customer_id uuid not null references public.profiles(id) on delete cascade,
  shop_id uuid not null references public.shops(id), created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(), unique (customer_id, shop_id)
);
create table public.cart_items (
  id uuid primary key default gen_random_uuid(), cart_id uuid not null references public.carts(id) on delete cascade,
  product_id uuid not null references public.products(id), quantity numeric(12,3) not null check (quantity > 0),
  created_at timestamptz not null default now(), unique (cart_id, product_id)
);
create table public.riders (
  id uuid primary key default gen_random_uuid(), user_id uuid not null unique references public.profiles(id) on delete cascade,
  zone_id uuid not null references public.zones(id), vehicle_type text, vehicle_number text,
  is_verified boolean not null default false, is_available boolean not null default false,
  created_at timestamptz not null default now()
);
create table public.orders (
  id uuid primary key default gen_random_uuid(), order_number text not null unique,
  customer_id uuid not null references public.profiles(id), shop_id uuid not null references public.shops(id),
  zone_id uuid not null references public.zones(id), address_id uuid references public.customer_addresses(id),
  status public.order_status not null default 'placed', payment_status public.payment_status not null default 'pending',
  payment_method text not null default 'cod' check (payment_method in ('cod','razorpay')),
  subtotal numeric(12,2) not null default 0 check (subtotal >= 0),
  platform_margin_amount numeric(12,2) not null default 0 check (platform_margin_amount >= 0),
  packaging_fee numeric(12,2) not null default 0 check (packaging_fee >= 0),
  handling_fee numeric(12,2) not null default 0 check (handling_fee >= 0),
  delivery_fee numeric(12,2) not null default 0 check (delivery_fee >= 0),
  gst_amount numeric(12,2) not null default 0 check (gst_amount >= 0),
  discount_amount numeric(12,2) not null default 0 check (discount_amount >= 0),
  total_amount numeric(12,2) not null default 0 check (total_amount >= 0),
  notes text, placed_at timestamptz not null default now(), delivered_at timestamptz,
  created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create table public.order_items (
  id uuid primary key default gen_random_uuid(), order_id uuid not null references public.orders(id) on delete cascade,
  product_id uuid references public.products(id), product_name text not null, unit_label text not null,
  quantity numeric(12,3) not null check (quantity > 0),
  base_price_snapshot numeric(12,2) not null check (base_price_snapshot >= 0),
  selling_price_snapshot numeric(12,2) not null check (selling_price_snapshot >= 0),
  line_total numeric(12,2) not null check (line_total >= 0)
);
create table public.delivery_assignments (
  id uuid primary key default gen_random_uuid(), order_id uuid not null unique references public.orders(id) on delete cascade,
  rider_id uuid not null references public.riders(id), assigned_at timestamptz not null default now(),
  picked_up_at timestamptz, delivered_at timestamptz, delivery_otp_hash text,
  created_at timestamptz not null default now()
);
create table public.rider_locations (
  id bigint generated always as identity primary key, rider_id uuid not null references public.riders(id) on delete cascade,
  latitude double precision not null, longitude double precision not null, recorded_at timestamptz not null default now()
);
create table public.payments (
  id uuid primary key default gen_random_uuid(), order_id uuid not null references public.orders(id) on delete cascade,
  provider text not null default 'razorpay', provider_order_id text unique, provider_payment_id text unique,
  amount numeric(12,2) not null check (amount >= 0),
  status public.payment_status not null default 'pending', verified_at timestamptz,
  created_at timestamptz not null default now()
);
create table public.coupons (
  id uuid primary key default gen_random_uuid(), code text not null unique,
  discount_type text not null check (discount_type in ('flat','percent')),
  discount_value numeric(12,2) not null check (discount_value > 0),
  minimum_order_amount numeric(12,2) not null default 0, max_discount numeric(12,2),
  starts_at timestamptz, expires_at timestamptz, is_active boolean not null default true
);
create table public.local_services (
  id uuid primary key default gen_random_uuid(), zone_id uuid not null references public.zones(id),
  provider_id uuid not null references public.profiles(id), category text not null, title text not null,
  description text, phone text, price_from numeric(12,2), is_verified boolean not null default false,
  is_active boolean not null default true, created_at timestamptz not null default now()
);

create index shops_zone_status_idx on public.shops(zone_id, status);
create index products_shop_active_idx on public.products(shop_id, is_active);
create index orders_customer_created_idx on public.orders(customer_id, created_at desc);
create index orders_shop_status_idx on public.orders(shop_id, status);
create index orders_zone_status_idx on public.orders(zone_id, status);
create index rider_locations_rider_time_idx on public.rider_locations(rider_id, recorded_at desc);
create index services_zone_category_idx on public.local_services(zone_id, category, is_active);

create or replace function public.has_role(required_role public.app_role)
returns boolean language sql stable security definer set search_path = ''
as $$ select exists (select 1 from public.user_roles ur where ur.user_id = (select auth.uid()) and ur.role = required_role); $$;

create or replace function public.is_shop_member(target_shop_id uuid)
returns boolean language sql stable security definer set search_path = ''
as $$ select exists (select 1 from public.shop_members sm where sm.shop_id = target_shop_id and sm.user_id = (select auth.uid())); $$;

create or replace function public.is_assigned_rider(target_order_id uuid)
returns boolean language sql stable security definer set search_path = ''
as $$ select exists (select 1 from public.delivery_assignments da join public.riders r on r.id = da.rider_id where da.order_id = target_order_id and r.user_id = (select auth.uid())); $$;

alter table public.profiles enable row level security;
alter table public.user_roles enable row level security;
alter table public.zones enable row level security;
alter table public.shops enable row level security;
alter table public.shop_members enable row level security;
alter table public.categories enable row level security;
alter table public.products enable row level security;
alter table public.inventory enable row level security;
alter table public.customer_addresses enable row level security;
alter table public.carts enable row level security;
alter table public.cart_items enable row level security;
alter table public.riders enable row level security;
alter table public.orders enable row level security;
alter table public.order_items enable row level security;
alter table public.delivery_assignments enable row level security;
alter table public.rider_locations enable row level security;
alter table public.payments enable row level security;
alter table public.coupons enable row level security;
alter table public.local_services enable row level security;

create policy "profiles read self or admin" on public.profiles for select to authenticated using (id = (select auth.uid()) or public.has_role('admin') or public.has_role('super_admin'));
create policy "profiles update self" on public.profiles for update to authenticated using (id = (select auth.uid())) with check (id = (select auth.uid()));
create policy "roles read self or admin" on public.user_roles for select to authenticated using (user_id = (select auth.uid()) or public.has_role('admin') or public.has_role('super_admin'));
create policy "active zones readable" on public.zones for select to anon, authenticated using (is_active or public.has_role('admin') or public.has_role('super_admin'));
create policy "approved shops readable" on public.shops for select to anon, authenticated using (status = 'approved' or owner_id = (select auth.uid()) or public.is_shop_member(id) or public.has_role('admin') or public.has_role('super_admin'));
create policy "shop owners create shops" on public.shops for insert to authenticated with check (owner_id = (select auth.uid()));
create policy "shop members read own memberships" on public.shop_members for select to authenticated using (user_id = (select auth.uid()) or public.has_role('admin') or public.has_role('super_admin'));
create policy "active categories readable" on public.categories for select to anon, authenticated using (is_active);
create policy "active products readable" on public.products for select to anon, authenticated using ((is_active and exists (select 1 from public.shops s where s.id = shop_id and s.status = 'approved')) or public.is_shop_member(shop_id) or public.has_role('admin') or public.has_role('super_admin'));
create policy "inventory readable for active products" on public.inventory for select to anon, authenticated using (exists (select 1 from public.products p join public.shops s on s.id = p.shop_id where p.id = product_id and p.is_active and s.status = 'approved') or exists (select 1 from public.products p where p.id = product_id and public.is_shop_member(p.shop_id)) or public.has_role('admin') or public.has_role('super_admin'));
create policy "customer manages own addresses" on public.customer_addresses for all to authenticated using (customer_id = (select auth.uid())) with check (customer_id = (select auth.uid()));
create policy "customer manages own carts" on public.carts for all to authenticated using (customer_id = (select auth.uid())) with check (customer_id = (select auth.uid()));
create policy "customer manages own cart items" on public.cart_items for all to authenticated using (exists (select 1 from public.carts c where c.id = cart_id and c.customer_id = (select auth.uid()))) with check (exists (select 1 from public.carts c where c.id = cart_id and c.customer_id = (select auth.uid())));
create policy "riders read own profile" on public.riders for select to authenticated using (user_id = (select auth.uid()) or public.has_role('admin') or public.has_role('super_admin'));
create policy "participants read orders" on public.orders for select to authenticated using (customer_id = (select auth.uid()) or public.is_shop_member(shop_id) or public.is_assigned_rider(id) or public.has_role('admin') or public.has_role('super_admin'));
create policy "participants read order items" on public.order_items for select to authenticated using (exists (select 1 from public.orders o where o.id = order_id and (o.customer_id = (select auth.uid()) or public.is_shop_member(o.shop_id) or public.is_assigned_rider(o.id) or public.has_role('admin') or public.has_role('super_admin'))));
create policy "participants read assignments" on public.delivery_assignments for select to authenticated using (public.is_assigned_rider(order_id) or exists (select 1 from public.orders o where o.id = order_id and (o.customer_id = (select auth.uid()) or public.is_shop_member(o.shop_id))) or public.has_role('admin') or public.has_role('super_admin'));
create policy "rider reads own locations" on public.rider_locations for select to authenticated using (exists (select 1 from public.riders r where r.id = rider_id and r.user_id = (select auth.uid())) or public.has_role('admin') or public.has_role('super_admin'));
create policy "participants read payments" on public.payments for select to authenticated using (exists (select 1 from public.orders o where o.id = order_id and (o.customer_id = (select auth.uid()) or public.is_shop_member(o.shop_id) or public.has_role('admin') or public.has_role('super_admin'))));
create policy "active coupons readable" on public.coupons for select to anon, authenticated using (is_active and (starts_at is null or starts_at <= now()) and (expires_at is null or expires_at >= now()));
create policy "active local services readable" on public.local_services for select to anon, authenticated using ((is_active and is_verified) or provider_id = (select auth.uid()) or public.has_role('admin') or public.has_role('super_admin'));

-- Order placement, authoritative pricing, payment verification, inventory deduction,
-- rider assignment and role administration must use trusted server-side APIs/RPCs.
-- Never expose service-role or secret keys in client applications.
