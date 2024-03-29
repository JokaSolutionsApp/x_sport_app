import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/app_constance.dart';
import '../../../../../core/utils/assets_managers/assets.gen.dart';
import '../../../../widgets/buttons/submit_button.dart';
import '../components/payment_components/payment_edit_button.dart';
import '../components/payment_components/payment_info_component.dart';
import 'credit_card_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'الدفع ومراجعة معلومات المباراة',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 28.sp,
                ))
          ]),
      body: Center(
        child: SizedBox(
          width: 408.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PaymentEditButton(
                  title: 'اللعبة:', subTitle: 'بادل', onTap: () {}),
              PaymentEditButton(
                  title: 'الملعب:',
                  subTitle: 'اسم الملعب وموقعه',
                  onTap: () {}),
              PaymentEditButton(
                  title: 'التاريخ والوقت:',
                  subTitle: 'التاريخ والوقت',
                  onTap: () {}),
              Padding(
                  padding:
                      EdgeInsets.only(right: 26.w, top: 20.w, bottom: 18.w),
                  child: Text(
                    ':معلومات الدفع',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  )),
              const PaymentInfoComponent(),
              SizedBox(height: 12.w),
              SizedBox(
                width: 350.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'سيتم اعادة المبلغ المدفوع الى حسابك تلقائيا عند مضي\n الوقت المخصص للاعلان دون وجود منافس',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF959595)),
                    ),
                    const Icon(Icons.warning),
                  ],
                ),
              ),
              SizedBox(height: 12.w),
              SizedBox(
                height: 230.h,
                width: 408.w,
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 88.h,
                      crossAxisCount: 3,
                      crossAxisSpacing: 23.0.w,
                      mainAxisSpacing: 15.0.w,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 88.h,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15.sp),
                              border:
                                  Border.all(color: const Color(0xFFD0D0D0))),
                          child: index % 2 != 0
                              ? AssetsManager.images.payment.masterCardLogo
                                  .image()
                              : AssetsManager.images.payment.visaLogo.image());
                    }),
              ),
              Center(
                child: SubmitButton(
                  text: 'متابعة',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreditCardPage()));
                  },
                  fillColor: XColors.primary,
                  radius: 21,
                  minWidth: 239.w,
                  height: 52.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
