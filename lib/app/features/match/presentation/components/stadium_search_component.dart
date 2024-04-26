import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/app/widgets/rectangle_container.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class StadiumSearchComponent extends StatefulWidget {
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  const StadiumSearchComponent({
    super.key,
    this.onChanged,
    this.onPressed,
  });

  @override
  State<StadiumSearchComponent> createState() => _StadiumSearchComponentState();
}

class _StadiumSearchComponentState extends State<StadiumSearchComponent> {
  @override
  Widget build(BuildContext context) {
    return RectangleContainer(
      bottomMargin: 10,
      radius: 14,
      child: Padding(
        padding:
            EdgeInsets.only(right: 12.sp, left: 12.w, top: 8.w, bottom: 28.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'اين تريد ان تلعب؟',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 4.w),
            Row(
              children: [
                ElevatedButton(
                  onPressed: widget.onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: XColors.primary,
                    foregroundColor: XColors.white,
                  ),
                  child: const Text('بحث'),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: TextFormField(
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: XColors.Background_Color1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.right,
                    textInputAction: TextInputAction.next,
                    onChanged: widget.onChanged,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(0),
                      fillColor: const Color(0xFF000000).withOpacity(0.1),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.location_on_outlined,
                        size: 30.sp,
                        color: const Color(0xFF828282),
                      ),
                      hintText: 'ملاعب قريبة منك',
                      hintStyle: TextStyle(
                        height: 1.w,
                        color: const Color(0xFF828282),
                        fontSize: 15.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFDDDDDD), width: 1.w),
                        borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color(0xFFDDDDDD), width: 1.w),
                        borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                        borderSide: BorderSide(
                            color: const Color(0xFFDDDDDD), width: 1.w),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
                        borderSide: BorderSide(
                            color: const Color(0xFFDDDDDD), width: 1.w),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
