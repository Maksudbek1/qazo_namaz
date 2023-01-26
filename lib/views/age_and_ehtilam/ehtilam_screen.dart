import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qazo_namaz/core/utils/colors.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/namaz_start_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class EhtilamScreen extends StatelessWidget {
  const EhtilamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 2),
            child: Row(
              children: const [
                Icon(Icons.arrow_back_ios_rounded),
                Text(
                  'Back',
                  style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        leadingWidth: 80,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Birinchi marta ehtilom/hayz paytingizni kiriting',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Musulmon kishiga shu vaqtdan boshlab namoz farz bo’ladi.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 16),
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
                      MaterialPageRoute(builder: (context) => NamazStartScreen()));
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
