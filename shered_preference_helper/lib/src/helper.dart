part of 'pro_shered_preference.dart';

class _SheredPrefHelper implements ProSheredPreference {
  static _SheredPrefHelper? _sheredPrefHelper;

  _SheredPrefHelper._createInstance();

  factory _SheredPrefHelper() {
    if (_sheredPrefHelper == null) {
      _sheredPrefHelper = _SheredPrefHelper._createInstance();
      _sheredPrefHelper?._init();
    }
    return _sheredPrefHelper!;
  }

  @override
  SharedPreferences? preferences;

  Future<void> _init() async {
    preferences ??= await SharedPreferences.getInstance();
  }

// Single Set :

  @override
  Future<bool> setString(String key, String value) async {
    return await _prefSetter(key, value + strings.separator + strings.string);
  }

  @override
  Future<bool> setInt(String key, int value) async {
    return await _prefSetter(
        key, value.toString() + strings.separator + strings.integer);
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    return await _prefSetter(
        key, value.toString() + strings.separator + strings.double);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    return await _prefSetter(
        key, value.toString() + strings.separator + strings.boolean);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    // final encodedMessage = fusedCodec.encode(value);
    // final decodedMessage = fusedCodec.decode(encodedMessage);
    return await _prefSetter(
        key, listToString(value) + strings.separator + strings.listOfStrings);
  }

  @override
  Future<bool> setIntList(String key, List<int> value) async {
    return await _prefSetter(
        key, listToString(value) + strings.separator + strings.listOfInteger);
  }

  @override
  Future<bool> setDoubleList(String key, List<double> value) async {
    return await _prefSetter(
        key, listToString(value) + strings.separator + strings.listOfDouble);
  }

  @override
  Future<bool> setBoolList(String key, List<bool> value) async {
    return await _prefSetter(
        key, listToString(value) + strings.separator + strings.listOfBoolean);
  }

  @override
  Future<bool> setDynamicList(String key, List<dynamic> value) async {
    return await _prefSetter(
        key, listToString(value) + strings.separator + strings.listOfDynamic);
  }

  @override
  Future<bool> setMap(String key, Map<String, dynamic> value) async {
    return await _prefSetter(
        key, value.toString() + strings.separator + strings.map);
  }

  @override
  Future<bool> set(String key, dynamic value) async {
    print(value.runtimeType);
    if (value.runtimeType == String) {
      return await _prefSetter(
          key, value.toString() + strings.separator + strings.string);
    } else if (value.runtimeType == int) {
      return await _prefSetter(
          key, value.toString() + strings.separator + strings.integer);
    } else if (value.runtimeType == double) {
      return await _prefSetter(
          key, value.toString() + strings.separator + strings.double);
    } else if (value.runtimeType == bool) {
      return await _prefSetter(
          key, value.toString() + strings.separator + strings.boolean);
    } else if (value.runtimeType == List<String>) {
      return await _prefSetter(
          key, listToString(value) + strings.separator + strings.listOfStrings);
    } else if (value.runtimeType == List<int>) {
      return await _prefSetter(
          key, listToString(value) + strings.separator + strings.listOfInteger);
    } else if ((value.runtimeType == List<double>) ||
        value.runtimeType == List<num>) {
      return await _prefSetter(
          key, listToString(value) + strings.separator + strings.listOfDouble);
    } else if (value.runtimeType == List<bool>) {
      return await _prefSetter(
          key, listToString(value) + strings.separator + strings.listOfBoolean);
    } else if ((value.runtimeType == List<dynamic>) ||
        value.runtimeType == List<Object>) {
      return await _prefSetter(
          key, listToString(value) + strings.separator + strings.listOfDynamic);
    } else if ((value.runtimeType == Map<String, dynamic>) ||
        (value.runtimeType.toString() == 'IdentityMap<String, Object>')) {
      return await _prefSetter(
          key, value.toString() + strings.separator + strings.map);
    } else {
      _exception(true, "message");
      return false;
    }
  }

  // Multi Set :

  @override
  Future<bool> setMultiString(Map<String, String> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, value + strings.separator + strings.string)));
  }

  @override
  Future<bool> setMultiInt(Map<String, int> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, value.toString() + strings.separator + strings.integer)));
  }

  @override
  Future<bool> setMultiDouble(Map<String, double> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, value.toString() + strings.separator + strings.double)));
  }

  @override
  Future<bool> setMultiBool(Map<String, bool> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, value.toString() + strings.separator + strings.boolean)));
  }

  @override
  Future<bool> setMultiStringList(Map<String, List<String>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, listToString(value) + strings.separator + strings.listOfStrings)));
  }

  @override
  Future<bool> setMultiIntList(Map<String, List<int>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, listToString(value) + strings.separator + strings.listOfInteger)));
  }

  @override
  Future<bool> setMultiDoubleList(Map<String, List<double>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, listToString(value) + strings.separator + strings.listOfDouble)));
  }

  @override
  Future<bool> setMultiBoolList(Map<String, List<bool>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, listToString(value) + strings.separator + strings.listOfBoolean)));
  }

  @override
  Future<bool> setMultiDynamicList(Map<String, List<dynamic>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, listToString(value) + strings.separator + strings.listOfDynamic)));
  }

  @override
  Future<bool> setMultiMap(Map<String, Map<String, dynamic>> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, value.toString() + strings.separator + strings.map)));
  }

  @override
  Future<bool> setMulti(Map<String, dynamic> data) async {
    Map<String, String> tempData = data.map<String, String>((key, value) {
      if (value.runtimeType == String) {
        return MapEntry(
            key, value.toString() + strings.separator + strings.string);
      } else if (value.runtimeType == int) {
        return MapEntry(
            key, value.toString() + strings.separator + strings.integer);
      } else if (value.runtimeType == double) {
        return MapEntry(
            key, value.toString() + strings.separator + strings.double);
      } else if (value.runtimeType == bool) {
        return MapEntry(
            key, value.toString() + strings.separator + strings.boolean);
      } else if (value.runtimeType == List<String>) {
        return MapEntry(key,
            listToString(value) + strings.separator + strings.listOfStrings);
      } else if (value.runtimeType == List<int>) {
        return MapEntry(key,
            listToString(value) + strings.separator + strings.listOfInteger);
      } else if ((value.runtimeType == List<double>) ||
          value.runtimeType == List<num>) {
        return MapEntry(key,
            listToString(value) + strings.separator + strings.listOfDouble);
      } else if (value.runtimeType == List<bool>) {
        return MapEntry(key,
            listToString(value) + strings.separator + strings.listOfBoolean);
      } else if ((value.runtimeType == List<dynamic>) ||
          value.runtimeType == List<Object>) {
        return MapEntry(key,
            listToString(value) + strings.separator + strings.listOfDynamic);
      } else if ((value.runtimeType == Map<String, dynamic>) ||
          (value.runtimeType.toString() == 'IdentityMap<String, Object>')) {
        return MapEntry(
            key, value.toString() + strings.separator + strings.map);
      } else {
        _exception(true, "message");
        return MapEntry(
            key, value.toString() + strings.separator + strings.dynamic);
      }
    });
    return await _multiPrefSetter(tempData);
  }

  // Single Get :

  @override
  Future<String> getString(String key) async {
    String value = await _prefGetter(key, strings.string);

    if (value != strings.error) {
      return value.toString();
    } else {
      return 'Error';
    }
  }

  @override
  Future<int> getInt(String key) async {
    String value = await _prefGetter(key, strings.integer);
    return int.parse(value);
  }

  @override
  Future<double> getDouble(String key) async {
    String value = await _prefGetter(key, strings.double);
    return double.parse(value);
  }

  @override
  Future<bool> getBool(String key) async {
    String value = await _prefGetter(key, strings.boolean);
    return value == 'true';
  }

  @override
  Future<List<String>> getStringList(String key) async {
    String value = await _prefGetter(key, strings.listOfStrings);
    print(value);
    return (jsonDecode(value) as List<dynamic>)
        .map((e) => e as String)
        .toList();
  }

  @override
  Future<List<int>> getIntList(String key) async {
    String value = await _prefGetter(key, strings.listOfInteger);
    return (jsonDecode(value) as List<dynamic>).map((e) => e as int).toList();
  }

  @override
  Future<List<double>> getDoubleList(String key) async {
    String value = await _prefGetter(key, strings.listOfDouble);
    return (jsonDecode(value) as List<dynamic>)
        .map((e) => e as double)
        .toList();
  }

  @override
  Future<List<bool>> getBoolList(String key) async {
    String value = await _prefGetter(key, strings.listOfBoolean);
    return (jsonDecode(value) as List<dynamic>).map((e) => e as bool).toList();
  }

  @override
  Future<Map<String, dynamic>> getMap(String key) async {
    String value = await _prefGetter(key, strings.map);
    return jsonDecode(value);
  }

  @override
  Future<List> getDynamicList(String key) async {
    String value = await _prefGetter(key, strings.listOfDynamic);
    return jsonDecode(value);
  }

  @override
  Future<dynamic> get(String key) async {
    await _init();

    return _getDynamic(key);
  }

  // Multi Get :

  @override
  Future<Map<String, String>> getMultiString(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.string);
    return jsonDecode(action) as Map<String, String>;
  }

  @override
  Future<Map<String, int>> getMultiInt(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.integer);
    return jsonDecode(action) as Map<String, int>;
  }

  @override
  Future<Map<String, double>> getMultiDouble(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.double);
    return jsonDecode(action) as Map<String, double>;
  }

  @override
  Future<Map<String, bool>> getMultiBool(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.boolean);
    return jsonDecode(action) as Map<String, bool>;
  }

  @override
  Future<Map<String, List<String>>> getMultiStringList(
      List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.listOfStrings);
    return jsonDecode(action) as Map<String, List<String>>;
  }

  @override
  Future<Map<String, List<int>>> getMultiIntList(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.listOfInteger);
    return jsonDecode(action) as Map<String, List<int>>;
  }

  @override
  Future<Map<String, List<double>>> getMultiDoubleList(
      List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.listOfDouble);
    return jsonDecode(action) as Map<String, List<double>>;
  }

  @override
  Future<Map<String, List<bool>>> getMultiBoolList(List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.listOfBoolean);
    return jsonDecode(action) as Map<String, List<bool>>;
  }

  @override
  Future<Map<String, List<dynamic>>> getMultiDynamicList(
      List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.listOfDynamic);
    return jsonDecode(action) as Map<String, List<dynamic>>;
  }

  @override
  Future<Map<String, Map<String, dynamic>>> getMultiMap(
      List<String> keys) async {
    String action = await _multiPrefGetter(keys, strings.map);
    return jsonDecode(action) as Map<String, Map<String, dynamic>>;
  }

  @override
  Future<Map<String, dynamic>> getMulti(List<String> keys) async {
    String temp = "{";

    await _init();

    for (String key in keys) {
      dynamic action = _getDynamic(key);
      temp += '"' + key + '":"' + (action?.toString() ?? "null") + '",';
    }

    if (temp.length > 2) {
      temp = temp.substring(0, temp.length - 1);
    }
    temp += "}";
    return jsonDecode(temp) as Map<String, dynamic>;
  }

  dynamic _getDynamic(String key) {
    String? action = preferences?.getString(key);
    _exception(action == null, "$key not found");

    List<String> tempList = action!.split(strings.separator);

    print(tempList);
    if (tempList.last == strings.string) {
      return tempList.first.toString();
    } else if (tempList.last == strings.integer) {
      return int.parse(tempList.first);
    } else if (tempList.last == strings.double) {
      return double.parse(tempList.first);
    } else if (tempList.last == strings.boolean) {
      return tempList.first == 'true';
    } else if (tempList.last == strings.listOfStrings) {
      return json.decode(tempList.first);
    } else if (tempList.last == strings.listOfInteger) {
      return json.decode(tempList.first);
    } else if (tempList.last == strings.listOfDouble) {
      return json.decode(tempList.first);
    } else if (tempList.last == strings.listOfBoolean) {
      return json.decode(tempList.first);
    } else if (tempList.last == strings.listOfDynamic) {
      return json.decode(tempList.first);
    } else if (tempList.last == strings.map) {
      return json.decode(tempList.first);
    } else {
      return 'Error';
    }
  }

  Future<bool> _prefSetter(String key, String value) async {
    await _init();
    return await __prefSetter(key, value);
  }

  Future<bool> __prefSetter(String key, String value) async {
    if (preferences != null) {
      bool? temp = await preferences?.setString(key, value);
      return temp ?? false;
    } else {
      return false;
    }
  }

  Future<bool> _multiPrefSetter(Map<String, String> data) async {
    await _init();

    if (preferences != null) {
      for (String i in data.keys) {
        bool? temp = await preferences?.setString(i, data[i]!);
        if (temp == null || temp == false) {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  Future<String> _prefGetter(String key, String type) async {
    await _init();
    return __prefGetter(key, type);
  }

  String __prefGetter(String key, String type) {
    String? action = preferences?.getString(key);
    _exception(action == null, "$key not found");

    List<String> tempList = action!.split(strings.separator);
    _exception(
        tempList.last != type, "value of $key is type of ${tempList.last}");

    if (tempList.last == type) {
      return tempList.first;
    } else {
      return strings.error;
    }
  }

  Future<String> _multiPrefGetter(List<String> keys, String type) async {
    String temp = "{";

    await _init();

    for (String key in keys) {
      String action = __prefGetter(key, type);
      temp += '"' + key + '":"' + action + '",';
    }

    if (temp.length > 2) {
      temp = temp.substring(0, temp.length - 1);
    }
    temp += "}";
    return temp;
  }

  void _exception(bool condition, String message) {
    condition ? throw message : null;
  }

  List<String> toList(String input) {
    input
        .replaceAll('[', '')
        .replaceAll(']', '')
        .split(", ")
        .forEach((element) {
      print(element);
    });
    print(input.replaceAll('[', '').replaceAll(']', '').split(','));
    return input.replaceAll('[', '').replaceAll(']', '').split(',');
  }

  String listToString(List list) {
    String temp = "[";
    for (var element in list) {
      if (element.runtimeType == String) {
        temp += '"' + element + '",';
      } else if (element.runtimeType == List<Object>) {
        temp += listToString(element) + ',';
      } else {
        temp += element.toString() + ',';
      }
    }
    if (temp.length > 2) {
      temp = temp.substring(0, temp.length - 1);
    }
    temp += "]";
    return temp;
  }

  String mapToString(Map<String, dynamic> map) {
    String temp = "{";
    map.forEach((key, value) {
      if (value.runtimeType == String) {
        temp += '"' + key + '":"' + value + '",';
      } else if (value.runtimeType == List<Object>) {
        temp += '"' + key + '":' + listToString(value) + ',';
      } else {
        temp += value.toString() + ',';
        temp += '"' + key + '":' + value.toString() + ',';
      }
    });
    if (temp.length > 2) {
      temp = temp.substring(0, temp.length - 1);
    }
    temp += "}";
    return temp;
  }
}
