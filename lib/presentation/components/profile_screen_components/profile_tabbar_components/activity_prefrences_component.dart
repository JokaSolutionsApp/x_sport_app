import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_sport/presentation/features/auth/data/dtos/user_dto/user_dto.dart';

import '../../../widgets/rectangle_container.dart';

class ActivityPreferncesComponent extends StatefulWidget {
  final int sportId;
  final List<Preference> preferences;
  final int index;
  final String initialValue;
  ActivityPreferncesComponent({
    super.key,
    required this.preferences,
    required this.index,
    required this.initialValue,
    required this.sportId,
  });

  @override
  State<ActivityPreferncesComponent> createState() =>
      _ActivityPreferncesComponentState();
}

class _ActivityPreferncesComponentState
    extends State<ActivityPreferncesComponent> {
  late ValueNotifier<String?> selectedValue;

  final List<Map<String, dynamic>> prefernces = [
    {
      'title': 'اليد المفضلة',
      'image': 'hand.png',
    },
    {
      'title': 'المركز المفضل',
      'image': 'position.png',
    },
    {
      'title': 'الوقت المفضل ل اللعب',
      'image': 'time.png',
    }
  ];
  @override
  void initState() {
    selectedValue = ValueNotifier<String?>(widget.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 20,
      borderWidth: 1,
      borderColor: 0xFFD9D9D9,
      radius: 12,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w, left: 12.w, top: 4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/activities/${prefernces[widget.index]['image']}',
              width: 30.w,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    // widget.preferences![widget.index].name,
                    prefernces[0]['title'],
                    style: GoogleFonts.tajawal(
                      fontSize: 15.sp,
                      color: Colors.black,
                    ),
                  ),
                  // ValueListenableBuilder<String?>(
                  //   valueListenable: selectedValue,
                  //   builder: (context, value, child) {
                  //     return DropdownButton<String>(
                  //       padding: EdgeInsets.zero,
                  //       underline: SizedBox.shrink(),
                  //       value: value,
                  //       icon: Icon(Icons.arrow_drop_down),
                  //       iconSize: 0,
                  //       elevation: 0,
                  //       onChanged: (String? newValue) {
                  //         selectedValue.value = newValue!;
                  //         final id = widget.preferences[widget.index].options
                  //             .where(
                  //                 (element) => element.name.contains(newValue))
                  //             .first
                  //             .id;

                  //         // context.read<UserBloc>().add(
                  //         //     UpdateUserPreferencesEvent(
                  //         //         sportId: widget.sportId,
                  //         //         favoriteHand: 0,
                  //         //         favoritePos: 0,
                  //         //         favoriteTime: 0));
                  //       },
                  //       items: widget.preferences![widget.index].options
                  //           .map<DropdownMenuItem<String>>(
                  //         (Option value) {
                  //           return DropdownMenuItem<String>(
                  //             value: value.name,
                  //             child: Text(
                  //               value.name,
                  //               style: GoogleFonts.tajawal(
                  //                 fontSize: 15.sp,
                  //                 color: Color(0xFF2492F8),
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ).toList(),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
