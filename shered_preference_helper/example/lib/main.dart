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

        // bool result = await sheredPrefHelper.setString("setString", "value1");
        // bool result = await sheredPrefHelper.setInt("setInt", 101);
        // bool result = await sheredPrefHelper.setDouble("setDouble", 10.1);
        // bool result = await sheredPrefHelper.setBool("setBool", true);
        // bool result = await sheredPrefHelper.setStringList("setStringList", ["value1","value2","value3"]);
        // bool result = await sheredPrefHelper.setIntList("setIntList", [1,2,3,4]);
        // bool result = await sheredPrefHelper.setDoubleList("setDoubleList", [1.1,2.2,3,4]);
        // bool result = await sheredPrefHelper.setBoolList("setBoolList", [true,false,true,false]);
        // bool result = await sheredPrefHelper.setDynamicList("setDynamicList", ["value1",1,2.2,[1,"2",false],true]);
        // bool result = await sheredPrefHelper.setMap("setMap", {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // });

        // bool result = await sheredPrefHelper.set("set1String", "value1");
        // bool result = await sheredPrefHelper.set("set2int", 2);
        // bool result = await sheredPrefHelper.set("set3double", 2.3);
        // bool result = await sheredPrefHelper.set("set4bool", true);
        // bool result = await sheredPrefHelper.set("set5stringList", ["value1","value2","value3"]);
        // bool result = await sheredPrefHelper.set("set6intList", [1,2,3,4]);
        // bool result = await sheredPrefHelper.set("set7doubleList", [1.1,2.2,3,4]);
        // bool result = await sheredPrefHelper.set("set7.1doubleList", [1.1,2.2,3.3,4.4]);
        // bool result = await sheredPrefHelper.set("set8boolList", [true,false,true,false]);
        // bool result = await sheredPrefHelper.set("set9dynamicList", ["value1",1,2.2,[1,2,false],true]);
        // bool result = await sheredPrefHelper.set("set10Map", {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // });

// Multi Set :
        // bool result = await sheredPrefHelper.setMultiString({
        //   "setMultiString1": "value1",
        //   "setMultiString2": "value2",
        //   "setMultiString3": "value3",
        //   "setMultiString4": "value4",
        //   "setMultiString5": "value5",
        // });
        // bool result = await sheredPrefHelper.setMultiInt({
        //   "setMultiInt1": 1,
        //   "setMultiInt2": 2,
        //   "setMultiInt3": 3,
        //   "setMultiInt4": 4,
        //   "setMultiInt5": 5,
        // });
        // bool result = await sheredPrefHelper.setMultiDouble({
        //   "setMultiDouble1": 1.4,
        //   "setMultiDouble2": 2.4,
        //   "setMultiDouble3": 3,
        //   "setMultiDouble4": 4,
        //   "setMultiDouble5": 5.4,
        // });
        // bool result = await sheredPrefHelper.setMultiBool({
        //   "setMultiBool1": true,
        //   "setMultiBool2": false,
        //   "setMultiBool3": true,
        //   "setMultiBool4": false,
        //   "setMultiBool5": true,
        // });
        // bool result = await sheredPrefHelper.setMultiStringList({
        //   "setMultiStringList1": ["value1","value2","value3"],
        //   "setMultiStringList2": ["value1","value2","value3"],
        //   "setMultiStringList3": ["value1","value2","value3"],
        //   "setMultiStringList4": ["value1","value2","value3"],
        //   "setMultiStringList5": ["value1","value2","value3"],
        // });
        // bool result = await sheredPrefHelper.setMultiIntList({
        //   "setMultiIntList1": [1,2,3,4],
        //   "setMultiIntList2": [1,2,3,4],
        //   "setMultiIntList3": [1,2,3,4],
        //   "setMultiIntList4": [1,2,3,4],
        //   "setMultiIntList5": [1,2,3,4],
        // });
        // bool result = await sheredPrefHelper.setMultiDoubleList({
        //   "setMultiDoubleList1": [1.1,2.2,3,4],
        //   "setMultiDoubleList2": [1.1,2.2,3.3,4.4],
        //   "setMultiDoubleList3": [1.1,2.2,3,4],
        //   "setMultiDoubleList4": [1.1,2.2,3.3,4.4],
        //   "setMultiDoubleList5": [1.1,2.2,3,4],
        // });
        // bool result = await sheredPrefHelper.setMultiBoolList({
        //   "setMultiBoolList1": [true,false,true,false],
        //   "setMultiBoolList2": [true,false,true,false],
        //   "setMultiBoolList3": [true,false,true,false],
        //   "setMultiBoolList4": [true,false,true,false],
        //   "setMultiBoolList5": [true,false,true,false],
        // });
        // bool result = await sheredPrefHelper.setMultiDynamicList({
        //   "setMultiDynamicList1": ["value1","value2","value3"],
        //   "setMultiDynamicList2": [1,2,3,4],
        //   "setMultiDynamicList3":  [1.1,2.2,3,4],
        //   "setMultiDynamicList4": [1.1,2.2,3.3,4.4],
        //   "setMultiDynamicList5": [true,false,true,false],
        //   "setMultiDynamicList6": ["value1",1,2.2,[1,2,false,"Gautam",[true,"a",1]],true],
        // });
        // bool result = await sheredPrefHelper.setMultiMap({
        //   "setMultiMap1": {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // },
        //   "setMultiMap2": {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // },
        //   "setMultiMap3": {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // },
        //   "setMultiMap4": {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // },
        // });
        // bool result = await sheredPrefHelper.setMulti({
        //   "setMulti1": "value1",
        //   "setMulti2": 2,
        //   "setMulti3":  2.3,
        //   "setMulti4": ["value1","value2","value3"],
        //   "setMulti5": [1,2,3,4],
        //   "setMulti6": [1.1,2.2,3,4],
        //   "setMulti7": [1.1,2.2,3.3,4.4],
        //   "setMulti8": [true,false,true,false],
        //   "setMulti9": ["value1",1,2.2,[1,2,false],true],
        //   "setMulti10": {
        //   "key1": "value",
        //   "key2": 1,
        //   "key3": 2.3,
        //   "key4": true,
        //   "key5": [1,2,false],
        //   "key6": {"k":"v"},
        //   "key7": ["value1",1,2.2,[1,2,false],true]
        // },
        // });

      // String result = await sheredPrefHelper.getString("set1String");
      // int result = await sheredPrefHelper.getInt("set2int");
      // double result = await sheredPrefHelper.getDouble("setDouble");
      // bool result = await sheredPrefHelper.getBool("setBool");
      // List<String> result = await sheredPrefHelper.getStringList("setStringList");
      // List<int> result = await sheredPrefHelper.getIntList("setIntList");
      // List<double> result = await sheredPrefHelper.getDoubleList("setDoubleList");
      // List<bool> result = await sheredPrefHelper.getBoolList("setBoolList");
      // List<dynamic> result = await sheredPrefHelper.getDynamicList("setMultiDynamicList6");
      // Map<String, dynamic> result = await sheredPrefHelper.getMap("setMap");
      var result = {"s":1,"a":"s"};

        print("result : $result");
        print("runtimeType : ${result.runtimeType is IdentityMap<String, Object>}");
      },
      child: const Text("Button"),
    );
  }
}
