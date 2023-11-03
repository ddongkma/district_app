import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

Widget cartView(String districtName,String districtCode,String provinceCode,String flagActive) {
  return Card(
    child: Container(
      // padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
       width: 150.w,
       height: 80.h,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 225, 0.1),
          borderRadius: BorderRadius.circular(10.w),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 3,
                spreadRadius: 2,
                offset: const Offset(0, 6))
          ]),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.w),
            ),
            child: Checkbox(value: false, onChanged: ( value) {
              // return !value;
            },),
          ),
          InkWell(
            onTap: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _listContainer(districtName),
                    _listContainer(districtCode)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _listContainer(provinceCode),
                    _listContainer(flagActive),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    ),
  );
}
// Widget _cartView() {
//   return Card(
//     child: Container(
//       // padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
//       width: 150.w,
//       height: 80.h,
//       decoration: BoxDecoration(
//           color: const Color.fromRGBO(255, 255, 225, 0.1),
//           borderRadius: BorderRadius.circular(10.w),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(0.1),
//                 blurRadius: 3,
//                 spreadRadius: 2,
//                 offset: const Offset(0, 6))
//           ]),
//       child: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.w),
//             ),
//             child: Checkbox(value: false, onChanged: ( value) {
//               // return !value;
//             },),
//           ),
//           InkWell(
//             onTap: (){},
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _listContainer(districtName),
//                     _listContainer(districtCode)
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     _listContainer(provinceCode),
//                     _listContainer(flagActive),
//                   ],
//                 ),
//
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

Widget _listContainer(
    String name,
    {double fontSize = 14,
      Color color = AppColors.primaryText,
      FontWeight fontWeight = FontWeight.bold}) {
  return Container(
    margin: EdgeInsets.only(left: 10.w),
    width: 200.w,
    child: Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.clip,
      style: TextStyle(
          fontSize: fontSize.sp, fontWeight: fontWeight, color: color),
    ),
  );
}

Widget buildListView(String districtName,String districtCode,String provinceCode,String flagActive) {
  return SizedBox(
    height: 500.h,
    child: ListView.builder(
      itemCount: 2,
        itemBuilder: (context, index) {
      return Card(
        child: Container(
          // padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          width: 150.w,
          height: 80.h,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 225, 0.1),
              borderRadius: BorderRadius.circular(10.w),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 3,
                    spreadRadius: 2,
                    offset: const Offset(0, 6))
              ]),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: Checkbox(value: false, onChanged: ( value) {
                  // return !value;
                },),
              ),
              InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _listContainer(districtName),
                        _listContainer(districtCode)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _listContainer(provinceCode),
                        _listContainer(flagActive),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }),
  );
}