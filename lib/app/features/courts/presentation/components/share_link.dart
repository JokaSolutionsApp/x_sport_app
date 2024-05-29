import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_constance.dart';
import 'package:x_sport/core/utils/assets_managers/assets.gen.dart';

class ShareLinkWidget extends StatelessWidget {
  const ShareLinkWidget({super.key});

  void copyToClipboard(
    BuildContext context,
  ) {
    Clipboard.setData(const ClipboardData(
        text: 'support.trustpilot.com/hc/en-us/articles/522'));

    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 50.h,
        left: 100.w,
        right: 100.w,
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                'Copied to clipboard',
                style: TextStyle(
                  color: XColors.white,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(
      const Duration(seconds: 2),
      () {
        overlayEntry.remove();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: XColors.grey7,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'شارك عبر',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 4.w),
              AssetsManager.icons.whatsapp.image(
                height: 16.w,
                width: 16.w,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsetsDirectional.only(
              end: 4.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'support.trustpilot.com/hc/en-us/articles/522',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => copyToClipboard(
                      context,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: XColors.grey8,
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 5.h,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'copylink',
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.copy,
                              size: 12.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
