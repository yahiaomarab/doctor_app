import 'package:flutter/material.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(     
      children: [
        SvgPicture.asset('assets/svgs/large_doc_logo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14,0.4],
            )
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child: Text(
            'Best Doctor\nAppointment App',
             textAlign: TextAlign.center,
             style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),

         
        ),
      ],
    );
  }
}
