import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(

      child: Padding(
        padding: EdgeInsets.only(left:16.0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeatureListView(),
            SizedBox(height: 10,),
            Text(
            "Best Seller",
            style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
