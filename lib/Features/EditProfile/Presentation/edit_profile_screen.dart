import 'package:distech_technology/Commons/app_sizes.dart';
import 'package:distech_technology/Widgets/custom_app_bar.dart';
import 'package:distech_technology/Widgets/custom_divider.dart';
import 'package:distech_technology/Widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Widgets/custom_shape_clipper.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  //Variable Declarations
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Edit Profile',
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 130,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.primaryDark,
                ),
              ),
              const Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.darkGrey,
                  ))
            ],
          ),
          const SizedBox(
            height: AppSizes.kDefaultPadding,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.kDefaultPadding),
              children: [
                CustomTextField(
                  controller: _firstNameController,
                  hintText: 'Shuvra',
                  labelText: 'First Name',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: 'Paul',
                  labelText: 'Last Name',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: '0000 0000 0000',
                  labelText: 'Aadhaar ID',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: 'ABCD Nagar, Block-A, Uttarayan, Bidhannagar ',
                  labelText: 'Address',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: '743437',
                  labelText: 'PIN Code',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding * 2,
                ),
                Text(
                  'Other Information'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.darkGrey.withOpacity(0.8)),
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding / 2,
                ),
                const CustomDivider(),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: '6535653542',
                  labelText: 'Mobile Number',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: 'user@gmail.com',
                  labelText: 'Email ID',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: '123456789',
                  labelText: 'Trade License Number',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
                const SizedBox(
                  height: AppSizes.kDefaultPadding,
                ),
                CustomTextField(
                  controller: _lastNameController,
                  hintText: '16365253454',
                  labelText: 'GST Number',
                  isBorder: false,
                  maxLines: 1,
                  minLines: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
