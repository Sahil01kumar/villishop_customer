import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/core/widgets/error_widget.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import '../widgets/review_summary_card.dart';
import '../widgets/review_card.dart';
import 'package:villishop_customer/features/reviews/providers/review_provider.dart';

class ReviewsListScreen extends ConsumerWidget {
  final String targetId;
  final String targetName;

  const ReviewsListScreen(
      {super.key, required this.targetId, required this.targetName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(reviewProvider(targetId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Reviews - $targetName'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: state.isLoading
          ? const LoadingWidget()
          : state.errorMessage != null
              ? CustomErrorWidget(
                  message: state.errorMessage!,
                  onRetry: () =>
                      ref.read(reviewProvider(targetId).notifier).refresh())
              : RefreshIndicator(
                  onRefresh: () =>
                      ref.read(reviewProvider(targetId).notifier).refresh(),
                  child: CustomScrollView(
                    slivers: [
                      if (state.summary != null)
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.m),
                            child: ReviewSummaryCard(summary: state.summary!),
                          ),
                        ),
                      SliverToBoxAdapter(
                        child: _buildFilters(context, state, ref),
                      ),
                      if (state.reviews.isEmpty)
                        const SliverFillRemaining(
                          child: Center(
                              child: Text(
                                  'No reviews yet. Be the first to review!')),
                        )
                      else
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) =>
                                ReviewCard(review: state.reviews[index]),
                            childCount: state.reviews.length,
                          ),
                        ),
                      const SliverToBoxAdapter(child: SizedBox(height: 100)),
                    ],
                  ),
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(AppRoutes.writeReview, extra: {
          'targetId': targetId,
          'targetName': targetName,
        }),
        backgroundColor: AppColors.primary,
        icon: const Icon(Icons.rate_review_outlined, color: Colors.white),
        label: const Text('WRITE A REVIEW',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildFilters(BuildContext context, dynamic state, WidgetRef ref) {
    final filters = ['Latest', 'Top Rated', 'With Images', 'Verified'];
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          final isSelected = state.activeFilter == filter;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(filter),
              selected: isSelected,
              onSelected: (_) => ref
                  .read(reviewProvider(targetId).notifier)
                  .updateFilter(filter),
              selectedColor: AppColors.primary.withAlpha(50),
              backgroundColor: Colors.white,
              labelStyle: TextStyle(
                color: isSelected ? AppColors.primary : Colors.grey[700],
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                      color:
                          isSelected ? AppColors.primary : Colors.grey[300]!)),
            ),
          );
        },
      ),
    );
  }
}
