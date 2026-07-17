import '../models/banner_model.dart';
import '../models/category_model.dart';
import '../models/shop_model.dart';
import '../models/product_model.dart';
import '../models/deal_model.dart';
import '../../../products/data/models/sub_models/packaging_info.dart';
import '../../../products/data/models/sub_models/manufacturing_info.dart';
import '../../../products/data/models/sub_models/pricing_info.dart';
import '../../../products/data/models/sub_models/inventory_info.dart';
import '../../../products/data/models/sub_models/delivery_info.dart';
import '../../../products/data/models/sub_models/health_labels.dart';

class DummyHomeDataSource {
  Future<List<BannerModel>> getBanners() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      const BannerModel(
          id: '1',
          imageUrl:
              'https://img.freepik.com/free-psd/grocery-store-web-banner-template_23-2148924040.jpg'),
      const BannerModel(
          id: '2',
          imageUrl:
              'https://img.freepik.com/free-vector/flat-food-delivery-service-facebook-cover-template_23-2149110034.jpg'),
      const BannerModel(
          id: '3',
          imageUrl:
              'https://img.freepik.com/free-psd/grocery-store-banner-template_23-2148924041.jpg'),
      const BannerModel(
          id: '4',
          imageUrl:
              'https://img.freepik.com/free-vector/fresh-organic-vegetables-delivery-service-banner_23-2148866160.jpg'),
    ];
  }

  Future<List<CategoryModel>> getCategories() async {
    return [
      const CategoryModel(
        id: 'cat_fruits',
        name: 'Fresh Fruits',
        image: 'https://images.unsplash.com/photo-1619566636858-adf3ef46400b?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 1,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 3,
        productCount: 45,
        subCategories: [
          CategoryModel(id: 'sub_org_fruits', name: 'Organic Fruits', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_exotic_fruits', name: 'Exotic Fruits', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_seasonal_fruits', name: 'Seasonal Fruits', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_veggies',
        name: 'Fresh Vegetables',
        image: 'https://images.unsplash.com/photo-1540420773420-3366772f4999?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 2,
        isFeatured: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 4,
        productCount: 62,
        subCategories: [
          CategoryModel(id: 'sub_daily_veggies', name: 'Daily Vegetables', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_herbs', name: 'Herbs & Seasonings', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_exotic_veggies', name: 'Exotic Vegetables', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_leafy', name: 'Leafy Vegetables', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_dairy',
        name: 'Dairy & Milk',
        image: 'https://images.unsplash.com/photo-1550583724-125581cc255b?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 3,
        isFeatured: true,
        isPopular: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 6,
        productCount: 120,
        subCategories: [
          CategoryModel(id: 'sub_milk', name: 'Milk', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_curd', name: 'Curd & Yogurt', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_paneer', name: 'Paneer', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_butter', name: 'Butter', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_cheese', name: 'Cheese', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_eggs', name: 'Eggs', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_bakery',
        name: 'Bakery & Bread',
        image: 'https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 4,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 5,
        productCount: 85,
        subCategories: [
          CategoryModel(id: 'sub_bread', name: 'Bread & Buns', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_cakes', name: 'Cakes & Muffins', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_cookies', name: 'Cookies & Biscuits', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_staples',
        name: 'Atta, Rice & Dal',
        image: 'https://images.unsplash.com/photo-1586201375761-83865001e31c?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 5,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 8,
        productCount: 210,
        subCategories: [
          CategoryModel(id: 'sub_atta', name: 'Atta & Flour', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_rice', name: 'Rice & Rice Products', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_dal', name: 'Dal & Pulses', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_oil', name: 'Cooking Oil & Ghee', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_masala', name: 'Masala & Spices', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_sugar', name: 'Salt, Sugar & Jaggery', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_snacks',
        name: 'Snacks & Munchies',
        image: 'https://images.unsplash.com/photo-1599490659213-e2b9527bb087?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 6,
        isPopular: true,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 7,
        productCount: 340,
        subCategories: [
          CategoryModel(id: 'sub_chips', name: 'Chips & Crisps', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_namkeen', name: 'Namkeen', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_sweets', name: 'Chocolates & Candies', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_frozen', name: 'Frozen Snacks', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_beverages',
        name: 'Cold Drinks & Juices',
        image: 'https://images.unsplash.com/photo-1622483767028-3f66f32aef97?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 7,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 6,
        productCount: 150,
        subCategories: [
          CategoryModel(id: 'sub_soft_drinks', name: 'Soft Drinks', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_juice', name: 'Fruit Juices', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_tea_coffee', name: 'Tea & Coffee', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_water', name: 'Water & Soda', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_meat',
        name: 'Chicken, Meat & Fish',
        image: 'https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 8,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 5,
        productCount: 45,
        subCategories: [
          CategoryModel(id: 'sub_chicken', name: 'Chicken', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_mutton', name: 'Mutton', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_fish', name: 'Fish & Seafood', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_personal_care',
        name: 'Personal Care',
        image: 'https://images.unsplash.com/photo-1526947425960-945c6e72858f?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 9,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 8,
        productCount: 560,
        subCategories: [
          CategoryModel(id: 'sub_bath', name: 'Bath & Body', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_hair', name: 'Hair Care', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_skin', name: 'Skin Care', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_oral', name: 'Oral Care', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_household',
        name: 'Cleaning & Household',
        image: 'https://images.unsplash.com/photo-1584622650111-993a426fbf0a?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 10,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 10,
        productCount: 420,
        subCategories: [
          CategoryModel(id: 'sub_detergents', name: 'Detergents & Laundry', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_cleaners', name: 'Cleaners & Disinfectants', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_kitchen_needs', name: 'Kitchen Needs', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_baby',
        name: 'Baby Care',
        image: 'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 11,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 4,
        productCount: 110,
        subCategories: [
          CategoryModel(id: 'sub_diapers', name: 'Diapers & Wipes', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_baby_food', name: 'Baby Food', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_baby_skin', name: 'Baby Skin & Bath', image: '', level: CategoryLevel.subCategory),
        ],
      ),
      const CategoryModel(
        id: 'cat_pet',
        name: 'Pet Care',
        image: 'https://images.unsplash.com/photo-1583337130417-3346a1be7dee?q=80&w=300&h=300&auto=format&fit=crop',
        displayOrder: 12,
        isActive: true,
        level: CategoryLevel.category,
        subCategoryCount: 3,
        productCount: 85,
        subCategories: [
          CategoryModel(id: 'sub_dog_food', name: 'Dog Food', image: '', level: CategoryLevel.subCategory),
          CategoryModel(id: 'sub_cat_food', name: 'Cat Food', image: '', level: CategoryLevel.subCategory),
        ],
      ),
    ];
  }

  Future<List<ShopModel>> getPopularShops() async {
    return [
      const ShopModel(
        id: '1',
        name: 'Yadav Dairy Farm',
        category: 'Dairy & Eggs',
        rating: 4.8,
        deliveryTime: '12 min',
        imageUrl: 'https://img.freepik.com/free-photo/view-cow-farm_23-2149526438.jpg',
        distance: '1.2 km',
        minOrder: '₹50',
      ),
      const ShopModel(
        id: '2',
        name: 'Village Veg Mart',
        category: 'Fruits & Veg',
        rating: 4.5,
        deliveryTime: '15 min',
        imageUrl: 'https://img.freepik.com/free-photo/greengrocer-market-stall_23-2148902094.jpg',
        distance: '2.5 km',
        minOrder: '₹30',
      ),
      const ShopModel(
        id: '3',
        name: 'Sharma General Store',
        category: 'Grocery',
        rating: 4.2,
        deliveryTime: '20 min',
        imageUrl: 'https://img.freepik.com/free-photo/grocery-store-interior_23-2148866166.jpg',
        distance: '0.8 km',
        minOrder: '₹100',
      ),
    ];
  }

  Future<List<ProductModel>> getFeaturedProducts() async {
    return [
      const ProductModel(
        id: '1',
        name: 'Fresh Cow Milk',
        imageUrl: 'https://img.freepik.com/free-photo/glass-milk-bottle-table_23-2148118029.jpg',
        category: 'Milk & Dairy',
        packaging: PackagingInfo(weight: 500, unit: 'ml'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Yadav Dairy',
            packedBy: 'Yadav Dairy',
            countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 32, sellingPrice: 28, discountPercentage: 12),
        inventory: InventoryInfo(isBestseller: true),
        delivery: DeliveryInfo(deliveryEta: '10 MINS'),
        rating: 4.5,
        totalReviews: 124,
      ),
      const ProductModel(
        id: '2',
        name: 'Organic Wheat Atta',
        imageUrl: 'https://img.freepik.com/free-photo/wheat-flour-bowl-wheat-ears_23-2148866155.jpg',
        category: 'Atta & Dal',
        packaging: PackagingInfo(weight: 5, unit: 'kg'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Village Fresh',
            packedBy: 'Village Fresh',
            countryOfOrigin: 'India'),
        pricing:
            PricingInfo(mrp: 210, sellingPrice: 180, discountPercentage: 14),
        inventory: InventoryInfo(isNewArrival: true),
        healthLabels: HealthLabels(isOrganic: true),
        delivery: DeliveryInfo(deliveryEta: '15 MINS'),
        rating: 4.8,
        totalReviews: 89,
      ),
      const ProductModel(
        id: '3',
        name: 'Basmati Rice Premium',
        imageUrl: 'https://img.freepik.com/free-photo/uncooked-basmati-rice-bowl_23-2148866157.jpg',
        category: 'Atta & Dal',
        packaging: PackagingInfo(weight: 5, unit: 'kg'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Organic Farms',
            packedBy: 'Organic Farms',
            countryOfOrigin: 'India'),
        pricing:
            PricingInfo(mrp: 500, sellingPrice: 450, discountPercentage: 10),
        inventory: InventoryInfo(isTrending: true),
        delivery: DeliveryInfo(deliveryEta: '20 MINS'),
        rating: 4.6,
        totalReviews: 210,
      ),
      const ProductModel(
        id: '4',
        name: 'Farm Fresh Tomatoes',
        imageUrl: 'https://img.freepik.com/free-photo/fresh-tomatoes-wooden-background_23-2148118025.jpg',
        category: 'Vegetables',
        packaging: PackagingInfo(weight: 1, unit: 'kg'),
        manufacturing: ManufacturingInfo(
            manufacturer: 'Local Farmers',
            packedBy: 'Village Mart',
            countryOfOrigin: 'India'),
        pricing: PricingInfo(mrp: 40, sellingPrice: 35, discountPercentage: 12),
        inventory: InventoryInfo(isBestseller: true),
        delivery: DeliveryInfo(deliveryEta: '12 MINS'),
        rating: 4.4,
        totalReviews: 450,
      ),
    ];
  }

  Future<List<DealModel>> getTodayDeals() async {
    final products = await getFeaturedProducts();
    return [
      DealModel(id: '1', title: 'Flash Deal', product: products[0]),
      DealModel(id: '2', title: 'BOGO', product: products[1]),
      DealModel(id: '3', title: 'Weekend Special', product: products[2]),
    ];
  }
}
