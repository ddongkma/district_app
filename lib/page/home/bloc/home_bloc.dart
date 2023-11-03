
import 'dart:async';

import 'package:bloc/bloc.dart';

import 'home_event.dart';
import 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super( HomeState()) {
    on<HomePageDistrictItemEvent>(_homePageDistrictItemEvent);
    on<HomePageProvinceItemEvent>(_homePageProvinceItemEvent);
    on<SearchProvinceEvent>(_searchProvinceEvent);
    on<SearchDistrictEvent>(_searchDistrictEvent);
    on<SearchDistrictItemEvent>(_searchDistrictItemEvent);
    on<SearchProvinceItemEvent>(_searchProvinceItemEvent);
    on<IsCheckedSearchEvent>(_isCheckedSearchEvent);
    on<IsCheckedActiveEvent>(_isCheckedActiveEvent);

  }

  FutureOr<void> _homePageDistrictItemEvent(HomePageDistrictItemEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(districtItem: event.districtItem));
  }

  FutureOr<void> _searchProvinceEvent(SearchProvinceEvent event, Emitter<HomeState> emit) {
    // print(event.nameProvince);
    emit(state.copyWith(nameProvince: event.nameProvince));
  }

  FutureOr<void> _searchDistrictEvent(SearchDistrictEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(nameDistrict: event.nameDistrict));
  }

  FutureOr<void> _searchDistrictItemEvent(SearchDistrictItemEvent event, Emitter<HomeState> emit) {

    emit(state.copyWith(searchDistrictItem: event.searchDistrictItem));
  }


  FutureOr<void> _searchProvinceItemEvent(SearchProvinceItemEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(searchProvinceItem: event.searchProvinceItem));

  }

  FutureOr<void> _isCheckedSearchEvent(IsCheckedSearchEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(isChecked: event.isChecked));
  }


  FutureOr<void> _homePageProvinceItemEvent(HomePageProvinceItemEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(provinceItem: event.provinceItem));
  }

  FutureOr<void> _isCheckedActiveEvent(IsCheckedActiveEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(isCheckedActive: event.isCheckedActive));
  }
}
