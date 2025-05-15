import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MultipleBorderLessToggleBar extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final ValueChanged<int>? onTap;

  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final double underlineHeight;

  const MultipleBorderLessToggleBar({
    super.key,
    required this.labels,
    required this.selectedIndex,
    this.onTap,
    this.selectedColor = Colors.green,
    this.unselectedColor = Colors.transparent,
    this.selectedTextColor = Colors.black,
    this.unselectedTextColor = Colors.grey,
    this.underlineHeight = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    // Ensure ScreenUtil is initialized if you are using .sp and .w
    // ScreenUtil().init(context, designSize: const Size(360, 690)); // Example initialization

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        children: List.generate(labels.length, (index) {
          final isSelected = index == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: onTap != null ? () => onTap!(index) : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    labels[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isSelected ? selectedTextColor : unselectedTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    height: underlineHeight,
                    width: 50.w, // Use a fixed width or adjust dynamically
                    decoration: BoxDecoration(
                      color: isSelected ? selectedColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
