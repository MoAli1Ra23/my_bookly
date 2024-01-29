import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'book_detials_custom_app_bar.dart';
import 'custom_book_cover.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const BookDetailsCustomAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .2),
              child: const CustomBookCover(),
            ),
            const SizedBox(
              height: 43,
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
