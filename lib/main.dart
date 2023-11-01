import 'package:district_app/page/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/routes/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers:  [...AppPages.allBlocProviders(context)],
      child: const ScreenUtilInit(
        designSize: Size(375,812),
        child: SafeArea(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home:HomePage(),
              // onGenerateRoute: AppPages.GenerateRouteSettings,
            ),

        ),
      ),
    );
  }
}

