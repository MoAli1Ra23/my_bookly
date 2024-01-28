import 'package:bookly/Features/home/persentation/widgets/custom_list_view_item.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          FeatureListView(),
        ],
      ),
    );
  }
}

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => const FeaturedListViewItem()),
      ),
    );
  }
}
