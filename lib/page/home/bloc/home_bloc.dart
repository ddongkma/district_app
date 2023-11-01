
import 'dart:async';

import 'package:bloc/bloc.dart';

import 'home_event.dart';
import 'home_state.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super( HomeState()) {
    on<HomePageDistrictItemEvent>(_omePageDistrictItemEvent);
    on<SearchProvinceEvent>(_searchProvinceEvent);
    on<SearchDistrictEvent>(_searchDistrictEvent);
    on<SearchDistrictItemEvent>(_searchDistrictItemEvent);
  }

  FutureOr<void> _omePageDistrictItemEvent(HomePageDistrictItemEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(districtItem: event.districtItem));
  }

  FutureOr<void> _searchProvinceEvent(SearchProvinceEvent event, Emitter<HomeState> emit) {
    print(event.nameProvince);
    emit(state.copyWith(nameProvince: event.nameProvince));
  }

  FutureOr<void> _searchDistrictEvent(SearchDistrictEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(nameDistrict: event.nameDistrict));
  }

  FutureOr<void> _searchDistrictItemEvent(SearchDistrictItemEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(searchDistrictItem: event.searchDistrictItem));
  }
}
