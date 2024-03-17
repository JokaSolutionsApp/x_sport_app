import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constance/local_data.dart';
import '../../../../../../widgets/rectangle_container.dart';
import '../../../../../auth/domain/enitites/sport_preference_entity.dart';
import '../../../../../auth/domain/enitites/sport_preference_value_entity.dart';
import '../../../../../auth/domain/params/edit_preferences_params.dart';
import '../../../../../auth/presentation/bloc/auth_bloc.dart';

class ActivityPreferncesComponent extends StatefulWidget {
  final int initialValueId;
  final SportPreferenceEntity preferenceValues;
  const ActivityPreferncesComponent({
    super.key,
    required this.initialValueId,
    required this.preferenceValues,
  });

  @override
  State<ActivityPreferncesComponent> createState() =>
      _ActivityPreferncesComponentState();
}

class _ActivityPreferncesComponentState
    extends State<ActivityPreferncesComponent> {
  late ValueNotifier<SportPreferenceValueEntity?> selectedValue;

  final List<LocalPreference> localPrefernces = LocalData.prefernces;
  @override
  void initState() {
    print("widgetpreferenceValues ${widget.preferenceValues}");
    final SportPreferenceValueEntity initialValue = widget
        .preferenceValues.sportPreferenceValues
        .where((e) => e.sportPreferenceValueId == widget.initialValueId)
        .first;
    selectedValue = ValueNotifier<SportPreferenceValueEntity?>(initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          widget.preferenceValues.sportPreferenceName,
          style: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xFF2492F8),
          ),
        ),
        RectangleContainer(
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
                  child: ValueListenableBuilder<SportPreferenceValueEntity?>(
                    valueListenable: selectedValue,
                    builder: (context, value, child) {
                      return DropdownButton<SportPreferenceValueEntity?>(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        underline: const SizedBox.shrink(),
                        value: value,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 0,
                        elevation: 0,
                        onChanged: (SportPreferenceValueEntity? newValue) {
                          selectedValue.value = newValue!;
                          context.read<AuthBloc>().add(
                              AuthEvent.editPreferences(
                                  params: PreferenceValue(
                                      preferenceId: widget
                                          .preferenceValues.sportPreferenceId,
                                      valueId:
                                          newValue.sportPreferenceValueId)));
                        },
                        items: widget.preferenceValues.sportPreferenceValues
                            .map<DropdownMenuItem<SportPreferenceValueEntity?>>(
                          (SportPreferenceValueEntity? value) {
                            return DropdownMenuItem<
                                SportPreferenceValueEntity?>(
                              value: value,
                              alignment: Alignment.centerRight,
                              child: Text(
                                value!.sportPreferenceValueName,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: const Color(0xFF2492F8),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
