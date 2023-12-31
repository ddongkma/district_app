

import 'dart:convert';


import '../common/entities/district.dart';

String DISTRICT_DATA = '''[
  {
    "DistrictCode": "10101",
    "ProvinceCode": "101",
    "DistrictName": "Quận Ba Đình",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10103",
    "ProvinceCode": "101",
    "DistrictName": "Quận Tây Hồ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10105",
    "ProvinceCode": "101",
    "DistrictName": "Quận Hoàn Kiếm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10106",
    "ProvinceCode": "101",
    "DistrictName": "Quận Long Biên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10107",
    "ProvinceCode": "101",
    "DistrictName": "Quận Hai Bà Trưng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10108",
    "ProvinceCode": "101",
    "DistrictName": "Quận Hoàng Mai",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10109",
    "ProvinceCode": "101",
    "DistrictName": "Quận Đống đa",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10111",
    "ProvinceCode": "101",
    "DistrictName": "Quận Thanh Xuân",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10113",
    "ProvinceCode": "101",
    "DistrictName": "Quận Cầu Giấy",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10115",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Sóc sơn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10117",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Đông Anh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10119",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Gia Lâm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10123",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Thanh Trì",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10125",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Mê Linh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10127",
    "ProvinceCode": "101",
    "DistrictName": "Quận Hà Đông",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10129",
    "ProvinceCode": "101",
    "DistrictName": "Thành phố Sơn Tây",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10131",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Phúc Thọ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10133",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Đan Phượng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10135",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Thạch Thất",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10137",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Hoài Đức",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10139",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Quốc Oai",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10141",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Thanh Oai",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10143",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Thường Tín",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10145",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Mỹ Đức",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10147",
    "ProvinceCode": "101",
    "DistrictName": "Huyện ứng Hoà",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10149",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Phú Xuyên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10151",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Ba Vì",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10153",
    "ProvinceCode": "101",
    "DistrictName": "Huyện Chương Mỹ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10155",
    "ProvinceCode": "101",
    "DistrictName": "Quận Nam Từ Liêm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10157",
    "ProvinceCode": "101",
    "DistrictName": "Quận Bắc Từ Liêm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10301",
    "ProvinceCode": "103",
    "DistrictName": "Quận Hồng Bàng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10303",
    "ProvinceCode": "103",
    "DistrictName": "Quận Ngô Quyền",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10304",
    "ProvinceCode": "103",
    "DistrictName": "Quận Hải An",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10305",
    "ProvinceCode": "103",
    "DistrictName": "Quận Lê Chân",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10307",
    "ProvinceCode": "103",
    "DistrictName": "Quận Kiến An",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10309",
    "ProvinceCode": "103",
    "DistrictName": "Quận Đồ Sơn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10311",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Thuỷ Nguyên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10313",
    "ProvinceCode": "103",
    "DistrictName": "Huyện An Dương",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10315",
    "ProvinceCode": "103",
    "DistrictName": "Huyện An Lão",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10317",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Kiến Thuỵ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10319",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Tiên Lãng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10321",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Vĩnh Bảo",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10323",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Cát Hải",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10325",
    "ProvinceCode": "103",
    "DistrictName": "Huyện Bạch Long Vĩ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10327",
    "ProvinceCode": "103",
    "DistrictName": "Quận Dương Kinh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10701",
    "ProvinceCode": "107",
    "DistrictName": "Thành phố Hải Dương",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10703",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Chí Linh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10705",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Nam Sách",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10707",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Thanh Hà",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10709",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Kinh Môn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10711",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Kim Thành",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10713",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Gia Lộc",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10715",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Tứ Kỳ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10717",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Cẩm Giàng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10719",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Thanh Miện",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10721",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Thanh Miện",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10723",
    "ProvinceCode": "107",
    "DistrictName": "Huyện Ninh Giang",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10901",
    "ProvinceCode": "109",
    "DistrictName": "Thành phố Hưng yên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10903",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Mỹ Hào",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10905",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Khoái Châu",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10907",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Ân Thi",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10909",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Kim Động",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10911",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Phù Cừ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10913",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Tiên Lữ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10915",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Văn Giang",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10917",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Văn Lâm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "10919",
    "ProvinceCode": "109",
    "DistrictName": "Huyện Yên Mỹ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11101",
    "ProvinceCode": "111",
    "DistrictName": "Thành phố Phủ Lý",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11103",
    "ProvinceCode": "111",
    "DistrictName": "Huyện Duy Tiên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11105",
    "ProvinceCode": "111",
    "DistrictName": "Huyện Kim Bảng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11107",
    "ProvinceCode": "111",
    "DistrictName": "Huyện Lý Nhân",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11109",
    "ProvinceCode": "111",
    "DistrictName": "Huyện Thanh Liêm",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11111",
    "ProvinceCode": "111",
    "DistrictName": "Huyện Bình Lục",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11301",
    "ProvinceCode": "113",
    "DistrictName": "Thành phố Nam Đinh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11303",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Vụ Bản",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11305",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Mỹ Lộc",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11307",
    "ProvinceCode": "113",
    "DistrictName": "Huyện ý Yên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11309",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Nam Trực",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11311",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Trực Ninh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11313",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Xuân Trường",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11315",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Giao Thuỷ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11317",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Nghĩa Hưng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11319",
    "ProvinceCode": "113",
    "DistrictName": "Huyện Hải Hậu",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11501",
    "ProvinceCode": "115",
    "DistrictName": "Thành phố Thái Bình",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11503",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Quỳnh Phụ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11505",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Hưng Hà",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11507",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Thái Thuỵ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11509",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Đông Hưng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11511",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Vũ Thư",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11513",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Kiến Xương",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11515",
    "ProvinceCode": "115",
    "DistrictName": "Huyện Tiền hải",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11701",
    "ProvinceCode": "117",
    "DistrictName": "Thành phố Ninh Bình",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11703",
    "ProvinceCode": "117",
    "DistrictName": "Thị xã Tam Điệp",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11705",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Nho quan",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11707",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Gia Viễn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11709",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Hoa Lư",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11711",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Yên Mô",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11713",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Yên Khánh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "11715",
    "ProvinceCode": "117",
    "DistrictName": "Huyện Kim Sơn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20101",
    "ProvinceCode": "201",
    "DistrictName": "Thị xã Hà Giang",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20103",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Đồng Văn",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20105",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Mèo Vạc",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20107",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Yên Minh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20109",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Quản Bạ",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20111",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Bắc Mê",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20113",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Hoàng Su Phì",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20115",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Vị Xuyên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20117",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Xín Mần",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20118",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Quang Bình",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20119",
    "ProvinceCode": "201",
    "DistrictName": "Huyện Bắc Quang",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20301",
    "ProvinceCode": "203",
    "DistrictName": "Thị xã Cao Bằng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20303",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Bảo Lạc",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20305",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Hà Quảng",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20307",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Thông Nông",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20309",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Trà Lĩnh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20311",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Trùng Khánh",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20313",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Nguyên Bình",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20315",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Hoà An",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20317",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Quảng Uyên",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20318",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Phục Hoà",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20319",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Hạ Lang",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20321",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Thạch An",
    "FlagActive": "1"
  },
  {
    "DistrictCode": "20323",
    "ProvinceCode": "203",
    "DistrictName": "Huyện Bảo Lâm",
    "FlagActive": "1"
  }
]''';
List<dynamic> districtJsonDecode = json.decode(DISTRICT_DATA);
List<District> districts = districtJsonDecode
    .map((districtJson) => District.fromJson(districtJson))
    .toList();

