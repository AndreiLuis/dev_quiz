import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool itsCorrect;
  final bool isSelected;
  const AnswerWidget(
      {Key? key,
      required this.title,
      this.itsCorrect = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      itsCorrect ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      itsCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      itsCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      itsCorrect ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      itsCorrect ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => itsCorrect ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: isSelected ? _selectedColorCardRight : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(
                color:
                    isSelected ? _selectedBorderCardRight : AppColors.border))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style:
                    isSelected ? _selectedTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.darkGreen,
                borderRadius: BorderRadius.circular(500),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: isSelected ? _selectedBorderRight : AppColors.border)),
              ),
              child: isSelected ? Icon(
                _selectedIconRight,
                size: 16,
                color: AppColors.white,
              ) : null,
            )
          ],
        ),
      ),
    );
  }
}
