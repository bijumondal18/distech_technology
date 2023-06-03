import 'package:flutter/material.dart';

import '../../../Commons/app_colors.dart';
import '../../../Commons/app_sizes.dart';
import '../../../Widgets/full_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppSizes.kDefaultPadding * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.kDefaultPadding),
          child: Column(
            children: [
              FullButton(label: 'View All Ticket', onPressed: () {}),
              const SizedBox(
                height: AppSizes.kDefaultPadding,
              ),
              FullButton(label: 'View Purchase History', onPressed: () {}),
              const SizedBox(
                height: AppSizes.kDefaultPadding,
              ),
              FullButton(label: 'View Sold Ticket', onPressed: () {}),
              const SizedBox(
                height: AppSizes.kDefaultPadding,
              ),
              FullButton(
                  label: 'Return Unsold Ticket',
                  bgColor: AppColors.secondary,
                  onPressed: () {}),
            ],
          ),
        )
      ],
    );
  }
}
