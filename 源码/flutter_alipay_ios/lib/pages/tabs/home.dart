import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [         
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/alipay");
              },
              child: const Text("支付")),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
