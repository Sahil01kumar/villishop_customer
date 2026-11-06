# VilliShop MVP implementation

## Product scope
VilliShop by YoungXCode Pvt. Ltd. is a rural hyperlocal marketplace for groceries, fresh produce,
household products, healthcare/medicine and local services. The roadmap follows the supplied
VilliShop proposal, including zone-based discovery, local shop digitization, voice/multilingual
ordering, inventory and delivery tracking.

## Target applications
- Customer: Flutter Android/iOS and responsive web storefront.
- Shop owner: Flutter Android/iOS.
- Rider: Flutter Android/iOS.
- Admin: Next.js + Refine web application.
- Backend: NestJS trusted API + dedicated Supabase PostgreSQL/Auth/Realtime/Storage.

## Reuse candidates
- https://github.com/widle-ai/Grocery-App — grocery UI patterns; audit dependency age before porting.
- https://github.com/helloharendra/Complete-Food-Delivery-App-Flutter — seller/rider/admin workflow reference; replace Firebase coupling.
- https://github.com/Shubham-Zone/Village-Grocery-Delivery-App — rural UX and voice-ordering ideas.
- https://github.com/refinedev/refine — admin CRUD framework.
- https://github.com/supabase/supabase-flutter — official Supabase Flutter client.
Before copying code, verify exact repository license and preserve notices. Do not copy proprietary
logos, trademarks, assets, credentials or secrets.

## Database foundation
See supabase/migrations/202611060001_initial_villishop_schema.sql.
This is an initial schema baseline. Review and test it on a new dedicated VilliShop Supabase
project before applying. It deliberately does not grant client write access to orders, payments,
assignments or inventory; those require trusted server-side operations.

## Pricing
Keep shop-owner base price separate from platform margin, MRP, selling price, packaging/handling/
delivery fees, GST and discounts. Persist order-item price snapshots so historical orders remain
stable when catalog prices change.

## Security
- Never use the YoungXCode AI Sales OS Supabase project for VilliShop.
- Never expose Supabase secret/service-role keys in Flutter, web bundles or source control.
- Enforce roles and ownership with RLS and server-side checks.
- Verify payment webhooks on the server; never trust client payment-success flags.
- Restrict rider location access to relevant active delivery workflows.

## Delivery sequence
1. Dedicated Supabase project and migration review/application.
2. Flutter Supabase initialization and auth/session adapter.
3. Replace dummy home/catalog data with zone-scoped queries.
4. Cart and server-authoritative checkout/order creation.
5. Merchant and rider applications.
6. Admin and customer web experiences.
7. Payment, notifications, maps, automated tests and pilot launch.

## Known existing-project gaps from initial audit
- supabase_flutter was absent from the dependency lockfile.
- Home repository uses dummy data.
- Cart/order persistence is local and remote methods are incomplete.
- Payment service is a mock success delay.
- Realtime uses a mock adapter and dummy token.
- Backend folder has no package manifest and needs dependency/module audit.
- Only a basic widget test was found in the initial tree inspection.

## MVP completion criteria
A customer discovers approved shops in an active zone, browses available inventory, adds products,
receives a server-calculated quote and places a COD or verified online-payment order. A shop accepts
and prepares it; an eligible rider is assigned and completes delivery; the customer sees trustworthy
status updates. Admin can manage zones, shops, catalog, orders, riders and basic settlements.
