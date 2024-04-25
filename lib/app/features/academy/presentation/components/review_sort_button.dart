import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constance/app_constance.dart';

class ReviewSortButton extends StatelessWidget {
  const ReviewSortButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String selectedValue = 'الاحدث';
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: SizedBox(
        width: 100.w,
        child: DropdownButtonFormField<String>(
          isDense: true,
          value: selectedValue,
          style: const TextStyle(
            fontSize: 16,
            color: XColors.black,
            fontWeight: FontWeight.w500,
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: XColors.black,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          onChanged: (newValue) {
            selectedValue = newValue!;
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'الاحدث',
              child: Text('الاحدث'),
            ),
            DropdownMenuItem<String>(
              value: 'الاعلى',
              child: Text('الاعلى'),
            ),
            DropdownMenuItem<String>(
              value: 'الادنى',
              child: Text('الادنى'),
            ),
          ],
        ),
      ),
    );
  }
}
