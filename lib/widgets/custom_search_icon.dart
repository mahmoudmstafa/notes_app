

import 'package:flutter/material.dart';


class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50 ,
      height: 50 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(.05) ,
      ),
      child: Icon(Icons.search ,
        size: 26,),
    );
  }
}
