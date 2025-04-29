import 'package:flutter/material.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../components/app_input.dart';
import '../../../components/main_button.dart';

class EnterClassCodeDialog extends StatefulWidget {
  final void Function(String code) onClickJoin;

  const EnterClassCodeDialog({super.key, required this.onClickJoin});

  @override
  State<EnterClassCodeDialog> createState() => _EnterClassCodeDialogState();
}

class _EnterClassCodeDialogState extends State<EnterClassCodeDialog> {
  final classCode = TextEditingController();

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
        color: const Color(AppColors.cFFFF),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppStrings.joinClassTitle,
            style: const TextStyle(
              fontSize: 24,
              color: Color(AppColors.c1F),
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            AppStrings.joinClassMessage,
            style: const TextStyle(
              fontSize: 16,
              color: Color(AppColors.c1F),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 18.0),
          AppInput(
            titleStyle: const TextStyle(
              fontSize: 16,
              color: Color(AppColors.c1F),
              fontWeight: FontWeight.w600,
            ),
            hintText: AppStrings.joinClassCodeHint,
            label: AppStrings.classCode2,
            controller: classCode,
            borderColor: const Color(AppColors.cE5),
            bgColor: Colors.white,
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: MainButton(
                  buttonTitle: AppStrings.cancel,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  backgroundColor: const Color(AppColors.cE5),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(AppColors.c1F),
                    fontWeight: FontWeight.w500,),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: MainButton(
                  buttonTitle: AppStrings.join,
                  onPressed: () {
                    Navigator.of(context).pop();
                    widget.onClickJoin(classCode.text);
                  },
                  backgroundColor: const Color(AppColors.c3B),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
