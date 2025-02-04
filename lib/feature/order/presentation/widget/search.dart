import 'package:flutter/material.dart';
import 'package:maxap/core/strings/app_strings.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        
         textAlign: TextAlign.right,
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.all(10) ,
            hintText: AppStrings.searchHint,
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ), 
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
