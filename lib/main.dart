import 'package:app4_basketball_points_counter/cubit/counter_cubit.dart';
import 'package:app4_basketball_points_counter/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const BasketballCounter());

class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}