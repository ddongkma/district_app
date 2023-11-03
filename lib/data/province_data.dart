


import 'dart:convert';

import 'package:district_app/common/entities/province.dart';


String  PROVINCE_DATA = '''[
  {
    "ProvinceCode": "101",
    "ProvinceName": "Thành phố Hà Nội",
    "FlagActive": "1"
  },
  { "ProvinceCode": "103", "ProvinceName": "TP Hải Phòng", "FlagActive": "1" },
  {
    "ProvinceCode": "107",
    "ProvinceName": "Tỉnh Hải Dương",
    "FlagActive": "1"
  },
  { "ProvinceCode": "109", "ProvinceName": "Tỉnh Hưng Yên", "FlagActive": "1" },
  { "ProvinceCode": "111", "ProvinceName": "Tỉnh Hà Nam", "FlagActive": "1" },
  { "ProvinceCode": "113", "ProvinceName": "Tỉnh Nam Định", "FlagActive": "1" },
  {
    "ProvinceCode": "115",
    "ProvinceName": "Tỉnh Thái Bình",
    "FlagActive": "1"
  },
  {
    "ProvinceCode": "117",
    "ProvinceName": "Tỉnh Ninh Bình",
    "FlagActive": "1"
  },
  { "ProvinceCode": "201", "ProvinceName": "Tỉnh Hà Giang", "FlagActive": "1" },
  { "ProvinceCode": "203", "ProvinceName": "Tỉnh Cao Bằng", "FlagActive": "1" }
]''';
List<dynamic> provinceJsonDecode = json.decode(PROVINCE_DATA);
List<Province> provinces = provinceJsonDecode
    .map((provinceJson) => Province.fromJson(provinceJson))
    .toList();


