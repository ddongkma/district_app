class Province {
  String? provinceCode;
  String? provinceName;
  String? flagActive;

  Province({this.provinceCode, this.provinceName, this.flagActive});

  Province.fromJson(Map<String, dynamic> json) {
    provinceCode = json['ProvinceCode'];
    provinceName = json['ProvinceName'];
    flagActive = json['FlagActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProvinceCode'] = provinceCode;
    data['ProvinceName'] = provinceName;
    data['FlagActive'] = flagActive;
    return data;
  }
}