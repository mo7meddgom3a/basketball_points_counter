import 'package:flutter/material.dart';

import '../widgets/custom_elevated_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Points Counter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "0",
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 1 Point",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 2 Point",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 3 Point",
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "0",
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 1 Point",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 2 Point",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomElevatedButton(
                    text: "Add 3 Point",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(130, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Text(
              "Re Start",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}

