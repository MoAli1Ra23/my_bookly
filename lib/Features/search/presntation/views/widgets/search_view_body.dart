import 'package:bookly/Features/home/persentation/widgets/best_saller_list_item.dart';
import 'package:bookly/Features/search/presntation/views/widgets/search_view_resut_list.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(),
            SizedBox(
              height: 16,
            ),
            Text(
              "Result",
              style: Styles.textStyle16,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
