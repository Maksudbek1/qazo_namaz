import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qazo_namaz/core/utils/data.dart';
import 'package:qazo_namaz/views/auth/sign_up_view.dart';
import 'package:qazo_namaz/widgets/wbutton_widget.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Builder(
            builder: (BuildContext context) => Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.5,
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      Image.asset("assets/namoz.png"),
                      Image.asset("assets/namaz.png"),
                      Image.asset("assets/masjid.png"),
                    ],
                    // children: List.generate(
                    //   AppData.info.length,
                    //   (index) => Image.asset(
                    //     AppData.info[0]['image'],
                    //     fit: BoxFit.cover,
                    //     height: size.height * 0.5,
                    //     width: double.infinity,
                    //   ),
                    // ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(size.height * 0.03),
                  alignment: Alignment.center,
                  child: const TabPageSelector(
                    selectedColor: Colors.green,
                    indicatorSize: 16,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: TabBarView(
                    children: List.generate(
                      AppData.info.length,
                      (index) => Text(
                        AppData.info[index]['title'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.01,
                  ),
                  height: size.height * 0.1,
                  child: TabBarView(
                    children: List.generate(
                      AppData.info.length,
                      (index) => Text(
                        AppData.info[index]['text'],
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: WButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      );
                    },
                    title: "Ro’yxatdan o’tish",
                    isActiv: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
