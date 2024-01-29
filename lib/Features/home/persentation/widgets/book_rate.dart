// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../core/utils/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size:14,
          color: Color(0xffffdd4d),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '(2347)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
