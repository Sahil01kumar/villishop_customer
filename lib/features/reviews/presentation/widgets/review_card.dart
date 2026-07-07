import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import '../../data/models/review_model.dart';

class ReviewCard extends StatelessWidget {
  final ReviewModel review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF5F5F5))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[200],
                backgroundImage: review.userProfilePhoto != null ? NetworkImage(review.userProfilePhoto!) : null,
                child: review.userProfilePhoto == null ? const Icon(Icons.person, size: 20, color: Colors.grey) : null,
              ),
              AppSpacing.hM,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.userName,
                      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                    ),
                    Row(
                      children: [
                        if (review.isVerifiedPurchase) ...[
                          const Icon(Icons.verified, color: Colors.green, size: 12),
                          const SizedBox(width: 4),
                          const Text('Verified Purchase', style: TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 8),
                        ],
                        Text(
                          DateFormat('dd MMM yyyy').format(review.reviewDate),
                          style: TextStyle(color: Colors.grey[500], fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildRatingBadge(review.rating),
            ],
          ),
          AppSpacing.vM,
          if (review.title != null) ...[
            Text(
              review.title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            AppSpacing.vXS,
          ],
          Text(
            review.description,
            style: TextStyle(color: Colors.grey[800], fontSize: 13, height: 1.4),
          ),
          if (review.images.isNotEmpty) ...[
            AppSpacing.vM,
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: review.images.length,
                itemBuilder: (context, index) => Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.rM,
                    image: DecorationImage(image: NetworkImage(review.images[index].url), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
          AppSpacing.vM,
          Row(
            children: [
              _ActionItem(icon: Icons.thumb_up_outlined, label: 'Helpful (${review.helpfulCount})', onTap: () {}),
              AppSpacing.hL,
              _ActionItem(icon: Icons.chat_bubble_outline, label: 'Reply', onTap: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.more_horiz, size: 20), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRatingBadge(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: rating >= 4 ? Colors.green : (rating >= 3 ? Colors.orange : Colors.red),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Text(rating.toString(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          const Icon(Icons.star, color: Colors.white, size: 12),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.grey[600]),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
