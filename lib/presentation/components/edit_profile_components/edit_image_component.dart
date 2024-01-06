import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:x_sport/core/constance/app_constance.dart';

class EditImageComponent extends StatelessWidget {
  final void Function(List<int>, String) getImage;

  EditImageComponent({super.key, required this.getImage});
  final ValueNotifier<XFile?> _pickedImageNotifier =
      ValueNotifier<XFile?>(null);
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      List<String> imageParts = pickedFile.name.split('.');

      if (imageParts.length > 1) {
        _pickedImageNotifier.value = XFile(pickedFile.path);
        List<int> imageBytes = await pickedFile.readAsBytes();
        final String imageType = imageParts.last.toLowerCase();
        getImage(imageBytes, imageType);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: _pickedImageNotifier,
          builder: (context, pickedImage, child) {
            return Container(
              margin: EdgeInsets.only(bottom: 4.h),
              alignment: Alignment.center,
              height: 94.w,
              width: 94.w,
              decoration: BoxDecoration(
                  color: XColors.Background_Color1, shape: BoxShape.circle),
              child: pickedImage == null
                  ? Text(
                      'BA',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tajawal(
                        height: 0,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 35.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  : ClipOval(
                      child: Image.file(
                        File(pickedImage.path),
                        width: 150.w,
                        height: 150.w,
                        fit: BoxFit.cover,
                      ),
                    ),
            );
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(50.w, 30.h),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: Alignment.centerLeft),
          onPressed: () {
            _pickImage();
          },
          child: Text(
            'تغيير الصورة الشخصية',
            style: TextStyle(
              color: const Color(0xFF2E5DD7),
              fontSize: 16.sp,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
