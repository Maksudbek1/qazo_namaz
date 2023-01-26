import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qazo_namaz/assets/icons/icons.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/ehtilam_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class BirthDayScreen extends StatelessWidget {
  const BirthDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                'assets/calendar.svg',
                height: 80,
                width: 80,
              ),
              Text(
                'Tug’ilgan kuningiz',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (val) {},
                ),
              ),
              const Spacer(),
              WButton(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EhtilamScreen()));
                },
                title: '',
                icons: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                isActiv: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
