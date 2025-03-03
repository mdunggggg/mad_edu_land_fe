import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

extension ExtContext on BuildContext {
  Size get sizeOf => MediaQuery.sizeOf(this);

  double get width => sizeOf.width;

  double get height => sizeOf.height;

  EdgeInsets get padding => MediaQuery.paddingOf(this);

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  Future bottomSheet({
    required Widget child,
    bool isScrollControlled = true,
    bool useSafeArea = true,
    double radius = 16,
  }) async {
    return showModalBottomSheet(
      context: this,
      builder: (context) => Padding(
        padding: context.viewInsets.bottom.paddingBottom,
        child: Container(
          padding: 16.padding,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: radius.radiusTop,
          ),
          child: child,
        ),
      ),
      isScrollControlled: isScrollControlled,
      useSafeArea: useSafeArea,
      backgroundColor: Colors.transparent,
    );
  }
}
