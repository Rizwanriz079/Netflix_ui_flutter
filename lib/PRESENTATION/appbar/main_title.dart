import 'package:flutter/cupertino.dart';

class main_title extends StatelessWidget {
  const main_title({Key? key, required this.titles}) : super(key: key);
final String titles;
  @override
  Widget build(BuildContext context) {
    return Text(
      titles,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
