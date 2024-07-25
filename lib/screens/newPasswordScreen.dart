import 'package:flutter/material.dart';
import 'package:food_delivery/screens/introScreen.dart';
import 'package:food_delivery/utils/helper.dart';
import 'package:food_delivery/widgets/customTextInput.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  static const routeName = "/newPassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "New Password",
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Please enter your new password to complete your account verification",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextInput(hintText: "New Password"),
                SizedBox(height: 20,),
                CustomTextInput(hintText: "Confirm Password"),
                SizedBox(height: 40,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(IntroScreen.routeName);
                    },
                    child: Text(
                        "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
