import 'package:flutter/material.dart';
import 'package:brijraj/styles/textstyles.dart';
import 'package:brijraj/constants/color_constants.dart';
import 'package:brijraj/widgets/app_size_extensions.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final double titleSpacing;

  const AppAppbar({
    super.key,
    this.title = 'SRI BRIJRAJ',
    this.titleStyle,
    this.leading,
    this.automaticallyImplyLeading = false,
    this.titleSpacing = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: kColorBackground,
      title: Text(
        title!,
        style: titleStyle ??
            TextStyles.kSemiBoldInstrumentSans(
              fontSize: FontSize.k24FontSize,
              color: kColorPrimary,
            ),
      ),
      titleSpacing: titleSpacing.appWidth,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
