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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 30.0,
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
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
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(135, 64, 103, 158),
                            offset: Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
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
                            Text(
                              "Stay Safe,\nStay Connected!",
                              style: TextStyle(
                                  color: Color.fromARGB(210, 186, 203, 32),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 23),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Open your DiamondXtra\naccount conviently online",
                              style: TextStyle(fontSize: 11),
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
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.purple, height: 150.0),
            Container(color: Colors.green, height: 150.0)
          ]))
        ],
      ),
    );
  }
}
