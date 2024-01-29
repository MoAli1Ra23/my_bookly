import 'package:bookly/Features/home/persentation/widgets/best_saller_list_item.dart';
import 'package:flutter/material.dart';

class BestSallerListVeiw extends StatelessWidget {
  const BestSallerListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSallerListVeiwItem(),
          )),
    );
  }
}
