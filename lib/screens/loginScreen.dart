import 'package:flutter/material.dart';
import 'package:food_delivery/screens/homeScreen.dart';

import '../screens/forgotPasswordScreen.dart';
import '../utils/helper.dart';
import '../const/colors.dart';
import '../screens/signUpScreen.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
static const routeName = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Column(
              children: [
                Spacer(),
                Text(
                    "Login",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text("Add your details to login"),
                Spacer(),
                CustomTextInput(
                  hintText: "Your email",
                ),
                Spacer(),
                CustomTextInput(
                  hintText: "Password",
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: Text(
                        "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed(ForgotPasswordScreen.routeName);
                  },
                  child: Text("Forgot your password?"),
                ),
                Spacer(flex: 2,),
                Text("or Login With"),
                Spacer(),
                  SizedBox(
                    height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF367FC0),
                    ),
                    ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName("fb.png", "virtual"),
                          ),
                          SizedBox(width: 30,),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(
                                color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFFDD4B39),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName("google.png", "virtual"),
                        ),
                        SizedBox(width: 30,),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(flex: 4,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      Text(
                          "Sign Up",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
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

