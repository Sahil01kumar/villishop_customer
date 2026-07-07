import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/cart/providers/save_for_later_provider.dart';
import 'saved_item_card.dart';

class SavedForLaterSection extends ConsumerWidget {
  const SavedForLaterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(saveForLaterProvider);

    if (state.items.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.m, vertical: AppSpacing.s),
          child: Text(
            'Saved for Later (${state.items.length})',
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: AppSpacing.m),
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return SavedItemCard(item: state.items[index]);
            },
          ),
        ),
        AppSpacing.vL,
      ],
    );
  }
}
