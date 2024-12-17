import 'package:brijraj/constants/color_constants.dart';
import 'package:brijraj/features/login/controllers/login_controller.dart';
import 'package:brijraj/styles/textstyles.dart';
import 'package:brijraj/widgets/app_paddings.dart';
import 'package:brijraj/widgets/app_size_extensions.dart';
import 'package:brijraj/widgets/app_spacings.dart';
import 'package:brijraj/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    super.key,
  });

  final LoginController _controller = Get.put(
    LoginController(),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: kColorBackground,
        body: Padding(
          padding: AppPaddings.ph20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'SRI BRIJRAJ',
                style: TextStyles.kBoldInstrumentSans(
                  fontSize: FontSize.k40FontSize,
                  color: kColorPrimary,
                ),
              ),
              AppSpaces.v50,
              AppTextFormField(
                controller: _controller.mobileNumberController,
                hintText: 'Mobile Number',
                validator: (value) {
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              AppSpaces.v16,
              Obx(
                () => AppTextFormField(
                  controller: _controller.passwordController,
                  hintText: 'Password',
                  validator: (value) {
                    return null;
                  },
                  isObscure: _controller.obscuredText.value,
                  suffixIcon: IconButton(
                    onPressed: () {
                      _controller.togglePasswordVisibility();
                    },
                    icon: Icon(
                      _controller.obscuredText.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 20,
                    ),
                  ),
                ),
              ),
              AppSpaces.v24,
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 40.appHeight,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      colors: [
                        kColorwhite,
                        kColorPrimary,
                      ],
                      radius: 15,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: kColorPrimary,
                      width: 0.25,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyles.kBoldInstrumentSans(
                        fontSize: FontSize.k24FontSize,
                        color: kColorPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
