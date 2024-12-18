import 'package:brijraj/constants/color_constants.dart';
import 'package:brijraj/constants/image_constants.dart';
import 'package:brijraj/features/add_entry/controllers/add_entry_controller.dart';
import 'package:brijraj/widgets/app_appbar.dart';
import 'package:brijraj/widgets/app_paddings.dart';
import 'package:brijraj/widgets/app_secondary_button.dart';
import 'package:brijraj/widgets/app_size_extensions.dart';
import 'package:brijraj/widgets/app_spacings.dart';
import 'package:brijraj/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEntryScreen extends StatelessWidget {
  AddEntryScreen({
    super.key,
  });

  final AddEntryController _controller = Get.put(
    AddEntryController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: const AppAppbar(),
      body: Padding(
        padding: AppPaddings.combined(
          horizontal: 15.appWidth,
          vertical: 10.appHeight,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppTextFormField(
                controller: _controller.dateController,
                hintText: 'Date',
              ),
              AppSpaces.v16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSecondaryButton(
                    onPressed: () {},
                    buttonHeight: 40.appHeight,
                    buttonWidth: 0.35.screenWidth,
                    title: 'Fuel',
                    icon: kIconFuel,
                  ),
                  AppSecondaryButton(
                    onPressed: () {},
                    buttonHeight: 40.appHeight,
                    buttonWidth: 0.35.screenWidth,
                    title: 'Oil',
                    icon: kIconOil,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
