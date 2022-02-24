part of 'pro_sheredPreference.dart';

class _SheredPrefHelper implements ProSheredPreference {
  static _SheredPrefHelper? _sheredPrefHelper;

  _SheredPrefHelper._createInstance();

  factory _SheredPrefHelper() {
    if (_sheredPrefHelper == null) {
      _sheredPrefHelper = _SheredPrefHelper._createInstance();
      _sheredPrefHelper?.init();
    }
    return _sheredPrefHelper!;
  }

  @override
  SharedPreferences? preferences;

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

// Single Set :

  @override
  Future<bool> setString(String key, String value) async {
    return await prefSeter(key, value + strings.separator + strings.string);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.integer);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.double);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.boolean);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.listOfStrings);
  }

  @override
  Future<bool> setIntList(String key, List<int> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.listOfInteger);
  }

  @override
  Future<bool> setDoubleList(String key, List<double> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.listOfDouble);
  }

  @override
  Future<bool> setBoolList(String key, List<bool> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.listOfBoolean);
  }

  @override
  Future<bool> setDynamicList(String key, List<dynamic> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.listOfDynamic);
  }

  @override
  Future<bool> setMap(String key, Map<String, dynamic> value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.map);
  }

  @override
  Future<bool> set(String key, dynamic value) async {
    return await prefSeter(
        key, value.toString() + strings.separator + strings.dynamic);
  }

  // Multi Set :

  @override
  Future<bool> setMultiString(Map<String, String> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i] ?? "") + strings.separator + 'string');
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  @override
  Future<bool> setMultiInt(Map<String, int> data) async {}

  @override
  Future<bool> setMultiDouble(Map<String, double> data) async {}

  @override
  Future<bool> setMultiBool(Map<String, bool> data) async {}

  @override
  Future<bool> setMultiStringList(Map<String, List<String>> data) async {}

  @override
  Future<bool> setMultiIntList(Map<String, List<int>> data) async {}

  @override
  Future<bool> setMultiDoubleList(Map<String, List<double>> data) async {}

  @override
  Future<bool> setMultiBoolList(Map<String, List<bool>> data) async {}

  @override
  Future<bool> setMultiDynamicList(Map<String, List<dynamic>> data) async {}

  @override
  Future<bool> setMultiMap(Map<String, Map<String, dynamic>> data) async {}

  @override
  Future<bool> setMulti(Map<String, dynamic> data) async {}

  // Single Get :

  @override
  String getString(String key) {}

  @override
  int getInt(String key) {}

  @override
  double getDouble(String key) {}

  @override
  bool getBool(String key) {}

  @override
  List<String> getStringList(String key) {}

  @override
  List<int> getIntList(String key) {}

  @override
  List<double> getDoubleList(String key) {}

  @override
  List<bool> getBoolList(String key) {}

  @override
  Map<String, dynamic> getMap(String key) {}

  @override
  List<dynamic> getDynamicList(String key) {}

  @override
  dynamic get(String key) {}

  // Multi Get :

  @override
  Map<String, String> getMultiString(List<String> keys) {}

  @override
  Map<String, int> getMultiInt(List<String> keys) {}

  @override
  Map<String, double> getMultiDouble(List<String> keys) {}

  @override
  Map<String, bool> getMultiBool(List<String> keys) {}

  @override
  Map<String, List<String>> getMultiStringList(List<String> keys) {}

  @override
  Map<String, List<int>> getMultiIntList(List<String> keys) {}

  @override
  Map<String, List<double>> getMultiDoubleList(List<String> keys) {}

  @override
  Map<String, List<bool>> getMultiBoolList(List<String> keys) {}

  @override
  Map<String, List<dynamic>> getMultiDynamicList(List<String> keys) {}

  @override
  Map<String, Map<String, dynamic>> getMultiMap(List<String> keys) {}

  @override
  Map<String, dynamic> getMulti(List<String> keys) {}

  @override
  Future<bool> setMultiString(Map<String, String> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i] ?? "") + strings.separator + 'string');
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
            i, (data[i]?.toString() ?? "-1") + strings.separator + 'integer');
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

  @override
  Future<bool> setMultiDouble(Map<String, double> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i]?.toString() ?? "-1.0") + strings.separator + 'double');
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
        bool? temp = await preferences?.setString(i,
            (data[i]?.toString() ?? "false") + strings.separator + 'boolean');
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
            i,
            (data[i]?.toString() ?? "[]") +
                strings.separator +
                'listOfStrings');
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
              i, (data[i]?.toString() ?? "") + strings.separator + 'string');
          // temp = await preferences?.setString(i, data[i]);
        } else if (data[i].runtimeType == int) {
          temp = await preferences?.setString(
              i, (data[i]?.toString() ?? "-1") + strings.separator + 'integer');
          // temp = await preferences?.setInt(i, data[i]);
        } else if (data[i].runtimeType == double) {
          temp = await preferences?.setString(i,
              (data[i]?.toString() ?? "-1.0") + strings.separator + 'double');
          // temp = await preferences?.setDouble(i, data[i]);
        } else if (data[i].runtimeType == bool) {
          temp = await preferences?.setString(i,
              (data[i]?.toString() ?? "false") + strings.separator + 'boolean');
          // temp = await preferences?.setBool(i, data[i]);
        } else if (data[i].runtimeType == List<String>) {
          temp = await preferences?.setString(
              i,
              (data[i]?.toString() ?? "[]") +
                  strings.separator +
                  'listOfStrings');
          temp = await preferences?.setStringList(i, data[i]);
        } else if (data[i].runtimeType == Null) {
          temp = await preferences?.setString(
              i, ("null") + strings.separator + 'string');
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

  Future<bool> setSingleInteger(String key, int value) async {}

  Future<bool> setSingleDouble(String key, double value) async {}

  Future<bool> setSingleboolean(String key, bool value) async {}

  Future<bool> setSingleListOfStrings(String key, List<String> value) async {}

  Future<bool> setSingleDynamic(String key, dynamic value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp;
      if (value.runtimeType == String) {
        temp = await preferences?.setString(
            key, value.toString() + strings.separator + 'string');
        // temp = await preferences?.setString(key, value);
      } else if (value.runtimeType == int) {
        temp = await preferences?.setString(
            key, value.toString() + strings.separator + 'integer');
        // temp = await preferences?.setInt(key, value);
      } else if (value.runtimeType == double) {
        temp = await preferences?.setString(
            key, value.toString() + strings.separator + 'double');
        // temp = await preferences?.setDouble(key, value);
      } else if (value.runtimeType == bool) {
        temp = await preferences?.setString(
            key, value.toString() + strings.separator + 'boolean');
        // temp = await preferences?.setBool(key, value);
      } else if (value.runtimeType == List<String>) {
        temp = await preferences?.setString(
            key, value.toString() + strings.separator + 'listOfStrings');
        // temp = await preferences?.setStringList(key, value);
      } else if (value.runtimeType == Null) {
        temp = await preferences?.setString(
            key, 'null' + strings.separator + 'string');
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

  @override
  dynamic getSingleDynamic(String key) {
    String? action = preferences?.getString(key);
    assert(action != null);
    List<String> tempList = action!.split(strings.separator);
    tempList.length;
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

  Future<bool> prefSeter(String key, String value) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      bool? temp = await preferences?.setString(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> multiPrefSeter(Map<String, String> data) async {
    if (preferences == null) {
      await init();
    }

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(
            i, (data[i] ?? "") + strings.separator + 'string');
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }
}

enum prefDataType {
  integer,
  boolean,
  double,
  string,
  listOfStrings,
}
