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
        key, jsonEncode(value) + strings.separator + strings.listOfStrings);
  }

  @override
  Future<bool> setIntList(String key, List<int> value) async {
    return await _prefSetter(
        key, jsonEncode(value) + strings.separator + strings.listOfInteger);
  }

  @override
  Future<bool> setDoubleList(String key, List<double> value) async {
    return await _prefSetter(
        key, jsonEncode(value) + strings.separator + strings.listOfDouble);
  }

  @override
  Future<bool> setBoolList(String key, List<bool> value) async {
    return await _prefSetter(
        key, jsonEncode(value) + strings.separator + strings.listOfBoolean);
  }

  @override
  Future<bool> setDynamicList(String key, List<dynamic> value) async {
    return await _prefSetter(
        key, jsonEncode(value) + strings.separator + strings.listOfDynamic);
  }

  @override
  Future<bool> setMap(String key, Map<String, dynamic> value) async {
    return await _prefSetter(
        key, jsonEncode(value) + strings.separator + strings.map);
  }

  @override
  Future<bool> set(String key, dynamic value) async {
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
          key, jsonEncode(value) + strings.separator + strings.listOfStrings);
    } else if (value.runtimeType == List<int>) {
      return await _prefSetter(
          key, jsonEncode(value) + strings.separator + strings.listOfInteger);
    } else if ((value.runtimeType == List<double>) ||
        value.runtimeType == List<num>) {
      return await _prefSetter(
          key, jsonEncode(value) + strings.separator + strings.listOfDouble);
    } else if (value.runtimeType == List<bool>) {
      return await _prefSetter(
          key, jsonEncode(value) + strings.separator + strings.listOfBoolean);
    } else if ((value.runtimeType == List<dynamic>) ||
        value.runtimeType == List<Object>) {
      return await _prefSetter(
          key, jsonEncode(value) + strings.separator + strings.listOfDynamic);
    } else if ((value.runtimeType == Map<String, dynamic>) ||
        (value.runtimeType.toString() == 'IdentityMap<String, Object>')) {
      return await _prefSetter(
          key, jsonEncode(value) + strings.separator + strings.map);
    } else {
      _exception(true, key);
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
        key, jsonEncode(value) + strings.separator + strings.listOfStrings)));
  }

  @override
  Future<bool> setMultiIntList(Map<String, List<int>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, jsonEncode(value) + strings.separator + strings.listOfInteger)));
  }

  @override
  Future<bool> setMultiDoubleList(Map<String, List<double>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, jsonEncode(value) + strings.separator + strings.listOfDouble)));
  }

  @override
  Future<bool> setMultiBoolList(Map<String, List<bool>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, jsonEncode(value) + strings.separator + strings.listOfBoolean)));
  }

  @override
  Future<bool> setMultiDynamicList(Map<String, List<dynamic>> data) async {
    return await _multiPrefSetter(data.map((key, value) => MapEntry(
        key, jsonEncode(value) + strings.separator + strings.listOfDynamic)));
  }

  @override
  Future<bool> setMultiMap(Map<String, Map<String, dynamic>> data) async {
    return await _multiPrefSetter(data.map((key, value) =>
        MapEntry(key, jsonEncode(value) + strings.separator + strings.map)));
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
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.listOfStrings);
      } else if (value.runtimeType == List<int>) {
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.listOfInteger);
      } else if ((value.runtimeType == List<double>) ||
          value.runtimeType == List<num>) {
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.listOfDouble);
      } else if (value.runtimeType == List<bool>) {
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.listOfBoolean);
      } else if ((value.runtimeType == List<dynamic>) ||
          value.runtimeType == List<Object>) {
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.listOfDynamic);
      } else if ((value.runtimeType == Map<String, dynamic>) ||
          (value.runtimeType.toString() == 'IdentityMap<String, Object>')) {
        return MapEntry(
            key, jsonEncode(value) + strings.separator + strings.map);
      } else {
        _exception(true, key);
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
    Map<String, String> action = await _multiPrefGetter(keys, strings.string);
    return action;
  }

  @override
  Future<Map<String, int>> getMultiInt(List<String> keys) async {
    Map<String, String> action = await _multiPrefGetter(keys, strings.integer);
    Map<String, int> temp =
        action.map((key, value) => MapEntry(key, int.parse(value)));
    return temp;
  }

  @override
  Future<Map<String, double>> getMultiDouble(List<String> keys) async {
    Map<String, String> action = await _multiPrefGetter(keys, strings.double);
    Map<String, double> temp =
        action.map((key, value) => MapEntry(key, double.parse(value)));
    return temp;
  }

  @override
  Future<Map<String, bool>> getMultiBool(List<String> keys) async {
    Map<String, String> action = await _multiPrefGetter(keys, strings.boolean);
    Map<String, bool> temp = action.map((key, value) =>
        MapEntry(key, value.toString().toLowerCase() == 'true'));
    return temp;
  }

  @override
  Future<Map<String, List<String>>> getMultiStringList(
      List<String> keys) async {
    Map<String, String> action =
        await _multiPrefGetter(keys, strings.listOfStrings);
    Map<String, List<String>> temp = action.map(
        (key, value) => MapEntry(key, List<String>.from(jsonDecode(value))));
    return temp;
  }

  @override
  Future<Map<String, List<int>>> getMultiIntList(List<String> keys) async {
    Map<String, String> action =
        await _multiPrefGetter(keys, strings.listOfInteger);
    Map<String, List<int>> temp = action
        .map((key, value) => MapEntry(key, List<int>.from(jsonDecode(value))));
    return temp;
  }

  @override
  Future<Map<String, List<double>>> getMultiDoubleList(
      List<String> keys) async {
    Map<String, String> action =
        await _multiPrefGetter(keys, strings.listOfDouble);
    Map<String, List<double>> temp = action.map(
        (key, value) => MapEntry(key, List<double>.from(jsonDecode(value))));
    return temp;
  }

  @override
  Future<Map<String, List<bool>>> getMultiBoolList(List<String> keys) async {
    Map<String, String> action =
        await _multiPrefGetter(keys, strings.listOfBoolean);
    Map<String, List<bool>> temp = action
        .map((key, value) => MapEntry(key, List<bool>.from(jsonDecode(value))));
    return temp;
  }

  @override
  Future<Map<String, List<dynamic>>> getMultiDynamicList(
      List<String> keys) async {
    Map<String, String> action =
        await _multiPrefGetter(keys, strings.listOfDynamic);
    Map<String, List<dynamic>> temp =
        action.map((key, value) => MapEntry(key, jsonDecode(value)));
    return temp;
  }

  @override
  Future<Map<String, Map<String, dynamic>>> getMultiMap(
      List<String> keys) async {
    Map<String, String> action = await _multiPrefGetter(keys, strings.map);
    Map<String, Map<String, dynamic>> temp =
        action.map((key, value) => MapEntry(key, jsonDecode(value)));
    return temp;
  }

  @override
  Future<Map<String, dynamic>> getMulti(List<String> keys) async {
    Map<String, dynamic> temp = {};

    await _init();

    for (String key in keys) {
      dynamic action = _getDynamic(key);
      temp.addAll({key: action});
    }

    return temp;
  }

  dynamic _getDynamic(String key) {
    String? action = preferences?.getString(key);
    _exception(action == null, key);

    List<String> tempList = action!.split(strings.separator);

    if (tempList.last == strings.string) {
      return tempList.first.toString();
    } else if (tempList.last == strings.integer) {
      return int.parse(tempList.first);
    } else if (tempList.last == strings.double) {
      return double.parse(tempList.first);
    } else if (tempList.last == strings.boolean) {
      return tempList.first == 'true';
    } else if (tempList.last == strings.listOfStrings) {
      return jsonDecode(tempList.first);
    } else if (tempList.last == strings.listOfInteger) {
      return jsonDecode(tempList.first);
    } else if (tempList.last == strings.listOfDouble) {
      return jsonDecode(tempList.first);
    } else if (tempList.last == strings.listOfBoolean) {
      return jsonDecode(tempList.first);
    } else if (tempList.last == strings.listOfDynamic) {
      return jsonDecode(tempList.first);
    } else if (tempList.last == strings.map) {
      return jsonDecode(tempList.first);
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
    _exception(action == null, key);

    List<String> tempList = action!.split(strings.separator);
    _exception1(tempList.last != type, key,
        "value of $key is type of ${tempList.last}");

    if (tempList.last == type) {
      return tempList.first;
    } else {
      return strings.error;
    }
  }

  Future<Map<String, String>> _multiPrefGetter(
      List<String> keys, String type) async {
    Map<String, String> temp = {};

    await _init();

    for (String key in keys) {
      String action = __prefGetter(key, type);
      temp.addAll({key: action});
    }

    return temp;
  }

  void _exception(bool condition, String key) {
    if (condition) {
      throw PrefException(key, '$key not found');
    }
  }

  void _exception1(bool condition, String key, String message) {
    if (condition) {
      throw PrefException(key, message);
    }
  }

  // List<String> toList(String input) {
  //   return input.replaceAll('[', '').replaceAll(']', '').split(',');
  // }

}
