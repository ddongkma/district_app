import 'dart:convert';

import 'package:district_app/data/district_data.dart';
import 'package:district_app/page/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/entities/district.dart';
import '../../data/district_data.dart';
import '../../data/district_data.dart';
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
  void filterDistrict(String value){

    List<District> result = districts.where((district) => district.provinceCode == value).toList();

    context.read<HomeBloc>().add(SearchDistrictItemEvent(result));

  }

}
