import 'package:flutter/material.dart';
import 'package:maxap/core/theme/app_colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,

      child: Container(
        margin:const  EdgeInsets.only(left: 30),
        child: FloatingActionButton(
          
          backgroundColor: AppColors.floatingercolor,
          shape: const CircleBorder(),
          onPressed: () {
          
        },child:const Icon(Icons.shopping_cart,color: Colors.white,size: 25)),
      ),
    );
  }
}