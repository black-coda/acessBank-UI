// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'dart:ui';

import 'package:access_bank_ui/grid_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'account_balance_widget.dart';
import 'account_type_widget.dart';
import 'overview_widget.dart';
import 'defaults.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 64, 103, 158),
        ),
      ),
      home: const HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //0xfffe7ebf4

      // endDrawer: Drawer(),

      backgroundColor: const Color(0xfffe7ebf4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 45.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Good Morning,",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "James 😎",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 29,
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 30.0,
                  child: Image.asset("assets/images/avatar.png"),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            const AccountTypeWidget(),
            const AccountBalanceWidget(),
            const OverviewWidget(),
            const SizedBox(
              height: 20,
            ),
            rowFavoritte(),
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: GridDatas())
          ],
        ),
      ),
    );
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
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "My Favorites",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 64, 103, 158),
            fontSize: 19.8,
          ),
        ),
        Text(
          "more options",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12.8,
            color: Color.fromARGB(255, 53, 50, 50),
          ),
        )
      ],
    );
  }
}

int index = 4;

List<String> gridText = [
  "Reward & Referral",
  'POS fast pay',
  "Acess transfers",
  'Other banks transfer',
  "Mobile transfer",
  "Data purchase",
  "Bill Payment",
  "Foreign Top-up",
  "Instant loans",
  "Central Currency",
  'Foreign currency',
  "Transaction history"
];

List<IconData> gridICons = [
  Icons.diamond_sharp,
  Icons.payment_sharp,
  Icons.money,
  Icons.transfer_within_a_station_sharp,
  Icons.mobile_friendly,
  Icons.wifi_sharp,
  Icons.payment_sharp,
  Icons.attach_money,
  Icons.attach_money_sharp,
  Icons.sell,
  Icons.currency_exchange_sharp,
  Icons.manage_history_sharp
];

class DataChoice {
  final String text;
  final IconData icon;
  DataChoice({
    required this.text,
    required this.icon,
  });
}

List<DataChoice> gridChoices = [
  DataChoice(
    text: gridText[0],
    icon: gridICons[0],
  ),
  DataChoice(
    text: gridText[1],
    icon: gridICons[1],
  ),
  DataChoice(
    text: gridText[2],
    icon: gridICons[2],
  ),
  DataChoice(
    text: gridText[3],
    icon: gridICons[3],
  ),
  DataChoice(
    text: gridText[4],
    icon: gridICons[4],
  ),
  DataChoice(
    text: gridText[5],
    icon: gridICons[5],
  ),
  DataChoice(
    text: gridText[6],
    icon: gridICons[6],
  ),
  DataChoice(
    text: gridText[7],
    icon: gridICons[7],
  ),
  DataChoice(
    text: gridText[8],
    icon: gridICons[8],
  ),
  DataChoice(
    text: gridText[9],
    icon: gridICons[9],
  ),
  DataChoice(
    text: gridText[10],
    icon: gridICons[10],
  ),
  DataChoice(
    text: gridText[11],
    icon: gridICons[11],
  ),
];

class GridDatas extends StatelessWidget {
  const GridDatas({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: gridChoices.length,
      itemBuilder: (BuildContext context, int index) {
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
                      maxLines: 2,
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
    );
  }
}
