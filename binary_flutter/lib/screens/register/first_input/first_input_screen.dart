import 'package:flutter/material.dart';

import 'body.dart';

class FirstInputScreen extends StatelessWidget {
  final int selected;
  FirstInputScreen(this.selected);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(selected));
  }
}
