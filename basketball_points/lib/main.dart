import 'package:basketball_points/Cubit/Counter_Cubit.dart';
import 'package:basketball_points/Pages/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(basketball_points());
}

class basketball_points extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
