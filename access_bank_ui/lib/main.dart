// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'account_balance_widget.dart';
import 'account_type_widget.dart';
import 'overview_widget.dart';

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
              backgroundColor: Color.fromARGB(255, 64, 103, 158))),
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

      backgroundColor: const Color(0xfffe7ebf4),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            leading: Image.asset("assets/images/logo.png"),
            title: Text(
              "Okwharobo Solomon M",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 196, 208, 226),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: 30.0,
                  child: Image.asset("assets/images/avatar.png"),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: const [
                AccountTypeWidget(),
                AccountBalanceWidget(),
                OverviewWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
