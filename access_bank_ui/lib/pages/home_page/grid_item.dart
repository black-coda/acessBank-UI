// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
  Icons.manage_history_sharp,
];

class DataChoice {
  final String text;
  final IconData icon;
  DataChoice({
    required this.text,
    required this.icon,
  });
}

List<DataChoice> gridChoices = <DataChoice>[
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
          child: Expanded(
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
                    Text(
                      gridText[index],
                      // overflow: TextOverflow.cli,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
