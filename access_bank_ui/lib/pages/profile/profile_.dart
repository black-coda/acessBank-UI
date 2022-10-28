// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'id.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabBarController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: const Color(0xffE5E9F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              children: [
                const ProfileIDWidget(),
                Container(
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: tabBarController,
                    padding: const EdgeInsets.all(0),
                    labelColor: const Color.fromARGB(255, 64, 103, 158),
                    unselectedLabelColor:
                        const Color.fromARGB(124, 64, 103, 158),
                    // isScrollable: true,
                    labelPadding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0),
                    tabs: const [
                      Tab(text: "Privacy & Security"),
                      Tab(text: "Limits"),
                      Tab(text: "Appearances"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 218,
                  child: TabBarView(
                    controller: tabBarController,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          SelectionWidget(
                              title: "Change/Reset Pin", icon: Icons.key_sharp),
                          SelectionWidget(
                              title: "Change Password", icon: Icons.lock_sharp),
                          SelectionWidget(
                              title: "Biometric Login", icon: Icons.key_sharp),
                          SelectionWidget(
                              title: "Auto login on start app",
                              icon: Icons.lock_reset_sharp),
                        ],
                      ),
                      // const SelectionWidget(title: "",),
                      ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          SelectionWidget(
                              title: "Transaction Limit",
                              icon: Icons.not_interested_sharp)
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        children: const [
                          //TODO Change Theme

                          SelectionWidget(
                              title: "App Icon", icon: Icons.apps_sharp),
                          SelectionWidget(
                              title: "Splash Screen Animation",
                              icon: Icons.animation_outlined),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            value: false,
                            onChanged: null,
                            title: Text("Dark Mode"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.title,
    required this.icon,
    this.showArrow = false,
  });

  final String title;
  final IconData icon;
  final bool showArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(189, 64, 103, 158),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Icon(
                icon,
                color: Colors.white,
                size: 18,
              ),
            ),
            // tileColor: Color.fromARGB(255, 64, 103, 158),
            title: Text(title),
            trailing: showArrow
                ? const SizedBox()
                : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
          )
        ],
      ),
    );
  }
}
