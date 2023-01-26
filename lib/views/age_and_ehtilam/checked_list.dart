import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/info_check_screen.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/main_page.dart';

import '../../widgets/wbutton_widget.dart';

class CheckedList extends StatelessWidget {
  const CheckedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 120, 25, 0),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/search.svg',
              height: 140,
              width: 140,
              alignment: Alignment.center,
            ),
            SizedBox(height: 50),
            Text(
              'Sizda umumiy hisobda 2 yil, 3 oy, 8 kun qazo namozlari bor ekan.',
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Ularni ado qilishga hoziroq kirishishingiz"),
            Text('mumkin'),
            // const Spacer(),
            SizedBox(
              height: 200,
            ),
            WButton(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainPageList()));
              },
              title: "Ado qilishga kirishish",
              isActiv: true,
            )
          ],
        ),
      ),
    );
  }
}
