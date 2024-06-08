import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../core/constance/app_constance.dart';

// ignore: must_be_immutable
class EditImageComponent extends StatefulWidget {
  EditImageComponent(
      {super.key,
      required this.getImage,
      required this.userImage,
      required this.name});
  final void Function(List<int>, String, String) getImage;
  final String userImage;
  final String name;

  @override
  State<EditImageComponent> createState() => _EditImageComponentState();
}

class _EditImageComponentState extends State<EditImageComponent> {
  final ValueNotifier<XFile?> _pickedImageNotifier =
      ValueNotifier<XFile?>(null);

  @override
  initState() {
    super.initState();
    getInitials();
  }

  String? initials;
  getInitials() {
    final name = widget.name;
    if (name.isNotEmpty) {
      final nameParts = name.split(' ');
      if (nameParts.length >= 2) {
        final firstInitial = nameParts[0].isNotEmpty ? nameParts[0][0] : '';
        final lastInitial = nameParts[1].isNotEmpty ? nameParts[1][0] : '';
        setState(() {
          initials = '$firstInitial$lastInitial';
        });
      } else if (nameParts.length == 1) {
        final firstInitial = nameParts[0].isNotEmpty ? nameParts[0][0] : '';
        setState(() {
          initials = firstInitial;
        });
      }
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      List<String> imageParts = pickedFile.name.split('.');

      if (imageParts.length > 1) {
        _pickedImageNotifier.value = XFile(pickedFile.path);
        List<int> imageBytes = await pickedFile.readAsBytes();
        print("imageParts.first${imageParts.first}");
        final String imageType = imageParts.last.toLowerCase();
        widget.getImage(imageBytes, imageType, imageParts.first);
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
              decoration: const BoxDecoration(
                  color: XColors.Background_Color1, shape: BoxShape.circle),
              child: widget.userImage.isNotEmpty && pickedImage?.path == null
                  ? ClipOval(
                      child: Image.network(
                        widget.userImage,
                        width: 150.w,
                        height: 150.w,
                        fit: BoxFit.cover,
                      ),
                    )
                  : pickedImage == null
                      ? Text(
                          initials ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 0,
                              color: Colors.white,
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w500),
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
              color: XColors.primary,
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
