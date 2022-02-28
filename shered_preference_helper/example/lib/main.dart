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
  ProSheredPreference sheredPrefHelper = ProSheredPreference();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getButton(),
    );
  }

  Widget getButton() {
    return ElevatedButton(
      onPressed: () async {
        // Single Set :

        bool result = await sheredPrefHelper.setString("setString", "value1");
        result = await sheredPrefHelper.setInt("setInt", 101);
        result = await sheredPrefHelper.setDouble("setDouble", 10.1);
        result = await sheredPrefHelper.setBool("setBool", true);
        result = await sheredPrefHelper
            .setStringList("setStringList", ["value1", "value2", "value3"]);
        result = await sheredPrefHelper.setIntList("setIntList", [1, 2, 3, 4]);
        result = await sheredPrefHelper
            .setDoubleList("setDoubleList", [1.1, 2.2, 3, 4]);
        result = await sheredPrefHelper
            .setBoolList("setBoolList", [true, false, true, false]);
        result = await sheredPrefHelper.setDynamicList("setDynamicList", [
          "value1",
          1,
          2.2,
          [1, "2", false],
          true
        ]);
        result = await sheredPrefHelper.setMap("setMap", {
          "key1": "value",
          "key2": 1,
          "key3": 2.3,
          "key4": true,
          "key5": [1, 2, false],
          "key6": {"k": "v"},
          "key7": [
            "value1",
            1,
            2.2,
            [1, 2, false],
            true
          ]
        });

        result = await sheredPrefHelper.set("set1String", "value1");
        result = await sheredPrefHelper.set("set2int", 2);
        result = await sheredPrefHelper.set("set3double", 2.3);
        result = await sheredPrefHelper.set("set4bool", true);
        result = await sheredPrefHelper
            .set("set5stringList", ["value1", "value2", "value3"]);
        result = await sheredPrefHelper.set("set6intList", [1, 2, 3, 4]);
        result = await sheredPrefHelper.set("set7doubleList", [1.1, 2.2, 3, 4]);
        result = await sheredPrefHelper
            .set("set7.1doubleList", [1.1, 2.2, 3.3, 4.4]);
        result = await sheredPrefHelper
            .set("set8boolList", [true, false, true, false]);
        result = await sheredPrefHelper.set("set9dynamicList", [
          "value1",
          1,
          2.2,
          [1, 2, false],
          true
        ]);
        result = await sheredPrefHelper.set("set10Map", {
          "key1": "value",
          "key2": 1,
          "key3": 2.3,
          "key4": true,
          "key5": [1, 2, false],
          "key6": {"k": "v"},
          "key7": [
            "value1",
            1,
            2.2,
            [1, 2, false],
            true
          ]
        });

// Multi Set :
        result = await sheredPrefHelper.setMultiString({
          "setMultiString1": "value1",
          "setMultiString2": "value2",
          "setMultiString3": "value3",
          "setMultiString4": "value4",
          "setMultiString5": "value5",
        });
        result = await sheredPrefHelper.setMultiInt({
          "setMultiInt1": 1,
          "setMultiInt2": 2,
          "setMultiInt3": 3,
          "setMultiInt4": 4,
          "setMultiInt5": 5,
        });
        result = await sheredPrefHelper.setMultiDouble({
          "setMultiDouble1": 1.4,
          "setMultiDouble2": 2.4,
          "setMultiDouble3": 3,
          "setMultiDouble4": 4,
          "setMultiDouble5": 5.4,
        });
        result = await sheredPrefHelper.setMultiBool({
          "setMultiBool1": true,
          "setMultiBool2": false,
          "setMultiBool3": true,
          "setMultiBool4": false,
          "setMultiBool5": true,
        });
        result = await sheredPrefHelper.setMultiStringList({
          "setMultiStringList1": ["value1", "value2", "value3"],
          "setMultiStringList2": ["value1", "value2", "value3"],
          "setMultiStringList3": ["value1", "value2", "value3"],
          "setMultiStringList4": ["value1", "value2", "value3"],
          "setMultiStringList5": ["value1", "value2", "value3"],
        });
        result = await sheredPrefHelper.setMultiIntList({
          "setMultiIntList1": [1, 2, 3, 4],
          "setMultiIntList2": [1, 2, 3, 4],
          "setMultiIntList3": [1, 2, 3, 4],
          "setMultiIntList4": [1, 2, 3, 4],
          "setMultiIntList5": [1, 2, 3, 4],
        });
        result = await sheredPrefHelper.setMultiDoubleList({
          "setMultiDoubleList1": [1.1, 2.2, 3, 4],
          "setMultiDoubleList2": [1.1, 2.2, 3.3, 4.4],
          "setMultiDoubleList3": [1.1, 2.2, 3, 4],
          "setMultiDoubleList4": [1.1, 2.2, 3.3, 4.4],
          "setMultiDoubleList5": [1.1, 2.2, 3, 4],
        });
        result = await sheredPrefHelper.setMultiBoolList({
          "setMultiBoolList1": [true, false, true, false],
          "setMultiBoolList2": [true, false, true, false],
          "setMultiBoolList3": [true, false, true, false],
          "setMultiBoolList4": [true, false, true, false],
          "setMultiBoolList5": [true, false, true, false],
        });
        result = await sheredPrefHelper.setMultiDynamicList({
          "setMultiDynamicList1": ["value1", "value2", "value3"],
          "setMultiDynamicList2": [1, 2, 3, 4],
          "setMultiDynamicList3": [1.1, 2.2, 3, 4],
          "setMultiDynamicList4": [1.1, 2.2, 3.3, 4.4],
          "setMultiDynamicList5": [true, false, true, false],
          "setMultiDynamicList6": [
            "value1",
            1,
            2.2,
            [
              1,
              2,
              false,
              "Gautam",
              [true, "a", 1]
            ],
            true
          ],
        });
        result = await sheredPrefHelper.setMultiMap({
          "setMultiMap1": {
            "key1": "value",
            "key2": 1,
            "key3": 2.3,
            "key4": true,
            "key5": [1, 2, false],
            "key6": {"k": "v"},
            "key7": [
              "value1",
              1,
              2.2,
              [1, 2, false],
              true
            ]
          },
          "setMultiMap2": {
            "key1": "value",
            "key2": 1,
            "key3": 2.3,
            "key4": true,
            "key5": [1, 2, false],
            "key6": {"k": "v"},
            "key7": [
              "value1",
              1,
              2.2,
              [1, 2, false],
              true
            ]
          },
          "setMultiMap3": {
            "key1": "value",
            "key2": 1,
            "key3": 2.3,
            "key4": true,
            "key5": [1, 2, false],
            "key6": {"k": "v"},
            "key7": [
              "value1",
              1,
              2.2,
              [1, 2, false],
              true
            ]
          },
          "setMultiMap4": {
            "key1": "value",
            "key2": 1,
            "key3": 2.3,
            "key4": true,
            "key5": [1, 2, false],
            "key6": {"k": "v"},
            "key7": [
              "value1",
              1,
              2.2,
              [1, 2, false],
              true
            ]
          },
        });
        result = await sheredPrefHelper.setMulti({
          "setMulti1": "value1",
          "setMulti2": 2,
          "setMulti3": 2.3,
          "setMulti4": ["value1", "value2", "value3"],
          "setMulti5": [1, 2, 3, 4],
          "setMulti6": [1.1, 2.2, 3, 4],
          "setMulti7": [1.1, 2.2, 3.3, 4.4],
          "setMulti8": [true, false, true, false],
          "setMulti9": [
            "value1",
            1,
            2.2,
            [1, 2, false],
            true
          ],
          "setMulti10": {
            "key1": "value",
            "key2": 1,
            "key3": 2.3,
            "key4": true,
            "key5": [1, 2, false],
            "key6": {"k": "v"},
            "key7": [
              "value1",
              1,
              2.2,
              [1, 2, false],
              true
            ]
          },
        });

        String result1 = await sheredPrefHelper.getString("set1String");
        int result2 = await sheredPrefHelper.getInt("set2int");
        double result3 = await sheredPrefHelper.getDouble("setDouble");
        bool result4 = await sheredPrefHelper.getBool("setBool");
        List<String> result5 = await sheredPrefHelper.getStringList("setStringList");
        List<int> result6 = await sheredPrefHelper.getIntList("setIntList");
        List<double> result7 = await sheredPrefHelper.getDoubleList("setDoubleList");
        List<bool> result8 = await sheredPrefHelper.getBoolList("setBoolList");
        List<dynamic> result9 = await sheredPrefHelper.getDynamicList("setDynamicList");
        Map<String, dynamic> result11 = await sheredPrefHelper.getMap("set10Map");
        dynamic result22 = await sheredPrefHelper.get("setMap");

        Map<String, String> result33 = await sheredPrefHelper.getMultiString([
          "setMultiString1",
          "setMultiString2",
          "setMultiString3",
          "setMultiString4",
          "setMultiString5"
        ]);
        Map<String, int> a = await sheredPrefHelper.getMultiInt([
          "setMultiInt1",
          "setMultiInt2",
          "setMultiInt3",
          "setMultiInt4",
          "setMultiInt5"
        ]);
        Map<String, double> b = await sheredPrefHelper.getMultiDouble([
          "setMultiDouble1",
          "setMultiDouble2",
          "setMultiDouble3",
          "setMultiDouble4",
          "setMultiDouble5"
        ]);
        Map<String, bool> c = await sheredPrefHelper.getMultiBool([
          "setMultiBool1",
          "setMultiBool2",
          "setMultiBool3",
          "setMultiBool4",
          "setMultiBool5"
        ]);
        Map<String, List<String>> d = await sheredPrefHelper.getMultiStringList([
          "setMultiStringList1",
          "setMultiStringList2",
          "setMultiStringList3",
          "setMultiStringList4",
          "setMultiStringList5"
        ]);
        Map<String, List<int>> g = await sheredPrefHelper.getMultiIntList([
          "setMultiIntList1",
          "setMultiIntList2",
          "setMultiIntList3",
          "setMultiIntList4",
          "setMultiIntList5"
        ]);
        Map<String, List<double>> f = await sheredPrefHelper.getMultiDoubleList([
          "setMultiDoubleList1",
          "setMultiDoubleList2",
          "setMultiDoubleList3",
          "setMultiDoubleList4",
          "setMultiDoubleList5"
        ]);
        Map<String, List<bool>> h = await sheredPrefHelper.getMultiBoolList([
          "setMultiBoolList1",
          "setMultiBoolList2",
          "setMultiBoolList3",
          "setMultiBoolList4",
          "setMultiBoolList5"
        ]);
        Map<String, List<dynamic>> k = await sheredPrefHelper.getMultiDynamicList([
          "setMultiDynamicList1",
          "setMultiDynamicList2",
          "setMultiDynamicList3",
          "setMultiDynamicList4",
          "setMultiDynamicList5",
          "setMultiDynamicList6"
        ]);
        Map<String, Map<String, dynamic>> q = await sheredPrefHelper.getMultiMap(
            ["setMultiMap1", "setMultiMap2", "setMultiMap3", "setMultiMap4"]);
        Map<String, dynamic> w = await sheredPrefHelper.getMulti([
          "setMultiDynamicList1",
          "setMultiMap1",
          "setMultiBoolList1",
          "setMultiBool1",
          "setMultiString1",
          "setMultiDoubleList1"
        ]);

        print("result : $result");
        print("runtimeType : ${result.runtimeType}");
      },
      child: const Text("Button"),
    );
  }
}
