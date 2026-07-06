import '../../domain/repositories/category_repository.dart';
import '../models/category_model.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  @override
  Future<List<CategoryModel>> getCategories() async {
    // Mock data for production-ready architecture
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      const CategoryModel(id: '1', name: 'Milk & Dairy', image: '🥛', subCategories: ['Fresh Milk', 'Curd', 'Paneer', 'Butter']),
      const CategoryModel(id: '2', name: 'Vegetables', image: '🥦', subCategories: ['Potato', 'Onion', 'Tomato', 'Leafy Greens']),
      const CategoryModel(id: '3', name: 'Fruits', image: '🍎', subCategories: ['Apple', 'Banana', 'Mango', 'Seasonal']),
      const CategoryModel(id: '4', name: 'Atta & Dal', image: '🌾', subCategories: ['Wheat Atta', 'Toor Dal', 'Moong Dal', 'Rice']),
      const CategoryModel(id: '5', name: 'Snacks', image: '🍿', subCategories: ['Chips', 'Namkeen', 'Biscuits']),
      const CategoryModel(id: '6', name: 'Beverages', image: '🥤', subCategories: ['Tea', 'Coffee', 'Cold Drinks']),
      const CategoryModel(id: '7', name: 'Personal Care', image: '🧼', subCategories: ['Soap', 'Shampoo', 'Toothpaste']),
      const CategoryModel(id: '8', name: 'Cleaning', image: '🧹', subCategories: ['Detergent', 'Floor Cleaner']),
    ];
  }
}
