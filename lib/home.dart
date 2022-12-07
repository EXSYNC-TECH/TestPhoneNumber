import 'package:first_project/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/button_count.dart';

class HomePage extends StatelessWidget {
  CounterCubit cCubit = CounterCubit();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('NGENTOD'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterCubit, int>(
            builder: (context, state) {
              return Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.cyanAccent),
                child: Text(
                  '$state',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
              );
            },
            listener: (context, state) {},
            bloc: cCubit,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCount(
                kColor: Colors.lightBlue,
                icon: Icons.remove,
                onTap: () {
                  cCubit.decrement();
                },
              ),
              ButtonCount(
                kColor: Colors.greenAccent,
                icon: Icons.add,
                onTap: () {
                  cCubit.increment();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
