import 'package:flutter/material.dart';
import '../../../../../core/constance/app_constance.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        spacing: 8,
        children: [
          FilterChip(
            backgroundColor: XColors.secondary,
            shape: const StadiumBorder(
              side: BorderSide(style: BorderStyle.none),
            ),
            label: const Text('تنس'),
            onSelected: (value) {},
          ),
          FilterChip(
            backgroundColor: XColors.secondary,
            shape: const StadiumBorder(
              side: BorderSide(style: BorderStyle.none),
            ),
            label: const Text('بادل'),
            onSelected: (value) {},
          ),
        ],
      ),
    );
  }
}
