import 'package:bookly/Features/home/persentation/widgets/best_saller_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomAppBar(),
                ),
                FeatureListView(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Best Seller",
                  style: Styles.textStyle20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BestSallerListVeiw(),
            ),
          ),
        ],
      ),
    );
  }
}
