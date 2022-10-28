import 'package:flutter/material.dart';

class ProfileIDWidget extends StatelessWidget {
  const ProfileIDWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5.0),
        // height: MediaQuery.of(context).size.height / 2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 11.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Color.fromARGB(255, 64, 103, 158),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.notifications_on_outlined,
                      // color: Color.fromARGB(255, 64, 103, 158),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),

              // Profile Container
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffC1EECB)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          "assets/images/avatart.png", //TODO: To find 3d image avatar
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "James Fredson",
                style: TextStyle(
                  color: Color.fromARGB(255, 64, 103, 158),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Show Details",
                style: TextStyle(
                  color: Color.fromARGB(255, 64, 103, 158),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
