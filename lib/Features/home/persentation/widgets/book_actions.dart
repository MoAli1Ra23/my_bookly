
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              text: "19.9 E",
            ),
          ),
          Expanded(
              child: CustomButton(
            backgroundColor: Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
            text: "Free prview",
            fontSize: 16,
          )),
        ],
      ),
    );
  }
}
