import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.onTap,
  });
  final VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
