import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
   const CustomAppBar({super.key, required this.title, required this.appBarIcon});
   final String title ;
  final IconData appBarIcon ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          appBarIcon: appBarIcon ,
        ),
      ],
    );
  }
}
