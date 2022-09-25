import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signup1/screens/create-new-account.dart';
import '../pallete.dart';
import '../widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color(0xff454545),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Column(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'RuBaRu',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Flexible(
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.3,
              //     width: MediaQuery.of(context).size.height * 0.3,
              //     child: Row(
              //       children: [
              //         const Spacer(),
              //         Expanded(
              //           flex: 6,
              //           child:
              //               SvgPicture.asset("assets/images/usernamePic.svg"),
              //         ),
              //         const Spacer(),
              //       ],
              //     ),
              //   ),
              // ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(
                      icon: Icons.person,
                      hint: 'Username',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateNewAccount()));
                      },
                      child: RoundedButton(
                        buttonName: 'PROCEED',
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
