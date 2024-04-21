import 'package:app4_basketball_points_counter/cubit/counter_cubit.dart';
import 'package:app4_basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_elevated_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {

      },
      builder: (context, state) {
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
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamA}",
                        style: const TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 1 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 1);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 2 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 2);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 3 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "A", buttonNumber: 3);
                        },
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
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamB}",
                        style: const TextStyle(
                          fontSize: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 1 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNumber: 1);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 2 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNumber: 2);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Add 3 Point",
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(team: "B", buttonNumber: 3);
                        },
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
      },
    );
  }
}

