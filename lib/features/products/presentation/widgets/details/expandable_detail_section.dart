import 'package:flutter/material.dart';
import '../../../../../core/constants/app_dimensions.dart';

class ExpandableDetailSection extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? customContent;

  const ExpandableDetailSection({
    super.key,
    required this.title,
    this.content,
    this.customContent,
  });

  @override
  Widget build(BuildContext context) {
    if (content == null && customContent == null) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          childrenPadding: const EdgeInsets.fromLTRB(
              AppSpacing.m, 0, AppSpacing.m, AppSpacing.m),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (content != null)
              Text(
                content!,
                style: TextStyle(color: Colors.grey[700], height: 1.5),
              ),
            if (customContent != null) customContent!,
          ],
        ),
        const Divider(height: 1),
      ],
    );
  }
}
