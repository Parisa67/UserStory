import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skeletons/skeletons.dart';
import 'package:userstory/view_model/person_view_model.dart';
import 'package:userstory/views/help_common_page.dart';
import 'package:userstory/views/profile_page.dart';
import 'package:userstory/views/widget/app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AfterLayoutMixin {
  PersonViewModel user = PersonViewModel();
  String username = "";
  bool showLoading = true;
  List<PersonViewModel> users = List<PersonViewModel>.empty(growable: true);
  @override
  void initState() {
    Get.closeAllSnackbars();
    users = Get.find();
    GetStorage userName = GetStorage();
    username = userName.read("name");

    for (var item in users) {
      if (username == item.email) {
        user = item;

        userName.write("userViewModel", item);
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Get.theme.primaryColor,
        body: Column(
          children: <Widget>[
            AppBarCustome(
              user: user,
            ),
            Expanded(
              child: Container(
                  padding: help.getPaddingByDirection(bottom: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xFFE7EBF8),
                      // color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 30, color: Colors.grey.withOpacity(0.8))
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          ScreenUtil().radius(32),
                        ),
                        topRight: Radius.circular(
                          ScreenUtil().radius(32),
                        ),
                      )),
                  child: Skeleton(
                    isLoading: showLoading,
                    skeleton: SkeletonListView(
                        padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setWidth(40),
                      horizontal: ScreenUtil().setWidth(30),
                    )),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return username != users[index].email
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(
                                        ProfilePage(detailUser: users[index]));
                                  },
                                  child: Padding(
                                    padding: help.getPaddingByDirection(
                                        start: 24,
                                        end: 24,
                                        top: 10,
                                        bottom: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1,
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            ScreenUtil().radius(35),
                                          )),
                                      child: Padding(
                                        padding: help.getPaddingByDirection(
                                            start: 16,
                                            end: 16,
                                            top: 16,
                                            bottom: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width: 2,
                                                        color: const Color(
                                                            0xff7964AC),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        ScreenUtil().radius(15),
                                                      )),
                                                  width:
                                                      ScreenUtil().setWidth(60),
                                                  height: ScreenUtil()
                                                      .setHeight(60),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      ScreenUtil().radius(12),
                                                    ),
                                                    child: users[index]
                                                                .picture !=
                                                            null
                                                        ? Image.network(
                                                            users[index]
                                                                .picture!,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Image.asset(
                                                            "assets/images/emptyImage.png",
                                                            fit: BoxFit.cover,
                                                            color: Get.theme
                                                                .primaryColor,
                                                          ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      ScreenUtil().setWidth(10),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(users[index].name!,
                                                        style: Get
                                                            .theme
                                                            .textTheme
                                                            .headline4),
                                                    SizedBox(
                                                      height: ScreenUtil()
                                                          .setHeight(10),
                                                    ),
                                                    Text(users[index].email!,
                                                        style: Get
                                                            .theme
                                                            .textTheme
                                                            .subtitle2),
                                                  ],
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  help.getPaddingByDirection(
                                                      top: 10),
                                              child: Text(users[index].address!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                  style: Get.theme.textTheme
                                                      .subtitle2!
                                                      .apply(
                                                          color: const Color(
                                                                  0xff0D253C)
                                                              .withOpacity(
                                                                  0.5))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ))
                              : const SizedBox();
                        }),
                  )),
            )
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    try {
      await Future.delayed(const Duration(seconds: 5));

      setState(() {
        showLoading = false;
      });
    } catch (e) {
      setState(() {
        showLoading = false;
      });
    }
  }
}
