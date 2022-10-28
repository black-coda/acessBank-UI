import 'package:flutter/material.dart';

import 'account_balance_widget.dart';
import 'account_type_widget.dart';
import 'overview_widget.dart';
import 'grid_item.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // AppBar in Slivers
        SliverAppBar.large(
          backgroundColor: const Color.fromARGB(255, 64, 103, 158),
          // expandedHeight: 200,
          leading: Image.asset("assets/images/logo.png"),
          centerTitle: true,
          stretch: true,
          title: const Text(
            "Monday Solomon",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 25.0,
                child: Image.asset("assets/images/avatar.png"),
              ),
            ),
          ],
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                const AccountTypeWidget(),
                const AccountBalanceWidget(),
                const OverviewWidget(),
                const SizedBox(
                  height: 20,
                ),
                rowFavorite(),
              ],
            ),
          ),
        ),

        // SliverGrid

        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 64, 103, 158),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        gridChoices[index].icon,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Text(
                          gridText[index],
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 11.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: gridChoices.length,
            ),
          ),
        ),
      ],
    );
  }
}

Row rowFavorite() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "My Favorites",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 64, 103, 158),
        ),
      ),
      Text(
        "more options",
        style: TextStyle(
          fontSize: 11.8,
          color: Colors.grey[600],
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
