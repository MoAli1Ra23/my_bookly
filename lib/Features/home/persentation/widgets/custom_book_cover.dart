
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20,top: 15,bottom: 10),
      child: AspectRatio( 
        aspectRatio: 2.7/4,
        child: Container(
    
          decoration:   BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.test),
            ),
          ),
        ),
      ),
    );
  }
}