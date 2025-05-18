import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableCustom extends StatefulWidget {
  final String header;
  final Widget? headerWidget;
  final Widget child;
  final bool showArrow;
  final Color? arrowColor;
  final double borderRadius;

  const ExpandableCustom({
    super.key,
    required this.header,
    required this.child,
    this.headerWidget,
    this.showArrow = true,
    this.arrowColor,
    this.borderRadius = 12.0,
  });

  @override
  State<ExpandableCustom> createState() => _ExpandableV2State();
}

class _ExpandableV2State extends State<ExpandableCustom> {
  late ExpandableController controller =
  ExpandableController(initialExpanded: true)
    ..addListener(() => setState(() {}));

  @override
  Widget build(BuildContext context) {
    // Create a seamless expandable panel
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: ExpandablePanel(
          controller: controller,
          theme: const ExpandableThemeData(hasIcon: false),
          header: GestureDetector(
            onTap: () {
              controller.toggle();
            },
            child: widget.headerWidget != null 
              ? Stack(
                  children: [
                    widget.headerWidget!,
                    if (widget.showArrow)
                      Positioned(
                        right: 16,
                        top: 0,
                        bottom: 0,
                        child: Center(
                          child: AnimatedRotation(
                            turns: !controller.expanded ? 0 : 0.5,
                            duration: const Duration(milliseconds: 300),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: widget.arrowColor ?? Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                  ],
                )
              : Container(
                  padding: 16.paddingTop,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: controller.expanded 
                      ? BorderRadius.vertical(top: Radius.circular(widget.borderRadius))
                      : BorderRadius.circular(widget.borderRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.header,
                      ),
                      AnimatedRotation(
                        turns: !controller.expanded ? 0 : 0.5,
                        duration: const Duration(milliseconds: 300),
                        child: const Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
          ),
          collapsed: const SizedBox(),
          expanded: Container(
            decoration: const BoxDecoration(
              // No border radius here as it's clipped by the parent
              color: Colors.transparent,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}