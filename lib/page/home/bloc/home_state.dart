import 'package:district_app/common/entities/district.dart';
import 'package:district_app/common/entities/province.dart';

class HomeState {
  HomeState(
      {this.index = 0,
        this.districtItem = const <District>[],
        this.provinceItem=const <Province>[],
        this.searchDistrictItem = const <District>[],
      this.searchProvinceItem = const <Province>[],
      this.nameDistrict = "",
      this.nameProvince = "",
      this.isChecked = false});
  final int index;
  final String nameProvince;
  final String nameDistrict;
  final List<District> districtItem;
  final List<Province> provinceItem;
  final List<District> searchDistrictItem;
  final List<Province> searchProvinceItem;
  final bool isChecked;

  HomeState copyWith({
    int? index,
    List<District>? districtItem,
    List<Province>? provinceItem,
    List<District>? searchDistrictItem,
    List<Province>? searchProvinceItem,
    String? nameDistrict,
    String? nameProvince,
    bool? isChecked,
  }) {
    return HomeState(
      districtItem: districtItem ?? this.districtItem,
      provinceItem: provinceItem ?? this.provinceItem,
      searchDistrictItem: searchDistrictItem ?? this.searchDistrictItem,
      searchProvinceItem: searchProvinceItem ?? this.searchProvinceItem,
      index: index ?? this.index,
      nameProvince: nameProvince ?? this.nameProvince,
      nameDistrict: nameDistrict ?? this.nameDistrict,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
