import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/widgets/primary_button.dart';
import 'package:villishop_customer/core/widgets/custom_text_field.dart';
import 'package:villishop_customer/core/helpers/snackbar_helper.dart';
import 'package:villishop_customer/features/reviews/providers/review_provider.dart';

class WriteReviewScreen extends ConsumerStatefulWidget {
  final String targetId;
  final String targetName;

  const WriteReviewScreen(
      {super.key, required this.targetId, required this.targetName});

  @override
  ConsumerState<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends ConsumerState<WriteReviewScreen> {
  double _rating = 0;
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSubmitting = ref
        .watch(reviewProvider(widget.targetId).select((s) => s.isSubmitting));

    return Scaffold(
      appBar: AppBar(title: Text('Rate ${widget.targetName}')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your Rating',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            AppSpacing.vS,
            Row(
              children: List.generate(
                  5,
                  (index) => IconButton(
                        onPressed: () => setState(() => _rating = index + 1.0),
                        icon: Icon(
                          index < _rating ? Icons.star : Icons.star_border,
                          color: AppColors.secondary,
                          size: 32,
                        ),
                      )),
            ),
            AppSpacing.vL,
            CustomTextField(
              label: 'Review Title (Optional)',
              hintText: 'Sum up your experience',
              controller: _titleController,
            ),
            AppSpacing.vM,
            CustomTextField(
              label: 'Detailed Review',
              hintText: 'Tell others what you liked or disliked...',
              controller: _descriptionController,
              keyboardType: TextInputType.multiline,
            ),
            AppSpacing.vL,
            _buildImagePicker(),
            AppSpacing.vXL,
            PrimaryButton(
              text: 'SUBMIT REVIEW',
              isLoading: isSubmitting,
              onPressed: () async {
                if (_rating == 0) {
                  if (context.mounted) {
                    SnackbarHelper.showError(context, 'Please select a rating');
                  }
                  return;
                }
                if (_descriptionController.text.isEmpty) {
                  if (context.mounted) {
                    SnackbarHelper.showError(
                        context, 'Please write a description');
                  }
                  return;
                }

                final success = await ref
                    .read(reviewProvider(widget.targetId).notifier)
                    .submitReview(
                      rating: _rating,
                      description: _descriptionController.text,
                      title: _titleController.text,
                    );

                if (success && context.mounted) {
                  SnackbarHelper.showSuccess(
                      context, 'Review submitted successfully!');
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Add Photos',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        AppSpacing.vS,
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: AppRadius.rM,
            border: Border.all(color: Colors.grey[300]!),
          ),
          child:
              const Icon(Icons.add_a_photo_outlined, color: AppColors.primary),
        ),
      ],
    );
  }
}
