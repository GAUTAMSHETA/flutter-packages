`rpo_shered_preference` will help you to store any type of data in the form of key-value pair to your localstorage

## Platform Support

| Android |  iOS  | MacOS |  Web  | Linux | Windows |
| :-----: | :---: | :---: | :---: | :---: | :-----: |
|   ✔️   |   ✔️   |   ✔️   |   ✔️  |   ✔️    |    ✔️     |

## Getting started

Run this command

```dart
flutter pub add pro_shered_preference
```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

```dart
dependencies:
  pro_shered_preference: ^0.0.7
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

#### Import it

Now in your Dart code, you can use:

```dart
import 'package:pro_shered_preference/pro_shered_preference.dart';
```

## Usage

Save single string to device shared preference.

```dart
bool result = await sheredPrefHelper.setString("name", "Gautam Sheta");
```

Here `name` is a key and `Gautam Sheta` is a value. If data stored successfully then it will œreturn `true`

Save multiple string to device shared preference at once.

```dart
bool result = await sheredPrefHelper.setMultiString({
          "name": "Gautam Sheta",
          "email": "email@gmail.com",
          "address": "India",
        });
```

Here `name`,`email` & `address` are a keys and `Gautam Sheta`, `email@gmail.com` & `India` are a values. If all data stored successfully then it will œreturn `true`

Get single string from device shared preference.

```dart
String result = await sheredPrefHelper.getString("name");
```

`name` is a key and it will return value according to key, If value not found then it will throw `KeyNotFoundException` exception and if data type is not string then throw `WrongDatatypeException` exception.

Get multiple string from device shared preference at once.

```dart
Map<String, String> result33 = await sheredPrefHelper.getMultiString([
          "name",
          "email",
          "address",
        ]);
```

`name`,`email` & `address` are a keys and it will return values according to keys, If any of thev value not found then it will throw `KeyNotFoundException` exception and if data type is not string then throw `WrongDatatypeException` exception.

| Methods  | Description |
| ------------- | ------------- |
| setString           | For save the single string value |
| setInt              | For save the single integrate value|
| setDouble           | For save the single double vlaue|
| setBool             | For save the single boolean value|
| setStringList       | For save the single string type of list |
| setIntList          | For save the single integrate type of list |
| setDoubleList       | For save the single double type of list |
| setBoolList         | For save the single boolean type of list |
| setDynamicList      | For save the single dynamic type of list  |
| setMap              | For save the single <String, dynamic> map |
| set                 | For save the any type of single key-value pair |
| setMultiString      | For save the multiple string at once |
| setMultiInt         | For save the multiple integrate at once |
| setMultiDouble      | For save the multiple double at once |
| setMultiBool        | For save the multiple boolean at once |
| setMultiStringList  | For save the multiple string type of list at once |
| setMultiIntList     | For save the multiple integrate type of list at once |
| setMultiDoubleList  | For save the multiple double type of list at once |
| setMultiBoolList    | For save the multiple boolean type of list at once |
| setMultiDynamicList | For save the multiple dynamic type of list at once |
| setMultiMap         | For save the multiple <String, dynamic> map at once |
| setMulti            | For save the multiple dynamic value at once |
| getString           | Get single string from storage |
| getInt              | Get single integrate value from storage |
| getDouble           | Get single double value from storage |
| getBool             | Get single boolean value from storage |
| getStringList       | Get single string type of list from storage |
| getIntList          | Get single integrate type of list from storage |
| getDoubleList       | Get single double type of list from storage |
| getBoolList         | Get single boolean type of list from storage |
| getDynamicList      | Get single dynamic type of list from storage |
| getMap              | Get <String, dynamic> type of map from storage |
| get                 | Get any type of dynamic data from storage |
| getMultiString      | Get multiple string at once from storage |
| getMultiInt         | Get multiple integrate at once from storage |
| getMultiDouble      | Get multiple double at once from storage |
| getMultiBool        | Get multiple boolean at once from storage |
| getMultiStringList  | Get multiple string type of list at once from storage |
| getMultiIntList     | Get multiple integrate type of list at once from storage |
| getMultiDoubleList  | Get multiple double type of list at once from storage |
| getMultiBoolList    | Get multiple boolean type of list at once from storage |
| getMultiDynamicList | Get multiple dynamic type of list at once from storage |
| getMultiMap         | Get multiple <String, dynamic> type of map at once from storage |
| getMulti            | Get any type of multiple value at once from storage |

## Note

once you use `pro_shered_preference` package, Do not use any kind of similar package for get or store prefrence value. othervise it will throw an error

## Developer

<img src="https://lh3.googleusercontent.com/oIEQhW8NTOBtcHc1dz9sPiAapM6VBa3rDTixUPkAHA4VgqE9_syfzXXgh5GpiZjugsrMwnwBCbXsSHK59oOHEdgTUer25Ge1eFtKCJnXxML6R86GWnm1Lh5aqL12b52XadFqTOHepJ6a2JrgQ6sNQww6NOeoWy5A5g1VRqWyt7dizxw4AYLZ2140gN2kNK3mWRDD1uqYO_SFEeuwErqcPYhtQ3Re_1CFWcwI64fnF_jJFXfM1QeVrgp2lYSkrTKqqCHCCjSusn8OSF4u2UvDUA09eWN2e7k1Guu1uuOn5gwFhNyu4sbvNaas94s28p5oxv56AwNGnkPTZYOxduGXMj9VOuSLT7-yxGKDi0bpDfPjixpg1mlW6Vu5A2gqijl0MKSRAdkCtJcraWm-J8TXkWQIcwdKqjYtJW8_HZ8iTKxTKIRc9zFVDCeeAJ4tN8eiL4Iawx_ySMMZQaR1tP_cfzNiGOZmesfRrXu9BC6c7PstnvBmAZX0fGi2p6Wm6Tn-OIZDquuwo3XPulDL4TmV2flLwfCd0dNP-eQ_q8VcxsMI6ugenWdkbz4toHzpndTiNI7Tyfk03VQ1WSegWRc_DDNKUCqX3bp-uhGxcScbRYRPXVsDyVjMVz5Ohxy46jGnfPNapsdFk2i56RI92Q7A2R8WRhGaE4YTqqBggwJLWL5uwtv0zAQ-BSYAGJZGbEj1HjkhwruVuKECz6po8Ph7uze2O8LYOs1obkbxv_iD92UG7wrHpNsi8Kl5LH1W7TvX1az_vzMUVW4c16Cq1yL4tCgymOphvkqtgg=s502-no?authuser=0" alt="Avatar" width="100" height="100">
Gautam Sheta