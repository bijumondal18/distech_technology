import 'package:flutter/material.dart';

import '../Commons/app_colors.dart';
import '../Commons/app_sizes.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final int? minLines;
  final int? maxLines;
  final bool? readOnly;
  final bool? autoFocus;
  final bool? isBorder;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText = '',
    this.labelText = '',
    this.errorText,
    this.minLines,
    this.maxLines,
    this.validator,
    this.readOnly,
    this.keyboardType,
    this.obscureText,
    this.suffixIcon,
    this.onChanged,
    this.autoFocus = false,
    this.isBorder = true,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText != ''
            ? Text(
                labelText!,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : const SizedBox(),
        Container(
          margin: labelText != ''
              ? const EdgeInsets.only(top: AppSizes.kDefaultPadding / 2)
              : EdgeInsets.zero,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(AppSizes.cardCornerRadius / 1.5),
              border: Border.all(color: AppColors.bg)),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            readOnly: readOnly ?? false,
            validator: validator,
            obscureText: obscureText ?? false,
            minLines: minLines ?? 1,
            maxLines: maxLines ?? 1,
            keyboardType: keyboardType ?? TextInputType.text,
            cursorColor: AppColors.primary,
            controller: controller,
            onChanged: onChanged,
            autofocus: autoFocus!,
            decoration: isBorder!
                ? InputDecoration(
                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon,
                    contentPadding:
                        const EdgeInsets.all(AppSizes.kDefaultPadding),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGrey),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGrey),
                    ),
                    hintText: hintText!,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                    errorText: controller.text == "" ? errorText : null)
                : InputDecoration(
                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon,
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.all(AppSizes.kDefaultPadding),
                    hintText: hintText!,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                    errorText: controller.text == "" ? errorText : null),
          ),
        ),
      ],
    );
  }
}
