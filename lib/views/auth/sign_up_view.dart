import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:qazo_namaz/core/utils/colors.dart';
import 'package:qazo_namaz/views/auth/log_in.dart';
import 'package:qazo_namaz/views/auth/otp_view.dart';
import 'package:qazo_namaz/widgets/title_bar_widget.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool ischek = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: AppColors.whiteB,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleBar(
                title: "Ro’yxatdan o’tish",
              ),
              SizedBox(height: size.height * 0.1),
              const Text(
                "Telefon raqam",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              TextField(
                controller: phoneController,
                onChanged: (value) {
                  (phoneController.text);
                },
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Raqamingizni yozing",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: size.height * 0.1),
              const Text(
                "Telefon raqam",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              TextField(
                controller: passwordController,
                onChanged: (value) {
                  (passwordController.text);
                },
                obscureText: ischek,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Yangi parol yozing",
                  prefixIcon: const Icon(Icons.password),
                  suffix: IconButton(
                    onPressed: () {
                      (ischek);
                      setState(() {
                        ischek = !ischek;
                      });
                    },
                    icon: ischek
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.06),
              WButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OTPview(),
                  ));
                },
                title: 'Yuborish',
                isActiv: ischek,
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: size.width * 0.349,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('yoki'),
                  ),
                  Container(
                    width: size.width * 0.349,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SocialContainer(
                    imageName: 'assets/google.png',
                    name: 'Google',
                  ),
                  SocialContainer(
                    imageName: 'assets/facebook.png',
                    name: 'Google',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Akkauntingiz bormi?"),
                  TextButton(
                    style:
                        TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LogIn(),
                      ));
                    },
                    child: const Text("Kirish"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialContainer extends StatelessWidget {
  final String name;
  final String imageName;
  const SocialContainer({
    Key? key,
    required this.name,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      height: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
            imageName,
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 16),
          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
