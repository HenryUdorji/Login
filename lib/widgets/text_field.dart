import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart' as color;

class MyTextField extends StatelessWidget {

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.inputType
  }) : super(key: key);

  final String hintText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            hintText,
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
            cursorColor: color.AppColor.backgroundColorGradientBottom,
            keyboardType: inputType,
            style: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                color: color.AppColor.blackTextColor,
                fontSize: 17
            ),
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.email_outlined, color: color.AppColor.whiteAlmostTextColor),
              border: InputBorder.none
            ),
          ),
        )
      ],
    );
  }
}
