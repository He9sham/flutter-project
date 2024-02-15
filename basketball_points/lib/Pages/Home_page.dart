import 'package:basketball_points/Cubit/Counter_Cubit.dart';
import 'package:basketball_points/Cubit/Counter_state.dart';
import 'package:basketball_points/widgets/Elevated_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).TeamApoints}',
                      style: TextStyle(fontSize: 170),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(1, 'A');
                          },
                          NameButton: 'Add 1 point'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(2, 'A');
                          },
                          NameButton: 'Add 2 point'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(3, 'A');
                          },
                          NameButton: 'Add 3 point'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child:
                      VerticalDivider(endIndent: 5, indent: 50, thickness: 2),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      '${BlocProvider.of<CounterCubit>(context).TeamBpoints}',
                      style: const TextStyle(fontSize: 170),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(1, 'B');
                          },
                          NameButton: 'Add 1 point'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(2, 'B');
                          },
                          NameButton: 'Add 2 point'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                          onpressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncriment(3, 'B');
                          },
                          NameButton: 'Add 3 point'),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(120),
              child:
                  CustomElevatedButton(onpressed: () {
                    
                  }, NameButton: 'Reset'),
            ),
          ],
        ),
      );
    }, listener: (context, state) {
      if (state is CounterAIncrimentState) {
        teamApoints = BlocProvider.of<CounterCubit>(context).TeamApoints;
      } else {
        teamBpoints = BlocProvider.of<CounterCubit>(context).TeamBpoints;
      }
    });
  }
}
