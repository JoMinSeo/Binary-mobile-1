import 'package:binary_flutter/components/success_view.dart';
import 'package:binary_flutter/screens/dogs/first_screen/dog_register_first.dart';
import 'package:flutter/material.dart';

class RegisterComplete extends StatelessWidget {
  final String id;
  final int type;
  final List<String> strs;
  final List<String> strs2;
  RegisterComplete(this.id, this.type, this.strs, this.strs2);
  @override
  Widget build(BuildContext context) {
    print(type);
    print(strs);
    print(strs2);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => DogRegisterFirst(id)));
      });
    });
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SuccessView(),
            Text(
              "회원가입이 완료되었습니다.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF707070),
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
