import 'package:flutter/material.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 10),
      padding:
          const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      // height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Overview",
                style: TextStyle(
                    fontSize: 15.7, fontWeight: FontWeight.w600),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ItemList(
                text: "1M Naira income",
              ),
              ItemList(
                text: "200K Travel expenses",
              ),
              ItemList(
                text: "300K Food expenses",
              ),
            ],
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.arrow_downward_sharp,
                    color: Color.fromARGB(255, 64, 103, 158),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Row(
            children: [
              const Bullet(),
              const SizedBox(
                width: 10.5,
              ),
              Text(text),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ]),
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  const Bullet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      width: 8.0,
      decoration: const BoxDecoration(
        color: Color(0xfffF16101),
        shape: BoxShape.circle,
      ),
    );
  }
}
