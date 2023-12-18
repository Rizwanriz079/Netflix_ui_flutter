import 'package:flutter/cupertino.dart';

class search_titles extends StatelessWidget {
  final String titles;
  const search_titles({Key? key, required this.titles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titles,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
