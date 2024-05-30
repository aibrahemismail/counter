import 'package:first_progect_flutter/provider/conter_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("counter",
        style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 244, 241, 241)),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<counterprovider>(builder: (context, value, child) {
              return Text(
                'counter  ${value.countval.toString()}',
                style: const TextStyle(
                  fontSize: 50.0,
                  color: Colors.black,
                ),
              );
            }),
            const SizedBox(height: 60.0),
          Consumer<counterprovider>(builder: (context, value, child) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    value.add();
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add,color: Colors.white,),
                  ),SizedBox(width: 80),
                  FloatingActionButton(onPressed: (){
                    value.sub();
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.remove,
                  color: Colors.white,), 
                  )
              ],
            );
          })
        ],
      ),

    );
  }
}