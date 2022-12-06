import 'package:emergency_app/home/home_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider.value(
        value: HomeModel(),
        child: Consumer<HomeModel>(builder: (context, model, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await model.call110();
                    },
                    child: const Text('警察を呼ぶ')),
                ElevatedButton(
                    onPressed: () async {
                      await model.call119();
                    },
                    child: const Text('救急車を呼ぶ'))
              ],
            ),
          );
        }),
      ),
    );
  }
}
