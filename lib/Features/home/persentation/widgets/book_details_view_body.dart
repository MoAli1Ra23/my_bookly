import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_detials_custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            BookDetailsCustomAppBar(),
          ],
        ),
      ),
    );
  }
}
