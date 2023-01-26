import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:qazo_namaz/core/utils/colors.dart';
import 'package:qazo_namaz/views/age_and_ehtilam/splash.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class OTPview extends StatefulWidget {
  const OTPview({super.key});

  @override
  State<OTPview> createState() => _OTPviewState();
}

class _OTPviewState extends State<OTPview> {
  OtpFieldController otpController = OtpFieldController();
  final streamController = StreamController<int>();
  Stream<int> countStream() async* {
    for (var i = 60; i > 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Raqamni tasdiqlash',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Row(
              children: const [
                Icon(Icons.arrow_back_ios_new),
                Spacer(),
                Text('Back')
              ],
            ),
          ),
          leadingWidth: 75,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '+998 ** *** ** 67 raqamiga tasdiqlash kodi yuborildi',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.1),
              OTPTextField(
                controller: otpController,
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 55,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 6,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              const SizedBox(height: 36),
              StreamBuilder(
                stream: countStream(),
                builder: (context, snapshot) {
                  return Text(
                    "Kodni qayta yuborish: ${snapshot.data}",
                  );
                },
              ),
              SizedBox(height: size.height * 0.18),
              WButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AgeEndEhtilomSplash()));
                },
                title: 'Kirish',
                isActiv: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
