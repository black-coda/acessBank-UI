import 'package:flutter/material.dart';

class AccountBalanceWidget extends StatefulWidget {
  const AccountBalanceWidget({super.key});

  @override
  State<AccountBalanceWidget> createState() => _AccountBalanceWidgetState();
}

class _AccountBalanceWidgetState extends State<AccountBalanceWidget> {
  var balance = "150,000.00";
  var hiddenBalance = "##########";
  bool visible = true;
  bool dropDownVisible = false;

  IconData up = Icons.arrow_drop_up_sharp;
  IconData down = Icons.arrow_drop_down_sharp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      padding: const EdgeInsets.all(18),
      // height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Account Balance : ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 64, 103, 158),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: visible
                    ? const Icon(
                        Icons.visibility_sharp,
                        color: Color.fromARGB(255, 64, 103, 158),
                      )
                    : const Icon(
                        Icons.visibility_off_sharp,
                        color: Color.fromARGB(255, 64, 103, 158),
                      ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              visible
                  ? Text(
                      balance,
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    )
                  : Text(
                      hiddenBalance,
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
              IconButton(
                onPressed: () {
                  setState(() {
                    dropDownVisible = !dropDownVisible;
                  });
                },
                icon: dropDownVisible
                    ? Icon(up, color: const Color.fromARGB(255, 64, 103, 158))
                    : Icon(down,
                        color: const Color.fromARGB(255, 64, 103, 158)),
              ),
            ],
          ),
          Visibility(
            visible: dropDownVisible,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DropDownWidget(
                    icon: Icons.transfer_within_a_station_sharp,
                    text: "Accounts",
                  ),
                  DropDownWidget(
                    icon: Icons.transfer_within_a_station_sharp,
                    text: "Beneficiary",
                  ),
                  DropDownWidget(
                    icon: Icons.transfer_within_a_station_sharp,
                    text: "Transfer",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 64, 103, 158),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 13,
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
  }
}
