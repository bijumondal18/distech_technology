import 'package:distech_technology/Features/ForgotPassword/Presentation/otp_screen.dart';
import 'package:distech_technology/Utils/app_helper.dart';
import 'package:distech_technology/Widgets/custom_app_bar.dart';
import 'package:distech_technology/Widgets/custom_text_field.dart';
import 'package:distech_technology/Widgets/full_button.dart';
import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Commons/app_images.dart';
import '../../../Commons/app_sizes.dart';
import '../../../Widgets/custom_shape_clipper.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _mobileNumberController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Scaffold(
          appBar: const CustomAppBar(),
          body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSizes.kDefaultPadding),
                        decoration: const BoxDecoration(
                            gradient: AppColors.radialGradient),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Forgot Password',
                          style: Theme.of(context).textTheme.headlineMedium),
                      const SizedBox(
                        height: AppSizes.kDefaultPadding / 2,
                      ),
                      Text(
                          'Enter your register mobile number for the verification process. We will send 4 digt code',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: AppColors.darkGrey.withOpacity(0.8),
                                  letterSpacing: 0.5)),
                      const SizedBox(
                        height: AppSizes.kDefaultPadding * 2,
                      ),
                      CustomTextField(
                        isBorder: false,
                        hintText: 'Enter your resister mobile number',
                        controller: _mobileNumberController,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter mobile number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: AppSizes.kDefaultPadding * 2,
                      ),
                      FullButton(
                          label: 'Send OTP',
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              context.pushReplacement(const OtpScreen());
                            }
                          }),
                      const SizedBox(
                        height: AppSizes.kDefaultPadding * 1.5,
                      ),
                    ],
                  ),
                ),
              ]))),
    );
  }
}
