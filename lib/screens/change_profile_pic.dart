import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pallete.dart';
import '../widgets/widgets.dart';

class ChangeProfilePic extends StatefulWidget {
  @override
  State<ChangeProfilePic> createState() => _ChangeProfilePicState();
}

class _ChangeProfilePicState extends State<ChangeProfilePic> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.05,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          // On tap function
                        },
                        child: Container(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              height: size.height * 0.04,
                              width: size.width * 0.20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.grey[400]!.withOpacity(0.4),
                              ),
                              child: Center(
                                child: Text(
                                  "SKIP",
                                  style: kBodyText.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.5,
                    ),
                    Text(
                      "Upload Profile Pic",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(
                      height: size.width * 0.1,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Center(
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: CircleAvatar(
                                  radius: size.width * 0.24,
                                  backgroundColor:
                                      Colors.grey[400]!.withOpacity(
                                    0.4,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: kWhite,
                                    size: size.width * 0.10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: size.height * 0.15,
                            left: size.width * 0.625,
                            child: Container(
                              height: size.width * 0.1,
                              width: size.width * 0.1,
                              decoration: BoxDecoration(
                                color: kBlue,
                                shape: BoxShape.circle,
                                border: Border.all(color: kWhite, width: 2),
                              ),
                              child: Icon(
                                Icons.arrow_upward,
                                color: kWhite,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.6,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          // On tap Function
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          height: size.height * 0.04,
                          width: size.width * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              "SAVE",
                              style: kBodyText.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
