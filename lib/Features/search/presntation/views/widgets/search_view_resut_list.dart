import 'package:flutter/material.dart';

import '../../../../home/persentation/widgets/best_saller_list_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSallerListVeiwItem(),
          )),
    );
  }
}
