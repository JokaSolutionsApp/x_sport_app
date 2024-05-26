import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class ImagePcikerComponent extends StatelessWidget {
  final void Function(List<int>, String) getImage;
  ImagePcikerComponent({super.key, required this.getImage});

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
    return GestureDetector(
      onTap: _pickImage,
      child: DottedBorder(
        borderType: BorderType.Circle,
        color: XColors.primary,
        strokeWidth: 2.2.w,
        padding: EdgeInsets.zero,
        dashPattern: const [5],
        child: ValueListenableBuilder<XFile?>(
          valueListenable: _pickedImageNotifier,
          builder: (context, pickedImage, child) {
            return Container(
              decoration: const BoxDecoration(
                color: XColors.grey2,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              height: 300.w,
              child: pickedImage == null
                  ? AssetsManager.icons.pickImage.image()
                  : ClipOval(
                      child: Image.file(
                        File(pickedImage.path),
                        width: 300.w,
                        height: 300.w,
                        fit: BoxFit.fill,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
