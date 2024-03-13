import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/local_data.dart';

import '../../../../../../widgets/rectangle_container.dart';

class ActivityPreferncesComponent extends StatefulWidget {
  final int sportId;
  final int index;
  final String initialValue;
  const ActivityPreferncesComponent({
    super.key,
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

  final List<LocalPreference> localPrefernces = LocalData.prefernces;
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
            localPrefernces[0].image.image(width: 30.w),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    localPrefernces[0].title,
                    style: TextStyle(
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
                  //         final id = widget.preference[0].options
                  //             .where(
                  //                 (element) => element.name.contains(newValue))
                  //             .first
                  //             .id;

                  //         // context.read<UserBloc>().add(
                  //         //     UpdateUserPreferenceEvent(
                  //         //         sportId: widget.sportId,
                  //         //         favoriteHand: 0,
                  //         //         favoritePos: 0,
                  //         //         favoriteTime: 0));
                  //       },
                  //       items: widget.preference![0].options
                  //           .map<DropdownMenuItem<String>>(
                  //         (Option value) {
                  //           return DropdownMenuItem<String>(
                  //             value: value.name,
                  //             child: Text(
                  //               value.name,
                  //               style: TextStyle(
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
