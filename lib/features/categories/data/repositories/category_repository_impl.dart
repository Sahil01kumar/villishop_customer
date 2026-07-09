import '../../domain/repositories/category_repository.dart';
import '../../../home/data/models/category_model.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<List<CategoryModel>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return masterTaxonomy;
  }

  @override
  Future<List<CategoryModel>> getShopCategories(String shopId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    
    // In production, this filters based on shop's real-time inventory.
    // For now, return master taxonomy but simulate counts for active shops.
    return masterTaxonomy.map((category) {
      return category.copyWith(
        productCount: 40 + (int.tryParse(category.id) ?? 0) * 10,
        subCategories: category.subCategories.map((sub) {
          return sub.copyWith(productCount: 15 + (int.tryParse(sub.id) ?? 0) % 10);
        }).toList(),
      );
    }).toList();
  }

  @override
  Future<List<CategoryModel>> searchCategories(String query) async {
    final lowerQuery = query.toLowerCase();
    return masterTaxonomy.where((c) => c.name.toLowerCase().contains(lowerQuery)).toList();
  }

  static const List<CategoryModel> masterTaxonomy = [
    CategoryModel(
      id: '1', name: 'Milk & Dairy', level: CategoryLevel.category, image: '🥛',
      subCategories: [
        CategoryModel(id: '101', name: 'Milk', parentId: '1', level: CategoryLevel.subCategory, image: '🥛'),
        CategoryModel(id: '102', name: 'Curd & Yogurt', parentId: '1', level: CategoryLevel.subCategory, image: '🥣'),
        CategoryModel(id: '103', name: 'Paneer', parentId: '1', level: CategoryLevel.subCategory, image: '🧀'),
        CategoryModel(id: '104', name: 'Butter & Cream', parentId: '1', level: CategoryLevel.subCategory, image: '🧈'),
        CategoryModel(id: '106', name: 'Ghee', parentId: '1', level: CategoryLevel.subCategory, image: '🫙'),
      ],
    ),
    CategoryModel(
      id: '2', name: 'Bread & Bakery', level: CategoryLevel.category, image: '🍞',
      subCategories: [
        CategoryModel(id: '201', name: 'Bread', parentId: '2', level: CategoryLevel.subCategory, image: '🍞'),
        CategoryModel(id: '202', name: 'Buns & Pav', parentId: '2', level: CategoryLevel.subCategory, image: '🥯'),
        CategoryModel(id: '204', name: 'Cookies & Biscuits', parentId: '2', level: CategoryLevel.subCategory, image: '🍪'),
        CategoryModel(id: '206', name: 'Cakes', parentId: '2', level: CategoryLevel.subCategory, image: '🎂'),
      ],
    ),
    CategoryModel(
      id: '3', name: 'Fruits', level: CategoryLevel.category, image: '🍎',
      subCategories: [
        CategoryModel(id: '301', name: 'Apple', parentId: '3', level: CategoryLevel.subCategory, image: '🍎'),
        CategoryModel(id: '302', name: 'Banana', parentId: '3', level: CategoryLevel.subCategory, image: '🍌'),
        CategoryModel(id: '303', name: 'Mango', parentId: '3', level: CategoryLevel.subCategory, image: '🥭'),
        CategoryModel(id: '304', name: 'Citrus', parentId: '3', level: CategoryLevel.subCategory, image: '🍊'),
        CategoryModel(id: '305', name: 'Grapes', parentId: '3', level: CategoryLevel.subCategory, image: '🍇'),
      ],
    ),
    CategoryModel(
      id: '4', name: 'Vegetables', level: CategoryLevel.category, image: '🥦',
      subCategories: [
        CategoryModel(id: '401', name: 'Potato & Onion', parentId: '4', level: CategoryLevel.subCategory, image: '🥔'),
        CategoryModel(id: '403', name: 'Tomato', parentId: '4', level: CategoryLevel.subCategory, image: '🍅'),
        CategoryModel(id: '404', name: 'Garlic & Ginger', parentId: '4', level: CategoryLevel.subCategory, image: '🧄'),
        CategoryModel(id: '406', name: 'Leafy Greens', parentId: '4', level: CategoryLevel.subCategory, image: '🥬'),
      ],
    ),
    CategoryModel(
      id: '5', name: 'Cold Drinks', level: CategoryLevel.category, image: '🥤',
      subCategories: [
        CategoryModel(id: '501', name: 'Soft Drinks', parentId: '5', level: CategoryLevel.subCategory, image: '🥤'),
        CategoryModel(id: '502', name: 'Energy Drinks', parentId: '5', level: CategoryLevel.subCategory, image: '⚡'),
        CategoryModel(id: '503', name: 'Juices', parentId: '5', level: CategoryLevel.subCategory, image: '🍹'),
      ],
    ),
    CategoryModel(
      id: '6', name: 'Tea & Coffee', level: CategoryLevel.category, image: '☕',
      subCategories: [
        CategoryModel(id: '601', name: 'Tea', parentId: '6', level: CategoryLevel.subCategory, image: '☕'),
        CategoryModel(id: '602', name: 'Coffee', parentId: '6', level: CategoryLevel.subCategory, image: '🧋'),
      ],
    ),
    CategoryModel(
      id: '7', name: 'Atta Rice Dal', level: CategoryLevel.category, image: '🌾',
      subCategories: [
        CategoryModel(id: '701', name: 'Atta', parentId: '7', level: CategoryLevel.subCategory, image: '🌾'),
        CategoryModel(id: '702', name: 'Rice', parentId: '7', level: CategoryLevel.subCategory, image: '🍚'),
        CategoryModel(id: '703', name: 'Dal', parentId: '7', level: CategoryLevel.subCategory, image: '🥣'),
      ],
    ),
    CategoryModel(
      id: '8', name: 'Cleaning', level: CategoryLevel.category, image: '🧹',
      subCategories: [
        CategoryModel(id: '801', name: 'Detergents', parentId: '8', level: CategoryLevel.subCategory, image: '🧺'),
        CategoryModel(id: '802', name: 'Floor Cleaners', parentId: '8', level: CategoryLevel.subCategory, image: '🧼'),
      ],
    ),
  ];
}
