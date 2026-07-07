import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/rating_distribution_model.dart';

class ReviewSummaryCard extends StatelessWidget {
  final RatingDistributionModel summary;

  const ReviewSummaryCard({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppRadius.rL,
        border: Border.all(color: Colors.grey.withAlpha(40)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  summary.averageRating.toStringAsFixed(1),
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => Icon(
                    index < summary.averageRating.floor() ? Icons.star : Icons.star_border,
                    color: AppColors.secondary,
                    size: 16,
                  )),
                ),
                AppSpacing.vXS,
                Text(
                  '${summary.totalRatings} Ratings',
                  style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(height: 100, width: 1, color: Colors.grey[200]),
          AppSpacing.hM,
          Expanded(
            flex: 3,
            child: Column(
              children: [
                _buildRatingRow('5', summary.fiveStar, summary.totalRatings),
                _buildRatingRow('4', summary.fourStar, summary.totalRatings),
                _buildRatingRow('3', summary.threeStar, summary.totalRatings),
                _buildRatingRow('2', summary.twoStar, summary.totalRatings),
                _buildRatingRow('1', summary.oneStar, summary.totalRatings),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingRow(String label, int count, int total) {
    final double percent = total > 0 ? count / total : 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          AppSpacing.hS,
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: percent,
                backgroundColor: Colors.grey[100],
                valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                minHeight: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
