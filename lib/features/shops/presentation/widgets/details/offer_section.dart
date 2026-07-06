import 'package:flutter/material.dart';
import '../../../../../core/constants/app_dimensions.dart';
import '../../../../../core/constants/app_colors.dart';

class OfferSection extends StatelessWidget {
  final List<String> offers;

  const OfferSection({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    if (offers.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          child: Text(
            'Available Offers',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        AppSpacing.vS,
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
            itemCount: offers.length,
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                margin: const EdgeInsets.only(right: AppSpacing.m),
                padding: const EdgeInsets.all(AppSpacing.s),
                decoration: BoxDecoration(
                  borderRadius: AppRadius.rM,
                  border: Border.all(color: AppColors.primary.withAlpha(50)),
                  color: AppColors.primary.withAlpha(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.local_offer_outlined, color: AppColors.primary),
                    AppSpacing.hS,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offers[index],
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          const Text(
                            'Use code VILLI20',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
