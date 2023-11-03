import 'dart:convert';

import 'package:district_app/data/district_data.dart';
import 'package:district_app/page/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/entities/district.dart';
import '../../common/entities/province.dart';
import '../../data/district_data.dart';
import '../../data/district_data.dart';
import '../../data/province_data.dart';
import 'bloc/home_bloc.dart';

class HomeController {
  final BuildContext context;
  HomeController({required this.context});


  void init()  {

    if (context.mounted) {

      context.read<HomeBloc>().add(HomePageDistrictItemEvent(districts));
    } else {
      print("User has already logged out.");
    }
  }
  Future<void> filterDistrict(String value) async {
    List<District> result= [];
   if(value != null){
     List<Province> provincess = provinces.where((province) => province.provinceName!.contains(value)).toList();
     var provi = provincess[0].provinceCode.toString();
      if(provincess[0].provinceCode != null){

        result = districts.where((district) => district.districtCode!.contains(provi)).toList();
        print(result);
       context.read<HomeBloc>().add(SearchDistrictItemEvent(result));
     }
    }
    context.read<HomeBloc>().add(SearchDistrictItemEvent(result));
  }
}
