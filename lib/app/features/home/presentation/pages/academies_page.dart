import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../academy/domain/enitites/params/acedemy_params.dart';
import '../../../academy/presentation/bloc/academy_bloc.dart';
import '../components/academies_components/academies_component.dart';
import '../components/academies_components/membership_component.dart';
import '../components/academies_components/suggested_academies_component.dart';
import '../../../profile/presentation/components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/academies_components/academies_categories_component.dart';
import '../../../../controllers/fileds_bloc.dart';
import '../../../../widgets/text_fields/search_textfield.dart';

class AcademiesPage extends StatefulWidget {
  AcademiesPage({super.key});

  @override
  State<AcademiesPage> createState() => _AcademiesPageState();
}

class _AcademiesPageState extends State<AcademiesPage> {
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<AcademyBloc>().add(AcademyEvent.getSuggestedAcademies(
        params: SuggestedAcademyParams(pageSize: 1, pageNumber: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBarComponent(
        isProfile: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 0.04.sw, vertical: 10.w),
              child: Column(
                children: [
                  SearchField(
                    hintText: '...ابحث عن لاعب',
                    controller: search,
                    keyboardType: TextInputType.emailAddress,
                    textStream: academiesSearchStream.name,
                    onChanged: academiesSearchStream.changeName,
                  ),
                  SizedBox(height: 10.w),
                  const MemberShipComponent(),
                ],
              ),
            ),
            AcademeiesCategoriesComponent(),
            SizedBox(height: 26.h),
            const SuggestedAcademiesComponent(),
            SizedBox(height: 12.h),
            const AcademiesComponent(),
          ],
        ),
      ),
    );
  }
}
