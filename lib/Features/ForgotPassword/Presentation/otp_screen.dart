import 'package:distech_technology/Features/ForgotPassword/Presentation/reset_password.dart';
import 'package:distech_technology/Features/Home/Presentation/home_screen.dart';
import 'package:distech_technology/Utils/app_helper.dart';
import 'package:distech_technology/Widgets/custom_text_field.dart';
import 'package:distech_technology/Widgets/full_button.dart';
import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Commons/app_images.dart';
import '../../../Commons/app_sizes.dart';
import '../../../Widgets/custom_shape_clipper.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otp1Controller = TextEditingController();
  final TextEditingController _otp2Controller = TextEditingController();
  final TextEditingController _otp3Controller = TextEditingController();
  final TextEditingController _otp4Controller = TextEditingController();
  late FocusNode otp1, otp2, otp3, otp4;

  @override
  void initState() {
    otp1 = FocusNode();
    otp2 = FocusNode();
    otp3 = FocusNode();
    otp4 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    otp1.dispose();
    otp2.dispose();
    otp3.dispose();
    otp4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipPath(
          clipper: CustomShape(),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.kDefaultPadding),
              decoration:
                  const BoxDecoration(gradient: AppColors.radialGradient),
              child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    const SizedBox(
                      height: AppSizes.kDefaultPadding,
                    ),
                    Image.asset(
                      AppImages.appLogo,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                  ])))),
      Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppSizes.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter 4 Digit Code',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: AppSizes.kDefaultPadding,
            ),
            Text(
                'Enter 4 digit code that you received on your registered mobile number',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.darkGrey.withOpacity(0.8),
                    letterSpacing: 0.5)),
            const SizedBox(
              height: AppSizes.kDefaultPadding,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: CustomTextField(
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        isBorder: false,
                        textSize: 20,
                        focusNode: otp1,
                        onChanged: (String? value) {
                          if (value!.isNotEmpty) {
                            FocusScope.of(context).requestFocus(otp2);
                          }
                        },
                        autoFocus: true,
                        textAlign: TextAlign.center,
                        controller: _otp1Controller)),
                const SizedBox(
                  width: AppSizes.kDefaultPadding,
                ),
                Expanded(
                    flex: 1,
                    child: CustomTextField(
                        isBorder: false,
                        maxLength: 1,
                        textSize: 20,
                        focusNode: otp2,
                        onChanged: (String? value) {
                          if (value!.isNotEmpty) {
                            FocusScope.of(context).requestFocus(otp3);
                          } else {
                            FocusScope.of(context).requestFocus(otp1);
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        controller: _otp2Controller)),
                const SizedBox(
                  width: AppSizes.kDefaultPadding,
                ),
                Expanded(
                    flex: 1,
                    child: CustomTextField(
                        isBorder: false,
                        maxLength: 1,
                        textSize: 20,
                        focusNode: otp3,
                        onChanged: (String? value) {
                          if (value!.isNotEmpty) {
                            FocusScope.of(context).requestFocus(otp4);
                          } else {
                            FocusScope.of(context).requestFocus(otp2);
                          }
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        controller: _otp3Controller)),
                const SizedBox(
                  width: AppSizes.kDefaultPadding,
                ),
                Expanded(
                    flex: 1,
                    child: CustomTextField(
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        isBorder: false,
                        textSize: 20,
                        onChanged: (String? value) {
                          if (value!.length >= 1) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          } else {
                            FocusScope.of(context).requestFocus(otp3);
                          }
                        },
                        focusNode: otp4,
                        textAlign: TextAlign.center,
                        controller: _otp4Controller)),
              ],
            ),
            const SizedBox(
              height: AppSizes.kDefaultPadding * 2,
            ),
            FullButton(label: 'Continue', onPressed: () {
              context.pushReplacement(const ResetPasswordScreen());
            }),
            const SizedBox(
              height: AppSizes.kDefaultPadding * 2,
            ),
          ],
        ),
      )
    ])));
  }
}
