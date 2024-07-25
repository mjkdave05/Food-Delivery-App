import 'package:flutter/material.dart';
import 'package:food_delivery/screens/sentOTPScreen.dart';
import 'package:food_delivery/utils/helper.dart';
import 'package:food_delivery/widgets/customTextInput.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static const routeName = "/forgotPasswordScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text(
                    "Reset Password",
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(height: 30,),
                Text(
                  "Please enter your mail to recieve a link to create a new password via email",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35,),
                CustomTextInput(hintText: "Email"),
                SizedBox(height: 35,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(SendOTPScreen.routeName);
                    },
                    child: Text(
                        "Send",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
