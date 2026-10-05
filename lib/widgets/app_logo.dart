import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Simple, self-contained logo mark so the project needs no image assets.
/// Swap the Icon for Image.asset('assets/logo.png') if you add a real logo file.
class AppLogo extends StatelessWidget {
  final double size;
  const AppLogo({super.key, this.size = 64});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.forestDeep, AppColors.forestAccent],
            ),
            borderRadius: BorderRadius.circular(size * 0.28),
            boxShadow: const [
              BoxShadow(color: Color(0x331B4332), blurRadius: 20, offset: Offset(0, 8)),
            ],
          ),
          child: Icon(Icons.local_florist_rounded, color: Colors.white, size: size * 0.52),
        ),
        const SizedBox(height: 14),
        Text('Fulbari', style: brandTextStyle(size: 26)),
        const SizedBox(height: 2),
        const Text(
          'Garden to doorstep',
          style: TextStyle(fontSize: 12, color: AppColors.inkSoft, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
