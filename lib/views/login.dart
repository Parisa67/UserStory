import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:userstory/model/person_View.dart';
import 'package:userstory/utils/validator.dart';
import 'package:userstory/view_model/person_view_model.dart';
import 'package:userstory/views/help_common_page.dart';
import 'package:userstory/views/home_page.dart';
import 'package:userstory/views/widget/CusomeButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  bool showErrorEmail = false;
  bool showErrorname = false;
  TextEditingController? userNameController = TextEditingController();
  static TextEditingController? emailController = TextEditingController();

  @override
  void initState() {
    Get.put(AppDatabase.user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            circle(
              right: -80,
              top: -50,
            ),
            circle(
              right: -40,
              top: 10,
            ),
            circle(
              right: 30,
              top: -40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: help.getPaddingByDirection(start: 30, end: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: Get.theme.textTheme.headline3,
                        ),
                        SizedBox(
                          height: ScreenUtil().setWidth(10),
                        ),
                        Text(
                          "Please sign in to continue.",
                          style: Get.theme.textTheme.headline5,
                        ),
                        SizedBox(
                          height: ScreenUtil().setWidth(16),
                        ),
                        TextField(
                          controller: emailController,
                          style: Get.theme.textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: ScreenUtil().setSp(16),
                          ),
                          decoration: InputDecoration(
                            errorText: showErrorEmail
                                ? '* Please check format email '
                                : null,
                            prefixIcon: Icon(
                              Icons.email,
                              size: ScreenUtil().setWidth(20),
                            ),
                            label: Text(
                              "email",
                              style: Get.theme.textTheme.subtitle2!,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenUtil().setWidth(15),
                        ),
                        TextField(
                          controller: userNameController,
                          obscureText: obscureText,
                          style: Get.theme.textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: ScreenUtil().setSp(16),
                          ),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                size: ScreenUtil().setWidth(20),
                              ),
                              errorText: showErrorname
                                  ? '* Please correct userName '
                                  : null,
                              label: Text(
                                "Password",
                                style: Get.theme.textTheme.subtitle2,
                              ),
                              suffix: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? Image.asset(
                                          "assets/icon/CloseEye.png",
                                          width: ScreenUtil().setWidth(20),
                                          height: ScreenUtil().setWidth(20),
                                          color: Colors.grey,
                                        )
                                      : Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.grey,
                                          size: ScreenUtil().setWidth(20),
                                        ))),
                        ),
                        SizedBox(
                          height: ScreenUtil().setWidth(30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomeButton(
                              title: "Login",
                              callback: () {
                                login();
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 20,
                left: MediaQuery.of(context).size.width / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: Get.theme.textTheme.headline5,
                    ),
                    Text(
                      "Sign Up",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .apply(color: Get.theme.primaryColor),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  login() {
    RxList<PersonViewModel> users = Get.find();

    try {
      if (emailController!.text == "" || userNameController!.text == "") {
        setState(() {
          showErrorname = true;
          showErrorEmail = true;
          return;
        });
      }
      bool isvalidName = Validator.validatePassword(userNameController!.text);
      bool isvalidEmail = Validator.validateEmail(emailController!.text);

      if (isvalidName) {
        setState(() {
          showErrorname = false;
        });
      } else {
        setState(() {
          showErrorname = true;
        });

        return;
      }
      if (isvalidEmail) {
        setState(() {
          showErrorEmail = false;
        });
      } else {
        setState(() {
          showErrorEmail = true;
          return;
        });
      }
      if (!showErrorEmail && !showErrorname) {
        for (var item in users) {
          if (emailController!.text == item.email &&
              userNameController!.text == item.name) {
            GetStorage userName = GetStorage();
            userName.write("userViewModel", item);
            // Get.closeAllSnackbars();
            Get.closeCurrentSnackbar();
            Get.off(const MyHomePage());
            return;
          } else {
            Get.showSnackbar(GetSnackBar(
              backgroundColor: const Color(0xFF303030).withOpacity(0.7),
              borderRadius: 10,
              title: "Warning",
              message: "Enter userame and email !!!",
            ));
            // Get.snackbar("Warning", "UserName or email is nor correct!!!");
          }
        }
      }
    } catch (e) {}
    // Get.off(const MyHomePage());
  }

  Widget circle({required double top, required double right}) {
    return Positioned(
      right: ScreenUtil().setWidth(right),
      top: ScreenUtil().setHeight(top),
      child: SizedBox(
        width: ScreenUtil().setWidth(170),
        height: ScreenUtil().setWidth(210),
        child: Image.asset(
          "assets/images/back2.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
