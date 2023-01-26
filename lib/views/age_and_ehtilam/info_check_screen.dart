import 'package:flutter/material.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/checking.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/namaz_start_screen.dart';

import '../../widgets/wbutton_widget.dart';

class InfoChkScreen extends StatelessWidget {
  const InfoChkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size * 0.06,
        child: const WAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Tasdiqlash',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Ma’lumotlaringiz to’g’riligini tekshiring',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 16),
              ),
              SizedBox(height: 150),
              Row(
                children: [
                  Text('Tugilgan kuningiz:'),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    '14-sentyabr, 1995',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                children: [
                  Text('Ehtilom/ hayz vaqti:'),
                  SizedBox(
                    width: 115,
                  ),
                  Text(
                    '22-aprel, 2009',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              Divider(
                height: 30,
              ),
              Row(
                children: [
                  Text('Namozni boshladingiz:'),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    '31-sentyabr, 2014',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const Spacer(),
              WButton(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => CheckingList()));
                },
                title: "Tasdiqlash",
                isActiv: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
