class District {
  String? districtCode;
  String? provinceCode;
  String? districtName;
  String? flagActive;

  District(
      {this.districtCode,
        this.provinceCode,
        this.districtName,
        this.flagActive});

  District.fromJson(Map<String, dynamic> json) {
    districtCode = json['DistrictCode'];
    provinceCode = json['ProvinceCode'];
    districtName = json['DistrictName'];
    flagActive = json['FlagActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DistrictCode'] = this.districtCode;
    data['ProvinceCode'] = this.provinceCode;
    data['DistrictName'] = this.districtName;
    data['FlagActive'] = this.flagActive;
    return data;
  }
}