import 'package:distech_technology/Commons/app_colors.dart';
import 'package:distech_technology/Commons/app_sizes.dart';
import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bgColor;

  const FullButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.bgColor = AppColors.primary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          minimumSize: const Size.fromHeight(AppSizes.buttonHeight)),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: AppColors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
