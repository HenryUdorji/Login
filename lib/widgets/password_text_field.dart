import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart' as color;

class MyPasswordTextField extends StatelessWidget {

  const MyPasswordTextField({
    Key? key,
    required this.isPasswordVisible,
    required this.onTap
  }) : super(key: key);

  final bool isPasswordVisible;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Password',
            style: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                color: color.AppColor.grayTextColor,
                fontSize: 15
            )
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: 50,
          decoration: const BoxDecoration(
              color: color.AppColor.textFieldBgColor,
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: TextField(
            obscureText: isPasswordVisible,
            cursorColor: color.AppColor.backgroundColorGradientBottom,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            style: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                color: color.AppColor.blackTextColor,
                fontSize: 17
            ),
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: color.AppColor.whiteAlmostTextColor,
                  ),
                ),
                border: InputBorder.none
            ),
          ),
        )
      ],
    );
  }
}
