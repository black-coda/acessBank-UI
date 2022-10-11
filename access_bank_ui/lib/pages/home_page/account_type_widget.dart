import 'package:flutter/material.dart';

class AccountTypeWidget extends StatelessWidget {
  const AccountTypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
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
                    fontSize: 15.7, color: Color.fromARGB(255, 64, 103, 158)),
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
          const SlideWidetButt(),
        ],
      ),
    );
  }
}

class SlideWidetButt extends StatelessWidget {
  const SlideWidetButt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 15,
          decoration: BoxDecoration(
              color: Colors.orange[900],
              borderRadius: const BorderRadius.all(Radius.elliptical(5, 3))),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: const BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.elliptical(3, 3))),
        ),
      ],
    );
  }
}
