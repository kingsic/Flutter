import 'package:flutter/material.dart';
import 'package:flutterkit/components/dotted_line.dart';
import 'package:flutterkit/components/get_verification_code.dart';
import 'package:flutterkit/components/rc_radio.dart';
import 'package:flutterkit/components/star_rating.dart';

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("学生"),
        ),
        body: Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              GetVerificationCode(
                height: 30,
                width: 100,
                followingText: "s",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              SizedBox(height: 20),
              StarRating(
                7.7,
              ),
              SizedBox(height: 20),
              RCRadio(
                ["单选框", "RowRadio"],
                radioTextStyle: RadioTextStyle.previous,
                spacing: 20,
              ),
              SizedBox(height: 20),
              DottedLine(
                axis: Axis.horizontal,
                color: Colors.red,
                width: 7,
                count: 12,
              ),
            ],
          ),
        )
    );
  }
}
