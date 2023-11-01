
import 'package:district_app/common/entities/district.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class HomePageDistrictItemEvent extends HomeEvent{
  final List<District> districtItem;
  const HomePageDistrictItemEvent(this.districtItem);
}
class SearchDistrictItemEvent extends HomeEvent{
  final List<District> searchDistrictItem;
  const SearchDistrictItemEvent(this.searchDistrictItem);
}

class SearchProvinceEvent extends HomeEvent {
  final String nameProvince;
  const SearchProvinceEvent(this.nameProvince);
}
class SearchDistrictEvent extends HomeEvent {
  final String nameDistrict;
  const SearchDistrictEvent(this.nameDistrict);
}
