


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

Widget homePageText(String text,
    {Color color = AppColors.primaryText, int fontSize = 16,}) {
  return Container(
    child: Text(text,
        style: TextStyle(
          color: color,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.bold,
        )),
  );
}

Widget reusableText(String text) {
  return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Text(text,
          style: TextStyle(
              color: Colors.grey.withOpacity(0.7),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
              wordSpacing: 3.sp)));
}

Widget searchView(String optionSearch,void Function(String value)? func) {
  return Row(
    children: [
      Container(
        width: 180.w,
        height: 40.h,
        decoration: BoxDecoration(
            color: AppColors.primaryBackground,
            border: Border.all(color: AppColors.primaryFourElementText),
            borderRadius: BorderRadius.circular(20.w)),
        child: Container(
          margin: EdgeInsets.only(left: 10.w),
          width: 240.w,
          height: 40.h,
          child: TextField(
            onChanged: (value)=> func!(value) ,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                // hintText: "Search your couese...",
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)),
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 14.sp,
            ),
            autocorrect: false,
            obscureText: false,
            cursorColor: Colors.black12,
          ),
        ),
      ),

    ],
  );
}

// Widget homeSearch(){
//   return Container(
//     child: Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           homePageText("Tỉnh/TP"),
//           searchView()
//         ],
//       ),
//     ),
//   );
// }
const List<String> list = <String>['CartView', 'TableView'];
Widget homeOption(){
  String dropdownValue = list.first;
  return Container(
    child: Row(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            alignment: Alignment.center,
            width: 70.w,
            height: 40.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.w),
                color: Colors.lightGreenAccent,
                border: Border.all(color: AppColors.primarySecondaryElementText)),
            child: homePageText("Xóa"),
          ),
        ),
  //       Container(
  //         child: DropdownButton<String>(
  //       value: dropdownValue,
  // icon: const Icon(Icons.arrow_downward),
  // elevation: 16,
  // style: const TextStyle(color: Colors.deepPurple),
  // underline: Container(
  // height: 2,
  // color: Colors.deepPurpleAccent,
  // ),
  // onChanged: (String? value) {
  // // This is called when the user selects an item.
  // // setState(() {
  // // dropdownValue = value!;
  // // });
  // },
  // items: list.map<DropdownMenuItem<String>>((String value) {
  // return DropdownMenuItem<String>(
  // value: value,
  // child: Text(value),
  // );
  // }).toList(),,
  //       )
      ],
    ),
  );
}
