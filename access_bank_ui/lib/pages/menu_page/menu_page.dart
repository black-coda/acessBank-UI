import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPageWidget();
  }
}

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E9F3),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset(
                        "assets/images/accessLogo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        IconButton(
                            onPressed: null, icon: Icon(Icons.headphones)),
                        IconButton(
                            onPressed: null, icon: Icon(Icons.flip_sharp)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Featured",
                      style: TextStyle(
                        color: Color.fromARGB(255, 64, 103, 158),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "more",
                      style: TextStyle(
                        color: Color.fromARGB(205, 64, 103, 158),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const CardBanner(),
                TransactionDropDownWidget(
                  changeState: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                VisibWidget(
                  isVisible: isVisible,
                  title: "Monday Solomon transferred to Ibiks",
                  icon: Icons.transfer_within_a_station_sharp,
                  subtitle: "Apr 26, 2022",
                  trailColor: Colors.red,
                  trailText: "-150.00k",
                ),
                TransactionDropDownWidget(
                  changeState: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                VisibWidget(
                  isVisible: isVisible,
                  title: "Monday Solomon transferred to Ibiks",
                  icon: Icons.transfer_within_a_station_sharp,
                  subtitle: "Apr 26, 2022",
                  trailColor: Colors.red,
                  trailText: "-150.00k",
                ),
                TransactionDropDownWidget(
                  changeState: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                VisibWidget(
                  isVisible: isVisible,
                  title: "Monday Solomon transferred to Ibiks",
                  icon: Icons.transfer_within_a_station_sharp,
                  subtitle: "Apr 26, 2022",
                  trailColor: Colors.red,
                  trailText: "-150.00k",
                ),
                TransactionDropDownWidget(
                  changeState: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
                VisibWidget(
                  isVisible: isVisible,
                  title: "Monday Solomon transferred to Ibiks",
                  icon: Icons.transfer_within_a_station_sharp,
                  subtitle: "Apr 26, 2022",
                  trailColor: Colors.red,
                  trailText: "-150.00k",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VisibWidget extends StatelessWidget {
  VisibWidget({
    super.key,
    required this.isVisible,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.trailText,
    required this.trailColor,
  });

  final bool isVisible;
  final String title;
  final String subtitle;
  final IconData icon;
  final String trailText;
  final Color trailColor;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: SizedBox(
        height: 210,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                leading: Icon(icon),
                title: Text(title),
                subtitle: Text(subtitle),
                trailing: Text(
                  trailText,
                  style:
                      TextStyle(color: trailColor, fontWeight: FontWeight.w700),
                ),
                // isThreeLine: true,
              );
            },
          ),
        ),
      ),
    );
  }
}

class TransactionDropDownWidget extends StatelessWidget {
  const TransactionDropDownWidget({
    super.key,
    required this.changeState,
  });

  final VoidCallback changeState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Transfer"),
            Container(
              height: 35,
              width: 39,
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Color.fromARGB(108, 86, 113, 165),
              ),
              child: IconButton(
                icon: const Icon(Icons.abc),
                onPressed: changeState,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardBanner extends StatelessWidget {
  const CardBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(133, 218, 222, 228),
              offset: Offset(
                3.0,
                3.0,
              ),
              blurRadius: 0.5,
              spreadRadius: 0.5,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
            ), //BoxShadow
          ]),
      // padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 156,
                child: Text(
                  "Stay Safe,Stay Connected!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(210, 186, 203, 32),
                      fontWeight: FontWeight.w800,
                      fontSize: 23),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                width: 125,
                child: Text(
                  "Open your DiamondXtra\naccount conviently online",
                  style: TextStyle(fontSize: 11),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Simply dial",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "*905*5#",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFA7A0D),
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          Expanded(
            child: Image.asset(
              "assets/images/banner.png",
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
