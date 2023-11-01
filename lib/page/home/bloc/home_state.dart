
 import 'package:district_app/common/entities/district.dart';

class HomeState {
    HomeState({this.index=0,this.districtItem = const <District>[],this.searchDistrictItem = const <District>[],this.nameDistrict="",this.nameProvince=""});
   final int index;
   final String nameProvince;
   final String nameDistrict;
   final List<District> districtItem ;
    final List<District> searchDistrictItem ;

   HomeState copyWith({int? index, List<District>? districtItem,List<District>? searchDistrictItem, String? nameDistrict, String? nameProvince }){
     return  HomeState(
       districtItem: districtItem??this.districtItem,
       searchDistrictItem: searchDistrictItem??this.searchDistrictItem,
         index:index??this.index,
       nameProvince: nameProvince??this.nameProvince,
       nameDistrict: nameDistrict??this.nameDistrict,
     );
   }
 }




