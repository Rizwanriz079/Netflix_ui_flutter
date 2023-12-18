import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/APPLICATION/CORE/constants.dart';
import 'package:untitled/PRESENTATION/search/widgets__/search_idle.dart';
import 'package:untitled/PRESENTATION/search/widgets__/search_results.dart';

class screen_search extends StatelessWidget {
  const screen_search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.shade800,
              prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
              suffixIcon:
                  Icon(CupertinoIcons.xmark_circle_fill, color: Colors.grey),
              style: TextStyle(color: Colors.white),
            ),
            kheight,
            // Expanded(child: searchidle()),
            Expanded(child: search_results()),
          ],
        ),
      ),
    );
  }
}
