import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qazo_namaz/core/utils/colors.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/info_check_screen.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class NamazStartScreen extends StatelessWidget {
  const NamazStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size *0.06,
        child: const WAppBar(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Namozni boshlagan vaqtingiz',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Shunga qarab qazo namozlaringiz hisoblanadi',
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
                      MaterialPageRoute(builder: (context) => InfoChkScreen()));
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

class WAppBar extends StatelessWidget {
  const WAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
