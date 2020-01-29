import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(450),//setHeight is the height of the box
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          ),
        ],
      ),

      child: Padding(
        padding: EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(45),
                fontFamily: 'Poppins-Bold',
                letterSpacing: .6,
              )
            ),
//SPACER BETWEEN LOGIN AND MOBILE NUMBER
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              'mobile number',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: ScreenUtil.getInstance().setSp(26),//setSp is the FONT SIZE
              )
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'mobile number',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0 )
              ),
            ),
//SPACER BETWEEN MOBILE NUMBER AND PASSWORD
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(25),
            ),
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Poppins-Medium',
                fontSize: ScreenUtil.getInstance().setSp(26),
              )
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0 )
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Poppins-Medium',
                    fontSize: ScreenUtil.getInstance().setSp(28),
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}