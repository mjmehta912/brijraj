import 'package:brijraj/constants/color_constants.dart';
import 'package:brijraj/constants/image_constants.dart';
import 'package:brijraj/styles/textstyles.dart';
import 'package:brijraj/widgets/app_paddings.dart';
import 'package:brijraj/widgets/app_secondary_button.dart';
import 'package:brijraj/widgets/app_size_extensions.dart';
import 'package:brijraj/widgets/app_spacings.dart';
import 'package:brijraj/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void showFuelDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: kColorwhite,
        surfaceTintColor: kColorwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: AppPaddings.combined(
            horizontal: 15.appWidth,
            vertical: 15.appHeight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    kIconFuel,
                    colorFilter: const ColorFilter.mode(
                      kColorPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                  AppSpaces.h20,
                  Text(
                    'Fuel',
                    style: TextStyles.kBoldInstrumentSans(
                      color: kColorPrimary,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              AppSpaces.v20,
              AppTextFormField(
                controller: TextEditingController(),
                hintText: 'Litre',
              ),
              AppSpaces.v20,
              AppSecondaryButton(
                onPressed: () {},
                buttonHeight: 40.appHeight,
                title: 'Add',
                icon: '',
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showOilDialog(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: kColorwhite,
        surfaceTintColor: kColorwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: AppPaddings.combined(
            horizontal: 15.appWidth,
            vertical: 15.appHeight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    kIconOil,
                    colorFilter: const ColorFilter.mode(
                      kColorPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                  AppSpaces.h20,
                  Text(
                    'Oil',
                    style: TextStyles.kBoldInstrumentSans(
                      color: kColorPrimary,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              AppSpaces.v20,
              AppTextFormField(
                controller: TextEditingController(),
                hintText: 'Litre',
              ),
              AppSpaces.v20,
              AppSecondaryButton(
                onPressed: () {},
                buttonHeight: 40.appHeight,
                title: 'Add',
                icon: '',
              ),
            ],
          ),
        ),
      );
    },
  );
}
