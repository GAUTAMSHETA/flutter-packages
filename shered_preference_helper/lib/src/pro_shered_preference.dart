import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:shered_preference_helper/utils/Strings.dart';

part 'helper.dart';

abstract class ProSheredPreference {

  SharedPreferences? preferences;

  factory ProSheredPreference() = _SheredPrefHelper;



  // Single Set :

  Future<bool> setString(String key, String value);

  Future<bool> setInt(String key, int value);

  Future<bool> setDouble(String key, double value);

  Future<bool> setBool(String key, bool value);

  Future<bool> setStringList(String key, List<String> value);

  Future<bool> setIntList(String key, List<int> value);

  Future<bool> setDoubleList(String key, List<double> value);

  Future<bool> setBoolList(String key, List<bool> value);

  Future<bool> setDynamicList(String key, List<dynamic> value);

  Future<bool> setMap(String key, Map<String, dynamic> value);

  Future<bool> set(String key, dynamic value);



  // Multi Set :

  Future<bool> setMultiString(Map<String, String> data);

  Future<bool> setMultiInt(Map<String, int> data);

  Future<bool> setMultiDouble(Map<String, double> data);

  Future<bool> setMultiBool(Map<String, bool> data);

  Future<bool> setMultiStringList(Map<String, List<String>> data);

  Future<bool> setMultiIntList(Map<String, List<int>> data);

  Future<bool> setMultiDoubleList(Map<String, List<double>> data);

  Future<bool> setMultiBoolList(Map<String, List<bool>> data);

  Future<bool> setMultiDynamicList(Map<String, List<dynamic>> data);

  Future<bool> setMultiMap(Map<String, Map<String, dynamic>> data);

  Future<bool> setMulti(Map<String, dynamic> data);



  // Single Get :

  Future<String> getString(String key);

  Future<int> getInt(String key);

  Future<double> getDouble(String key);

  Future<bool> getBool(String key);

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
