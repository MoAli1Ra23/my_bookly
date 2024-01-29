import 'package:flutter/material.dart';

import 'custom_book_cover.dart';

class MayBeLikedListBook extends StatelessWidget {
  const MayBeLikedListBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => const CustomBookCover()),
      ),
    );
  }
}
