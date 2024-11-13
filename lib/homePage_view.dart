// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:counter_app/cubits/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterTeamAState) {
        } else {}
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              "Points Counter",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                        style: const TextStyle(
                          fontSize: 130,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: 'A', NumberOfButton: 1);
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: "A", NumberOfButton: 2);
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: 'A', NumberOfButton: 3);
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 340,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                        style: const TextStyle(
                          fontSize: 130,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: 'B', NumberOfButton: 1);
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: 'B', NumberOfButton: 2);
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncreamentTeam(team: 'B', NumberOfButton: 3);
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).IncreamentTeam(
                      team: 'A',
                      NumberOfButton: BlocProvider.of<CounterCubit>(context)
                          .teamApoints = 0);
                  BlocProvider.of<CounterCubit>(context).IncreamentTeam(
                      team: 'B',
                      NumberOfButton: BlocProvider.of<CounterCubit>(context)
                          .teamBpoints = 0);
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
