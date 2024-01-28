import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeatureListView(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
            BestSallerListVeiwItem(),
          ],
        ),
      ),
    );
  }
}

class BestSallerListVeiwItem extends StatelessWidget {
  const BestSallerListVeiwItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.test),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'Herry Potter and the Goblet fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:Styles.textStyle20,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
