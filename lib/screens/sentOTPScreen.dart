import 'package:flutter/material.dart';
import 'package:food_delivery/screens/newPasswordScreen.dart';
import '../const/colors.dart';
import '../utils/helper.dart';

class SendOTPScreen extends StatelessWidget {
  const SendOTPScreen({super.key});

  static const routeName = "/sendOTP";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(height: 45,),
              Text("We have sent you an OTP to your email",
                style: Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              Text(
                "Please check your mail maj****05@gmail.com to continue to reset your password",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: AppColor.placeholderBg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                              "*",
                            style: TextStyle(fontSize: 45),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: AppColor.placeholderBg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 45),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: AppColor.placeholderBg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 45),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25,),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: AppColor.placeholderBg,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 45),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              SizedBox(
                height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(NewPasswordScreen.routeName);
                      },
                      child: Text(
                          "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                  ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't Recieve? "),
                  Text(
                      "Click Here",
                    style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
