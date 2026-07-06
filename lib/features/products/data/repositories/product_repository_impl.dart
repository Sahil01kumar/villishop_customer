import '../../domain/repositories/product_repository.dart';
import '../../../home/data/models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<ProductModel>> getProducts({
    String? shopId,
    String? categoryId,
    String? searchQuery,
    String? sortBy,
    Map<String, dynamic>? filters,
  }) async {
    await Future.delayed(const Duration(milliseconds: 600));
    
    // Mock Data
    List<ProductModel> products = [
      const ProductModel(
        id: 'p1',
        name: 'Fresh Cow Milk',
        brand: 'Yadav Dairy',
        price: 28,
        originalPrice: 32,
        weight: '500',
        unit: 'ml',
        imageUrl: '',
        discountPercentage: 12,
        rating: 4.5,
        isVeg: true,
        isBestseller: true,
        stockStatus: StockStatus.inStock,
        categories: ['Milk & Dairy'],
        description: 'Pure and fresh cow milk delivered within hours of milking.',
      ),
      const ProductModel(
        id: 'p2',
        name: 'Organic Wheat Atta',
        brand: 'Village Fresh',
        price: 180,
        originalPrice: 210,
        weight: '5',
        unit: 'kg',
        imageUrl: '',
        discountPercentage: 14,
        rating: 4.8,
        isVeg: true,
        isNewArrival: true,
        stockStatus: StockStatus.lowStock,
        categories: ['Atta & Dal'],
      ),
      const ProductModel(
        id: 'p3',
        name: 'Spiced Paneer',
        brand: 'Yadav Dairy',
        price: 120,
        originalPrice: 135,
        weight: '200',
        unit: 'gm',
        imageUrl: '',
        discountPercentage: 11,
        rating: 4.2,
        isVeg: true,
        stockStatus: StockStatus.outOfStock,
        categories: ['Milk & Dairy'],
      ),
    ];

    // Basic Mock Filtering/Sorting
    if (searchQuery != null && searchQuery.isNotEmpty) {
      products = products.where((p) => p.name.toLowerCase().contains(searchQuery.toLowerCase())).toList();
    }
    
    if (categoryId != null && categoryId != 'All') {
      products = products.where((p) => p.categories.contains(categoryId)).toList();
    }

    return products;
  }

  @override
  Future<ProductModel?> getProductDetails(String productId) async {
    final products = await getProducts();
    return products.firstWhere((p) => p.id == productId);
  }

  @override
  Future<List<String>> getProductCategories(String shopId) async {
    return ['All', 'Milk & Dairy', 'Vegetables', 'Fruits', 'Atta & Dal', 'Snacks'];
  }

  @override
  Future<List<String>> getProductBrands(String shopId) async {
    return ['Yadav Dairy', 'Village Fresh', 'Organic Farms'];
  }
}
