import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:userstory/view_model/person_view_model.dart';
import 'package:userstory/views/help_common_page.dart';
import 'package:userstory/views/home_page.dart';
import 'package:userstory/views/profile_page.dart';

class AppBarCustome extends StatelessWidget {
  PersonViewModel user = PersonViewModel();
  bool showBack;
  AppBarCustome({Key? key, required this.user, this.showBack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: help.getPaddingByDirection(
        top: 20,
      ),
      child: SizedBox(
        height: ScreenUtil().setHeight(170),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            showBack
                ? Padding(
                    padding: help.getPaddingByDirection(
                      start: 15,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Get.off(const MyHomePage());
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: ScreenUtil().setWidth(20),
                        )))
                : SizedBox(
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setHeight(30),
                  ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showBack ? () {} : Get.to(ProfilePage(detailUser: user));
                  },
                  child: Padding(
                    padding: help.getPaddingByDirection(
                      start: 36,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: ScreenUtil().setWidth(5),
                            color: Colors.white,
                          ),
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().radius(35))),
                      width: ScreenUtil().setWidth(110),
                      height: ScreenUtil().setHeight(110),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().radius(30)),
                        child: user.picture != null
                            ? Image.network(
                                user.picture!,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                "assets/images/emptyImage.png",
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(20),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.name!, style: Get.theme.textTheme.bodyText1),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(user.phone!, style: Get.theme.textTheme.bodyText1),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
