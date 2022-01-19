import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:userstory/views/help_common_page.dart';
import 'package:userstory/views/login.dart';

// part 'main.freezed.dart';
// part 'main.g.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    return ScreenUtilInit(
        designSize: Size(help.defaultScreenWidth, help.defaultScreenHeight),
        builder: () {
          return GetMaterialApp(
            title: 'User Profile',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.orange,
                // primaryColor: Colors.orange,
                textTheme: TextTheme(
                  headline3: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(30),
                      color: primaryTextColor),
                  subtitle1: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: secondaryTextColor,
                    fontSize: ScreenUtil().setSp(18),
                  ),
                  subtitle2: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: primaryTextColor,
                    fontSize: ScreenUtil().setSp(12),
                  ),
                  headline5: TextStyle(
                      fontSize: ScreenUtil().setSp(14),
                      color: secondaryTextColor),
                  headline4: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(14),
                      color: primaryTextColor),
                  bodyText1: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(16),
                      color: primaryTextColor),
                )),
            home: const LoginPage(),
            // home: MyHomePage(),
          );
        });
  }
}
