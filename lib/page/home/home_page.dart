import 'dart:convert';

import 'package:district_app/common/entities/province.dart';
import 'package:district_app/page/home/bloc/home_bloc.dart';
import 'package:district_app/page/home/bloc/home_state.dart';
import 'package:district_app/page/home/home_controller.dart';
import 'package:district_app/page/home/widgets/home_cart_view.dart';
import 'package:district_app/page/home/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../common/entities/district.dart';
import '../../common/values/colors.dart';
import '../../data/district_data.dart';
import 'bloc/home_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late District districts;
  late Province provinces;
  late HomeController _homeController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _homeController = HomeController(context: context);
    _homeController.init();

  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(child: Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          print(state.districtItem.length);
          return Container(
            margin: EdgeInsets.only(top: 15.h, left: 5.w, right: 5.w),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.w,
                          child: homePageText('Tỉnh/TP', fontSize: 18),
                        ),
                        Container(
                          child: searchView("province", (value) {
                            context
                                .read<HomeBloc>()
                                .add(SearchProvinceEvent(value));
                          }),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(state.nameProvince.contains('nội')){
                               String value = "101";
                               _homeController.filterDistrict(value);
                            }

                          },
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.w),
                                color: AppColors.primaryElement,
                                border: Border.all(
                                    color: AppColors.primaryElement)),
                            child: Icon(Icons.search),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.w,
                          child: homePageText('Quận/Huyện', fontSize: 18),
                        ),
                        Container(
                          child: searchView('district', (value) {
                            context
                                .read<HomeBloc>()
                                .add(SearchDistrictEvent(value));
                          }),
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.w),
                                color: AppColors.primaryElement,
                                border: Border.all(
                                    color: AppColors.primaryElement)),
                            child: Icon(Icons.search),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.w,
                          child: homePageText('Trạng thái', fontSize: 18),
                        ),
                        Container(
                            // child: searchView(),
                            )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  homeOption(),

                  SizedBox(
                      height: 500.h,
                      child: ListView.builder(
                          itemCount: state.searchDistrictItem.length,
                          itemBuilder: (context, index) {
                           return  Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: cartView(
                                state.searchDistrictItem
                                    .elementAt(index)
                                    .districtName
                                    .toString(),
                                state.searchDistrictItem
                                    .elementAt(index)
                                    .districtCode
                                    .toString(),
                                state.searchDistrictItem
                                    .elementAt(index)
                                    .provinceCode
                                    .toString(),
                                (state.searchDistrictItem
                                    .elementAt(index)
                                    .flagActive ==
                                    '1'
                                    ? "Active"
                                    : "InActive")
                                    .toString(),
                              ),
                            );
                          }))
                ])),
          );
        },
      ),
    ));
  }
}

ListView _buildListView(
  int i,
) {
  return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: cartView("Hà Nội", "10101", "Quốc Oai", "101"),
        );
      });
}
