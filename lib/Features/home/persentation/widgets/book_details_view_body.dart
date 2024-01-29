import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_detials_custom_app_bar.dart';
import 'custom_book_cover.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var w= MediaQuery.of(context).size.width;
    return   SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const BookDetailsCustomAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w*.17),
              child: const CustomBookCover(),
            ),
            
          ],
        ),
      ),
    );
  }
}
