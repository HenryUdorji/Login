
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart' as color;
import '../widgets/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    color.AppColor.backgroundColorGradientBottom,
                    color.AppColor.backgroundColorGradientTop
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft
              )
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Image.asset(
                  'assets/images/app-store.png',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 20),
                Text(
                    'App Store',
                    style: GoogleFonts.ubuntu(
                        fontStyle: FontStyle.normal,
                        color: color.AppColor.whiteTextColor,
                        fontSize: 30
                    )
                ),
                const SizedBox(height: 60),
                Text(
                    'Sign in to continue',
                    style: GoogleFonts.ubuntu(
                        fontStyle: FontStyle.normal,
                        color: color.AppColor.textFieldBgColor,
                        fontSize: 15
                    )
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 40,
                    bottom: 20
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: color.AppColor.whiteTextColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const MyTextField(hintText: 'Email', inputType: TextInputType.emailAddress),
                      const SizedBox(height: 20,),
                      MyPasswordTextField(
                        isPasswordVisible: isPasswordVisible,
                        onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },),
                      const SizedBox(height: 5),
                      InkWell(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                              'Forgot password?',
                              style: GoogleFonts.ubuntu(
                                  fontStyle: FontStyle.normal,
                                  color: color.AppColor.backgroundColorGradientBottom,
                                  fontSize: 17
                              ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        onTap: _forgotPassword,
                      ),
                      const SizedBox(height: 50,),
                      MyTextButton(buttonName: 'SIGN IN', onTap: _performLogin),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Don\'t have an account? Sign Up',
                      style: GoogleFonts.ubuntu(
                          fontStyle: FontStyle.normal,
                          color: color.AppColor.textFieldBgColor,
                          fontSize: 15
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: _openSignUpScreen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _forgotPassword() {
    print("::::::::::: FORGOT PASSWORD :::::::");
  }

  _performLogin() {
    print("::::::::::: PERFORM LOGIN :::::::");
  }

  void _openSignUpScreen() {
    print("::::::::::: OPEN SIGN UP :::::::");
  }
}
