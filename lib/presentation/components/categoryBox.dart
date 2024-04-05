import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String name;
  CategoryBox({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        // 구체적인 숫자 말고 다르게 어떻게 하지 ..,,,,,,,,
        height: 40,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextButton(
            autofocus: name == "전체" ? true : false,
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
