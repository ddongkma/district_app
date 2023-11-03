
import 'package:district_app/common/entities/district.dart';
import 'package:district_app/common/entities/province.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class HomePageDistrictItemEvent extends HomeEvent{
  final List<District> districtItem;
  const HomePageDistrictItemEvent(this.districtItem);
}
class HomePageProvinceItemEvent extends HomeEvent{
  final List<Province> provinceItem;
  const HomePageProvinceItemEvent(this.provinceItem);
}
class SearchDistrictItemEvent extends HomeEvent{
  final List<District> searchDistrictItem;
  const SearchDistrictItemEvent(this.searchDistrictItem);
}
class SearchProvinceItemEvent extends HomeEvent{
  final List<Province> searchProvinceItem;
  const SearchProvinceItemEvent(this.searchProvinceItem);
}

class SearchProvinceEvent extends HomeEvent {
  final String nameProvince;
  const SearchProvinceEvent(this.nameProvince);
}
class SearchDistrictEvent extends HomeEvent {
  final String nameDistrict;
  const SearchDistrictEvent(this.nameDistrict);
}
class IsCheckedSearchEvent extends HomeEvent {
  final bool isChecked;
  const IsCheckedSearchEvent(this.isChecked);
}
class IsCheckedActiveEvent extends HomeEvent {
  final bool isCheckedActive;
  const IsCheckedActiveEvent(this.isCheckedActive);
}
