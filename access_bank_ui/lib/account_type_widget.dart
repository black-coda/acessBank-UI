import 'package:flutter/material.dart';

class AccountTypeWidget extends StatelessWidget {
  const AccountTypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 10),
      padding:
          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Target Savings accounts",
                style: TextStyle(
                    fontSize: 15.7,
                    color: Color.fromARGB(255, 64, 103, 158)),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: const [
              Text(
                "203039292",
                style: TextStyle(
                  fontSize: 13.8,
                  color: Color.fromARGB(255, 33, 51, 75),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
