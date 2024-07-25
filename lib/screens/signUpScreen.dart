import 'package:flutter/material.dart';
import 'package:food_delivery/const/colors.dart';
import 'package:food_delivery/screens/loginScreen.dart';
import 'package:food_delivery/utils/helper.dart';
import 'package:food_delivery/widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const routeName = "/signUpScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text("Add your details to sign up"),
                Spacer(),
                CustomTextInput(hintText: "Name"),
                Spacer(),
                CustomTextInput(hintText: "Email"),
                Spacer(),
                CustomTextInput(hintText: "Phone Number"),
                Spacer(),
                CustomTextInput(hintText: "Address"),
                Spacer(),
                CustomTextInput(hintText: "Password"),
                Spacer(),
                CustomTextInput(hintText: "Confirm Password"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      Text(
                          "Login",
                        style: TextStyle(
                            color: AppColor.orange,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
