import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/category_model.dart';
import '../data/repositories/category_repository_impl.dart';
import '../domain/repositories/category_repository.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepositoryImpl();
});

final categoriesProvider = FutureProvider<List<CategoryModel>>((ref) async {
  final repository = ref.watch(categoryRepositoryProvider);
  return repository.getCategories();
});

final categorySearchQueryProvider = StateProvider<String>((ref) => '');

final filteredCategoriesProvider = Provider<AsyncValue<List<CategoryModel>>>((ref) {
  final categoriesAsync = ref.watch(categoriesProvider);
  final searchQuery = ref.watch(categorySearchQueryProvider).toLowerCase();

  return categoriesAsync.whenData((categories) {
    if (searchQuery.isEmpty) return categories;
    return categories.where((category) => 
      category.name.toLowerCase().contains(searchQuery) ||
      category.subCategories.any((sub) => sub.toLowerCase().contains(searchQuery))
    ).toList();
  });
});
