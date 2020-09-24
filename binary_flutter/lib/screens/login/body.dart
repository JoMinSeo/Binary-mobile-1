import 'package:binary_flutter/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

import '../../services/sizes/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF9C9C),
                    Color(0xFFFF5050),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/handicon.png"),
                      Text(
                        "비나리",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      RoundedTextField(
                        hintText: "아이디를 입력하세요.",
                        controller: TextEditingController(),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      RoundedTextField(
                        hintText: "비밀번호를 입력하세요.",
                        controller: TextEditingController(),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "아이디/비밀번호를 잊어버리셨나요?",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: MaterialButton(
                          elevation: 0,
                          color: Color(0xFFFD7C7C),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "로그인",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "회원가입",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "이 필요하신가요?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
