import 'package:shared_preferences/shared_preferences.dart';

class SheredPrefHelper {
  static Map<String, dynamic> data = {};

  static getPref(Map<String, prefDataType> data) async {
    String temp = "{";
    final prefs = await SharedPreferences.getInstance();

    for (var key in data.keys) {
      if (data[key] == prefDataType.string) {
        String? action = prefs.getString(key);
        temp += "'" + key + "':'" + (action ?? "null") + "',";
      } else if (data[key] == prefDataType.integer) {
        int? action = prefs.getInt(key);
        temp += "'" + key + "':" + (action ?? 'null').toString() + ",";
      } else if (data[key] == prefDataType.boolean) {
        bool? action = prefs.getBool(key);
        temp += "'" + key + "':'" + (action ?? "null").toString() + "',";
      } else if (data[key] == prefDataType.listOfStrings) {
        List<String>? action = prefs.getStringList(key);
        temp += "'" + key + "':'" + (action ?? "[]").toString() + "',";
      } else if (data[key] == prefDataType.double) {
        double? action = prefs.getDouble(key);
        temp += "'" + key + "':'" + (action ?? "null").toString() + "',";
      }
    }
    temp += "}";

    print(temp);
  }

  static setPref(Map<String, prefDataType> data){
    
  }
}

enum prefDataType {
  integer,
  boolean,
  double,
  string,
  listOfStrings,
}
