import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/birt_day_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class AgeEndEhtilomSplash extends StatelessWidget {
  const AgeEndEhtilomSplash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            SvgPicture.asset(
              'assets/questChat.svg',
              height: 140,
              width: 140,
              alignment: Alignment.center,
            ),
            Text(
              'Qazo namozlaringizni aniqlash uchun bizga ba’zi ma’lumotlaringiz kerak bo’ladi ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            WButton(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BirthDayScreen()));
              },
              title: 'Tushunarli',
              isActiv: true,
            )
          ],
        ),
      ),
    );
  }
}
