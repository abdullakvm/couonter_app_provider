import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Counter App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => context.read<CounterModel>().increment(),
                    child: const Icon(Icons.add_circle_outline)),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => context.read<CounterModel>().decrement(),
                  child: const Icon(Icons.remove_circle_outline_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
