import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:pro_shered_preference/utils/Strings.dart';
import 'package:pro_shered_preference/utils/pref_exception.dart';

part 'helper.dart';

abstract class ProSheredPreference {
  ///Note: Due to limitations in Android's SharedPreferences, values cannot start with any one of the following:
  ///
  /// 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu'
  /// 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy'
  /// 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu'
  factory ProSheredPreference() = _SheredPrefHelper;

  // Single Set :

  /// setString use for store string
  ///
  /// return `true` if value store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setString("key", "value");
  /// print(result);       // true
  /// ```
  Future<bool> setString(String key, String value);

  /// setInt use for store integer
  ///
  /// return `true` if value store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setInt("key", 1);
  /// print(result);       // true
  /// ```
  Future<bool> setInt(String key, int value);

  /// setDouble use for store double
  ///
  /// return `true` if value store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setDouble("key", 1.1);
  /// print(result);       // true
  /// ```
  Future<bool> setDouble(String key, double value);

  /// setBool use for store boolean
  ///
  /// return `true` if value store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setBool("key", true);
  /// print(result);       // true
  /// ```
  Future<bool> setBool(String key, bool value);

  /// setStringList use for store list of string
  ///
  /// return `true` if list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setBool("key", ['value1','value2','value2']);
  /// print(result);       // true
  /// ```
  Future<bool> setStringList(String key, List<String> value);

  /// setIntList use for store list of integer
  ///
  /// return `true` if list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setIntList("key", [1,2,3]);
  /// print(result);       // true
  /// ```
  Future<bool> setIntList(String key, List<int> value);

  /// setDoubleList use for store list of double
  ///
  /// return `true` if list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setDoubleList("key", [1.1,2.2,3.3]);
  /// print(result);       // true
  /// ```
  Future<bool> setDoubleList(String key, List<double> value);

  /// setBoolList use for store list of boolean
  ///
  /// return `true` if list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setBoolList("key", [true, false, true, false]);
  /// print(result);       // true
  /// ```
  Future<bool> setBoolList(String key, List<bool> value);

  /// setDynamicList use for store list of dynamic values
  ///
  /// return `true` if list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setDynamicList("key", ["value1", 1, 2.2, [1, "2", false], true]);
  /// print(result);       // true
  /// ```
  Future<bool> setDynamicList(String key, List<dynamic> value);

  /// setMap use for store Map<String, dynamic> type of data
  ///
  /// return `true` if map store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMap("key", {
  ///           "key1": "value",
  ///           "key2": 1,
  ///           "key3": 2.3,
  ///           "key4": true,
  ///           "key5": [1, 2, false],
  ///           "key6": {"k": "v"},
  ///           "key7": ["value", 1, 2.2, [1, 2, false], true]
  ///         });
  /// print(result);       // true
  /// ```
  Future<bool> setMap(String key, Map<String, dynamic> value);

  /// set use for store any type of data
  ///
  /// return `true` if data store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result1 = await sheredPrefHelper.set("key1", "value");
  /// print(result1);       // true
  ///
  /// bool result2 = await sheredPrefHelper.set("key2", true);
  /// print(result2);       // true
  ///
  /// bool result3 = await sheredPrefHelper.set("key3", {
  ///           "key1": "value",
  ///           "key2": 1,
  ///           "key3": 2.3,
  ///           "key4": true,
  ///           "key5": [1, 2, false],
  ///           "key6": {"k": "v"},
  ///           "key7": ["value", 1, 2.2, [1, 2, false], true]
  ///         });
  /// print(result3);       // true
  /// ```
  Future<bool> set(String key, dynamic value);

  // Multi Set :

  /// setMultiString use for store multiple strings
  ///
  /// return `true` if all the strnigs store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiString({
  ///               "key1": "value1",
  ///               "key2": "value2",
  ///               "key3": "value3"
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiString(Map<String, String> data);

  /// setMultiInt use for store multiple integers
  ///
  /// return `true` if all the integers store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiInt({
  ///               "key1": 1,
  ///               "key2": 2,
  ///               "key3": 3
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiInt(Map<String, int> data);

  /// setMultiDouble use for store multiple doubles
  ///
  /// return `true` if all the doubles store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiDouble({
  ///               "key1": 1.1,
  ///               "key2": 2.2,
  ///               "key3": 3.3
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiDouble(Map<String, double> data);

  /// setMultiBool use for store multiple booleans
  ///
  /// return `true` if all the booleans store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiBool({
  ///               "key1": true,
  ///               "key2": false,
  ///               "key3": true
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiBool(Map<String, bool> data);

  /// setMultiStringList use for store multiple list of strings
  ///
  /// return `true` if all the list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiStringList({
  ///               "key1": ["value1", "value2", "value3"],
  ///               "key2": ["value1", "value2"],
  ///               "key3": ["value1"]
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiStringList(Map<String, List<String>> data);

  /// setMultiIntList use for store multiple list of integers
  ///
  /// return `true` if all the list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiIntList({
  ///               "key1": [1, 2, 3, 4],
  ///               "key2": [1, 2, 3],
  ///               "key3": [1, 2]
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiIntList(Map<String, List<int>> data);

  /// setMultiDoubleList use for store multiple list of doubles
  ///
  /// return `true` if all the list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiDoubleList({
  ///               "key1": [1.1, 2.2, 3, 4],
  ///               "key2": [1, 2.4, 3],
  ///               "key3": [1, 2.2]
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiDoubleList(Map<String, List<double>> data);

  /// setMultiBoolList use for store multiple list of booleans
  ///
  /// return `true` if all the list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiBoolList({
  ///               "key1": [true, false, true, false],
  ///               "key2": [true, false, true],
  ///               "key3": [true, false]
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiBoolList(Map<String, List<bool>> data);

  /// setMultiDynamicList use for store multiple list of dynamic value
  ///
  /// return `true` if all the list store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiDynamicList({
  ///               "key1": ["value1", "value2", "value3"],
  ///               "key3": [1.1, 2.2, 3, 4],
  ///               "key5": [true, false, true, false],
  ///               "key6": ["value", 2.2, [ 1, false, "Gautam", ["a", 1]], true],
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiDynamicList(Map<String, List<dynamic>> data);

  /// setMultiMap use for store multiple `Map<String, List<dynamic>>` type of Map
  ///
  /// return `true` if all the map store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMultiMap({
  ///                        "key1": {
  ///                                 "key1": "value",
  ///                                 "key2": 1,
  ///                                 "key3": 2.3,
  ///                                 "key4": true
  ///                                },
  ///                        "key2": {
  ///                                 "key1": [1, 2, false],
  ///                                 "key2": {"k": "v"},
  ///                                 "key3": ["value", 1, 2.2, [1, false], true]
  ///                                }
  ///                       });
  /// print(result);       // true
  /// ```
  Future<bool> setMultiMap(Map<String, Map<String, dynamic>> data);

  /// setMulti use for store any type value
  ///
  /// return `true` if all the values store successfully else return `false`
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// bool result = await sheredPrefHelper.setMulti({
  ///               "key1": "value1",
  ///               "key2": 2,
  ///               "key3": ["value1", "Gautam", "Sheta"],
  ///               "key4": [1.1, 2.2, 3, 4],
  ///               "key5": {
  ///                         "key1": [1, 2, false],
  ///                         "key2": {"k": "v"},
  ///                         "key3": ["value", 1, 2.2, [1, false], true]
  ///                       }
  ///             });
  /// print(result);       // true
  /// ```
  Future<bool> setMulti(Map<String, dynamic> data);

  // Single Get :

  /// getString use for get string value
  ///
  /// return string according to key, if key is not found then throw `PrefException` exception
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// try {
  ///   String result = await sheredPrefHelper.getString("key");
  /// } on PrefException catch (e) {
  ///   print(e.toString()); 
  /// }
  /// print(result);       // print string according to key
  /// ```
  Future<String> getString(String key);

  /// getInt use for get integer value
  ///
  /// return integer according to key, if key is not found then throw `PrefException` exception
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// try {
  ///   int result = await sheredPrefHelper.getInt("key");
  /// } on PrefException catch (e) {
  ///   print(e.toString()); 
  /// }
  /// print(result);       // print integer according to key
  /// ```
  Future<int> getInt(String key);

  /// getDouble use for get double value
  ///
  /// return double according to key, if key is not found then throw `PrefException` exception
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// try {
  ///   double result = await sheredPrefHelper.getDouble("key");
  /// } on PrefException catch (e) {
  ///   print(e.toString()); 
  /// }
  /// print(result);       // print double according to key
  /// ```
  Future<double> getDouble(String key);

  /// getBool use for get boolean value
  ///
  /// return boolean according to key, if key is not found then throw `PrefException` exception
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// try {
  ///   bool result = await sheredPrefHelper.getBool("key");
  /// } on PrefException catch (e) {
  ///   print(e.toString()); 
  /// }
  /// print(result);       // print boolean according to key
  /// ```
  Future<bool> getBool(String key);

  /// getStringList use for get List of String
  ///
  /// return List of String according to key, if key is not found then throw `PrefException` exception
  ///
  /// Example :
  /// ```dart
  /// ProSheredPreference sheredPrefHelper = ProSheredPreference();
  ///
  /// try {
  ///   List<String> result = await sheredPrefHelper.getStringList("key");
  /// } on PrefException catch (e) {
  ///   print(e.toString()); 
  /// }
  /// print(result);       // print List of String according to key
  /// ```
  Future<List<String>> getStringList(String key);

  Future<List<int>> getIntList(String key);

  Future<List<double>> getDoubleList(String key);

  Future<List<bool>> getBoolList(String key);

  Future<Map<String, dynamic>> getMap(String key);

  Future<List<dynamic>> getDynamicList(String key);

  Future<dynamic> get(String key);

  // Multi Get :

  Future<Map<String, String>> getMultiString(List<String> keys);

  Future<Map<String, int>> getMultiInt(List<String> keys);

  Future<Map<String, double>> getMultiDouble(List<String> keys);

  Future<Map<String, bool>> getMultiBool(List<String> keys);

  Future<Map<String, List<String>>> getMultiStringList(List<String> keys);

  Future<Map<String, List<int>>> getMultiIntList(List<String> keys);

  Future<Map<String, List<double>>> getMultiDoubleList(List<String> keys);

  Future<Map<String, List<bool>>> getMultiBoolList(List<String> keys);

  Future<Map<String, List<dynamic>>> getMultiDynamicList(List<String> keys);

  Future<Map<String, Map<String, dynamic>>> getMultiMap(List<String> keys);

  Future<Map<String, dynamic>> getMulti(List<String> keys);
}

// ProSheredPreference proSheredPreference = ProSheredPreference();
