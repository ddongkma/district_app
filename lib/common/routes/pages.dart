


import 'package:district_app/page/home/bloc/home_bloc.dart';
import 'package:district_app/page/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'names.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
          route: PageRoutes.INITIAL,
          page: const HomePage(),
          bloc: BlocProvider(create: (_) => HomeBloc())
      ),
    ];
  }

  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }
//   static MaterialPageRoute GenerateRouteSettings (RouteSettings settings){
//
//
// }
}
class PageEntity{
  String route;
  Widget page;
  dynamic bloc;
  PageEntity({required this.route, required this.page, this.bloc});
}