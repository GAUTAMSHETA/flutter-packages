import 'package:flutter/material.dart';
import 'package:shered_preference_helper/shered_preference_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SheredPrefHelper sheredPrefHelper = SheredPrefHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getButton(),
    );
  }

  Widget getButton() {
    return ElevatedButton(
      onPressed: () async {
        String? result = sheredPrefHelper.getSingleDynamic('gautam');
        // bool result = await sheredPrefHelper.setMultiDynamic(
        //   {
        //     '1': 1,
        //     'null': 'null',
        //     '1.0': 1.0,
        //     'list': ['gautam','sheta']
        //   }
        // );

        // Map result = await sheredPrefHelper.getPref({
        //   '1': prefDataType.integer,
        //     'null': prefDataType.string,
        //     '1.0': prefDataType.double,
        //     'list': prefDataType.listOfStrings
        // });

        var preferences = await SharedPreferences.getInstance();
        Object? object = preferences.get('1');
        print("result : $object");
      },
      child: const Text("Button"),
    );
  }
}
