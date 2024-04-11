import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:tobias/tobias.dart';

class AlipayPage extends StatefulWidget {
  const AlipayPage({super.key});

  @override
  State<AlipayPage> createState() => _AlipayPageState();
}

class _AlipayPageState extends State<AlipayPage> {
  _doAliPay() async {

    var response=await Dio().get("https://agent.itying.com/alipay/");
    // print(response.data);
    // print(response.data is String);
   
    var aliPayResult= await aliPay(response.data);
    print(aliPayResult);  //跳转到订单列表

    

    /*
      Unhandled Exception: MissingPluginException(No implementation found for method pay on channel com.jarvanmo/tobias)
      https://github.com/OpenFlutter/tobias/issues/65
    */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _doAliPay, child: const Text("支付宝支付"))
          ],
        ),
      ),
    );
  }
}
