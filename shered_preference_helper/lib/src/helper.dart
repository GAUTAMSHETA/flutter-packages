import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SheredPrefHelper {
  Map<String, dynamic> data = {};
  SharedPreferences? preferences;
  final String _separator = "~!@#%^&*(GS)";

  static SheredPrefHelper? _sheredPrefHelper;

  SheredPrefHelper._createInstance();

  factory SheredPrefHelper() {
    if (_sheredPrefHelper == null) {
      _sheredPrefHelper = SheredPrefHelper._createInstance();
      _sheredPrefHelper?.init();
    }
    return _sheredPrefHelper!;
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  // Future<Map<String, dynamic>> getPref(Map<String, prefDataType> data) async {
  //   String temp = "{";

  //   if (preferences == null) {
  //     await init();
  //   }
  //   if (preferences != null) {
  //     for (var key in data.keys) {
  //       try {
  //         if (data[key] == prefDataType.string) {
  //           String? action = preferences?.getString(key);
  //           temp += '"' + key + '":"' + (action ?? "null") + '",';
  //         } else if (data[key] == prefDataType.integer) {
  //           int? action = preferences?.getInt(key);
  //           temp += '"' + key + '":"' + (action ?? 'null').toString() + '",';
  //         } else if (data[key] == prefDataType.boolean) {
  //           bool? action = preferences?.getBool(key);
  //           temp += '"' + key + '":"' + (action ?? "null").toString() + '",';
  //         } else if (data[key] == prefDataType.listOfStrings) {
  //           List<String>? action = preferences?.getStringList(key);
  //           temp += '"' + key + '":"' + (action ?? "[]").toString() + '",';
  //         } else if (data[key] == prefDataType.double) {
  //           double? action = preferences?.getDouble(key);
  //           temp += '"' + key + '":"' + (action ?? "null").toString() + '",';
  //         }
  //       } catch (e) {
  //         temp += '"' + key + '":"Error",';
  //       }
  //     }
  //   }
  //   if (temp.length > 2) {
  //     temp = temp.substring(0, temp.length - 1);
  //   }
  //   temp += "}";

  //   return jsonDecode(temp);
  // }

  Future<bool> setMultiString(Map<String, String> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i] ?? "") + _separator + 'string');
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setMultiInteger(Map<String, int> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i]?.toString() ?? "-1") + _separator + 'integer');
        // bool? temp = await preferences?.setInt(i, data[i] ?? -1);
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setMultiDouble(Map<String, double> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i]?.toString() ?? "-1.0") + _separator + 'double');
        // bool? temp = await preferences?.setDouble(i, data[i] ?? -1.0);
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setMultiBoolean(Map<String, bool> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i]?.toString() ?? "false") + _separator + 'boolean');
        // bool? temp = await preferences?.setBool(i, data[i] ?? false);
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setMultiListOfStrings(Map<String, List<String>> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i]?.toString() ?? "[]") + _separator + 'listOfStrings');
        // bool? temp = await preferences?.setStringList(i, data[i] ?? []);
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setMultiDynamic(Map<String, dynamic> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp;
        if (data[i].runtimeType == String) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "") + _separator + 'string');
          // temp = await preferences?.setString(i, data[i]);
        } else if (data[i].runtimeType == int) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "-1") + _separator + 'integer');
          // temp = await preferences?.setInt(i, data[i]);
        } else if (data[i].runtimeType == double) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "-1.0") + _separator + 'double');
          // temp = await preferences?.setDouble(i, data[i]);
        } else if (data[i].runtimeType == bool) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "false") + _separator + 'boolean');
          // temp = await preferences?.setBool(i, data[i]);
        } else if (data[i].runtimeType == List<String>) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "[]") + _separator + 'listOfStrings');
          temp = await preferences?.setStringList(i, data[i]);
        } else if (data[i].runtimeType == Null) {
          temp =
              await preferences?.setString(i, ("null") + _separator + 'string');
          // temp = await preferences?.setString(i, "null");
        } else {
          throw "throw error on $i";
        }
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<bool> setSingleString(String key, String value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp =
          await preferences?.setString(key, value + _separator + 'string');
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> setSingleInteger(String key, int value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp = await preferences?.setString(
          key, value.toString() + _separator + 'integer');
      // bool? temp = await preferences?.setInt(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> setSingleDouble(String key, double value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp = await preferences?.setString(
          key, value.toString() + _separator + 'double');
      // bool? temp = await preferences?.setDouble(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> setSingleboolean(String key, bool value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp = await preferences?.setString(
          key, value.toString() + _separator + 'boolean');
      // bool? temp = await preferences?.setBool(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> setSingleListOfStrings(String key, List<String> value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp = await preferences?.setString(
          key, value.toString() + _separator + 'listOfStrings');
      // bool? temp = await preferences?.setStringList(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> setSingleDynamic(String key, dynamic value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp;
      if (value.runtimeType == String) {
        temp = await preferences?.setString(
            key, value.toString() + _separator + 'string');
        // temp = await preferences?.setString(key, value);
      } else if (value.runtimeType == int) {
         temp = await preferences?.setString(
            key, value.toString() + _separator + 'integer');
        // temp = await preferences?.setInt(key, value);
      } else if (value.runtimeType == double) {
         temp = await preferences?.setString(
            key, value.toString() + _separator + 'double');
        // temp = await preferences?.setDouble(key, value);
      } else if (value.runtimeType == bool) {
         temp = await preferences?.setString(
            key, value.toString() + _separator + 'boolean');
        // temp = await preferences?.setBool(key, value);
      } else if (value.runtimeType == List<String>) {
         temp = await preferences?.setString(
            key, value.toString() + _separator + 'listOfStrings');
        // temp = await preferences?.setStringList(key, value);
      } else if (value.runtimeType == Null) {
         temp = await preferences?.setString(
            key, 'null' + _separator + 'string');
        // temp = await preferences?.setString(key, "null");
      } else {
        throw "throw error on $key";
      }
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<Map<String, dynamic>> getMultiDynamic(List<String> data) async {
    String temp = "{";

    if (preferences == null) {
      await init();
    }

    for (String key in data) {
      dynamic action = getSingleDynamic(key);
      temp += '"' + key + '":"' + (action?.toString() ?? "null") + '",';
    }

    if (temp.length > 2) {
      temp = temp.substring(0, temp.length - 1);
    }
    temp += "}";
    return jsonDecode(temp);
  }

  dynamic getSingleDynamic(String key) {
    String? action = preferences?.getString(key);
    assert(action != null);
    List<String> tempList = action!.split(_separator);
    print(tempList);
    if (tempList.last == 'string') {
      return tempList.first.toString();
    } else if (tempList.last == 'integer') {
      return int.parse(tempList.first);
    } else if (tempList.last == 'double') {
      return double.parse(tempList.first);
    } else if (tempList.last == 'boolean') {
      return tempList.first == 'true';
    } else if (tempList.last == 'listOfStrings') {
      return json.decode(tempList.first);
    } else {
      return 'Error';
    }
  }
}

enum prefDataType {
  integer,
  boolean,
  double,
  string,
  listOfStrings,
}
