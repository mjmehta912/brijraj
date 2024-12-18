import 'package:brijraj/constants/color_constants.dart';
import 'package:brijraj/constants/image_constants.dart';
import 'package:brijraj/features/add_entry/controllers/add_entry_controller.dart';
import 'package:brijraj/utils/app_dialog_utils.dart';
import 'package:brijraj/widgets/app_appbar.dart';
import 'package:brijraj/widgets/app_date_picker_text_form_field.dart';
import 'package:brijraj/widgets/app_paddings.dart';
import 'package:brijraj/widgets/app_secondary_button.dart';
import 'package:brijraj/widgets/app_size_extensions.dart';
import 'package:brijraj/widgets/app_spacings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddEntryScreen extends StatefulWidget {
  const AddEntryScreen({
    super.key,
  });

  @override
  State<AddEntryScreen> createState() => _AddEntryScreenState();
}

class _AddEntryScreenState extends State<AddEntryScreen> {
  final AddEntryController _controller = Get.put(
    AddEntryController(),
  );

  @override
  void initState() {
    super.initState();
    _controller.dateController.text = DateFormat('dd-MM-yyyy').format(
      DateTime.now(),
    );
  }

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
              AppDatePickerTextFormField(
                dateController: _controller.dateController,
                hintText: 'Date',
              ),
              AppSpaces.v16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppSecondaryButton(
                    onPressed: () {
                      showFuelDialog(context);
                    },
                    buttonHeight: 40.appHeight,
                    buttonWidth: 0.35.screenWidth,
                    title: 'Fuel',
                    icon: kIconFuel,
                  ),
                  AppSecondaryButton(
                    onPressed: () {
                      showOilDialog(context);
                    },
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
