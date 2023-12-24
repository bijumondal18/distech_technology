import 'package:distech_technology/Commons/app_icons.dart';
import 'package:distech_technology/Commons/app_sizes.dart';
import 'package:distech_technology/Features/EditProfile/Presentation/edit_profile_screen.dart';
import 'package:distech_technology/Features/Profile/Widgets/profile_item_widget.dart';
import 'package:distech_technology/Utils/app_helper.dart';
import 'package:distech_technology/Widgets/custom_app_bar.dart';
import 'package:distech_technology/Widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Widgets/custom_shape_clipper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //Variable Declarations

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Profile',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    radius: 60,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: AppColors.white,
                      foregroundImage: NetworkImage(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-8183369-6546914.png'),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: AppSizes.kDefaultPadding,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.kDefaultPadding),
              child: ListView(
                children: [
                  const ProfileItemWidget(title: 'First Name', value: 'Biju'),
                  const ProfileItemWidget(title: 'Last Name', value: 'Mondal'),
                  const ProfileItemWidget(
                      title: 'Aadhaar ID', value: '0000 0000 0000'),
                  const ProfileItemWidget(
                      title: 'Pan Number', value: 'BCFED2542L'),
                  const ProfileItemWidget(
                      title: 'Address 1',
                      value: ' 3120 Fincham Road, Tupelo, Mississippi, United States, 38803'),
                  const ProfileItemWidget(title: 'ZIP Code', value: '38803'),
                  const SizedBox(
                    height: AppSizes.kDefaultPadding,
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
                  const ProfileItemWidget(
                      title: 'Mobile Number', value: '760-503-7095'),
                  const ProfileItemWidget(
                      title: 'Email ID', value: 'mb.technologies@gmail.com'),
                  const ProfileItemWidget(
                      title: 'Trade License Number', value: '875412512'),
                  const ProfileItemWidget(
                      title: 'GST Number', value: 'AGDF124563DG'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Image.asset(
            AppIcons.editIcon,
            height: 24,
            width: 24,
          ),
          onPressed: () {
            context.push(const EditProfileScreen());
          }),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
