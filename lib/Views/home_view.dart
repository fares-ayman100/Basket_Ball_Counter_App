import 'dart:ui';

import 'package:basket_ball_counter/cubit/counter_cubit.dart';
import 'package:basket_ball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(
              child: Text(
                "Points Counter",
                style: TextStyle(fontSize: 33, color: Colors.white),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).CounterA}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementA(number: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementA(number: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementA(number: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Container(
                    height: 450,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Color(0xFF898989),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).CounterB}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementB(number: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementB(number: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(120, 45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .incrementB(number: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(160, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
