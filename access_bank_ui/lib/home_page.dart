// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';

import 'account_balance_widget.dart';
import 'account_type_widget.dart';
import 'overview_widget.dart';
import 'grid_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar in Slivers
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 64, 103, 158),
            expandedHeight: 110,
            leading: Image.asset("assets/images/logo.png"),
            centerTitle: true,
            title: const Text(
              "Monday Solomon",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xfffF76E04),
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 30.0,
                child: Image.asset("assets/images/avatar.png"),
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
                  rowFavoritte(),
                ],
              ),
            ),
          ),

          // SliverGrid

          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 64, 103, 158),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              gridChoices[index].icon,
                              color: Colors.white,
                              size: 28,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                gridText[index],
                                // overflow: TextOverflow.cli,
                                // maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
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
      ),
    );
  }
}

Row rowFavoritte() {
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
