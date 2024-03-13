import 'package:flutter/material.dart';
import '../../../../core/constance/app_constance.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const IconButtonWidget({
    required this.onTap,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(
            50.0,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(100.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              size: 20.0,
              color: XColors.Button_Color,
            ),
          ),
        ),
      ),
    );
  }
}
