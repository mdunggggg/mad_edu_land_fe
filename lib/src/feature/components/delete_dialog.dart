import 'package:edu_land/src/feature/components/main_button.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onDelete;

  const DeleteDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 32.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: _buildDialogContent(context),
    );
  }

  _buildDialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color(AppColors.cE5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              color: Color(AppColors.c1F),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 24.0),
          Text(
            message,
            style: const TextStyle(
              fontSize: 18,
              color: Color(AppColors.c1F),
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MainButton(
                  buttonTitle: AppStrings.cancel,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: const Color(AppColors.cE0),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(AppColors.c1F),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: MainButton(
                  buttonTitle: AppStrings.delete,
                  onPressed: () {
                    Navigator.of(context).pop();
                    onDelete();
                  },
                  backgroundColor: const Color(AppColors.cF6),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(AppColors.cFFFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}