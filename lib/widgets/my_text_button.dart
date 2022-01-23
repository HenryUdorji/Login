import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart' as color;

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onTap}) : super(key: key);

  final String buttonName;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.AppColor.backgroundColorGradientTop,
            color.AppColor.backgroundColorGradientBottom
          ]
        ),
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonName,
            style: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                color: color.AppColor.whiteTextColor,
                fontSize: 17
            )
        ),
      ),
    );
  }
}
