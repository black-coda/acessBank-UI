import 'package:flutter/material.dart';

class AccountBalanceWidget extends StatelessWidget {
  const AccountBalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      padding: const EdgeInsets.all(18),
      height: 150,
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
                  // TODO visiblity
                },
                icon: const Icon(
                  Icons.visibility_off_sharp,
                  color: Color.fromARGB(255, 64, 103, 158),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "N 300,000,000.00",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
