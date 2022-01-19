import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:userstory/view_model/person_view_model.dart';
import 'package:userstory/views/help_common_page.dart';
import 'package:userstory/views/widget/CusomeButton.dart';
import 'package:userstory/views/widget/app_bar.dart';

class ProfilePage extends StatefulWidget {
  PersonViewModel detailUser = PersonViewModel();
  ProfilePage({Key? key, required this.detailUser}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<PersonViewModel> users = List<PersonViewModel>.empty(growable: true);
  List<PersonViewModel> friendList =
      List<PersonViewModel>.empty(growable: true);
  PersonViewModel temp = PersonViewModel();
  PersonViewModel selectuser = PersonViewModel();
  PersonViewModel userviewModel = PersonViewModel();
  bool showEdit = false;
  @override
  void initState() {
    GetStorage userName = GetStorage();
    selectuser = widget.detailUser;
    userviewModel = userName.read("userViewModel");

    users = Get.find();

    // for (var item in selectuser.friends!) {
    //   if (users.any((element) => element.guid == item.guid)) {
    //     temp = users.firstWhere((element) => element.guid == item.guid);
    //     friendList.add(temp);
    //   }
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (userviewModel.email == selectuser.email) {
      showEdit = true;
    }
    for (var item in selectuser.friends!) {
      if (users.any((element) => element.guid == item.guid)) {
        temp = users.firstWhere((element) => element.guid == item.guid);
        friendList.add(temp);
      }
    }
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: Get.theme.primaryColor,
            body: Column(children: <Widget>[
              AppBarCustome(user: selectuser, showBack: true),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        ScreenUtil().radius(ScreenUtil().radius(32)),
                      ),
                      topRight: Radius.circular(
                        ScreenUtil().radius(32),
                      ),
                    ),
                    color: const Color(0xFFE7EBF8)),
                child: Padding(
                  padding: help.getPaddingByDirection(
                      start: 25, end: 25, top: 20, bottom: 20),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: help.getPaddingByDirection(bottom: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      ScreenUtil()
                                          .radius(ScreenUtil().radius(15)),
                                    ),
                                  ),
                                  color: Colors.white),
                              padding: help.getPaddingByDirection(
                                  start: 20, end: 20, top: 30, bottom: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text("Balance : ",
                                            style:
                                                Get.theme.textTheme.bodyText1),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text("\$" + selectuser.balance!,
                                            style:
                                                Get.theme.textTheme.headline5),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setWidth(20),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text("age : ",
                                            style:
                                                Get.theme.textTheme.bodyText1),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Row(
                                          children: [
                                            Text(selectuser.age.toString(),
                                                style: Get
                                                    .theme.textTheme.headline5),
                                            SizedBox(
                                              width: ScreenUtil().setWidth(10),
                                            ),
                                            Text("register : ",
                                                style: Get
                                                    .theme.textTheme.bodyText1),
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                  selectuser.registered!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                  style: Get.theme.textTheme
                                                      .headline5),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setWidth(20),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("about : ",
                                          style: Get.theme.textTheme.bodyText1),
                                      Expanded(
                                        flex: 2,
                                        child: Text(selectuser.about!,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                            style:
                                                Get.theme.textTheme.headline5),
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(20),
                                      ),
                                      showEdit
                                          ? CustomeButton(
                                              title: "Edit",
                                              callback: () {},
                                              width: 90,
                                              height: 40,
                                              showIcon: false,
                                            )
                                          : const SizedBox()
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: help.getPaddingByDirection(
                            top: 10,
                          ),
                          child: Text(
                            "Friends :",
                            style: Get.theme.textTheme.bodyText1,
                          ),
                        ),
                        friendList.isEmpty
                            ? Padding(
                                padding: help.getPaddingByDirection(
                                  top: 10,
                                ),
                                child: Text(
                                  " Oh dear, you havent any friend !!!",
                                  style: Get.theme.textTheme.headline5,
                                ),
                              )
                            : Padding(
                                padding: help.getPaddingByDirection(
                                  top: 30,
                                ),
                                child: SizedBox(
                                  width: Get.size.width,
                                  height: ScreenUtil().setWidth(60),
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: friendList.length,
                                      // itemCount: selectuser.friends!.length,
                                      itemBuilder: (contex, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showEdit = false;
                                              selectuser = friendList[index];
                                              friendList.clear();
                                            });
                                            // Get.to(ProfilePage(detailUser: selectuser));
                                          },
                                          child: Padding(
                                            padding: help.getPaddingByDirection(
                                              start: 8,
                                              end: 8,
                                              bottom: 8,
                                              top: 8,
                                            ),
                                            child: Container(
                                                width:
                                                    ScreenUtil().setWidth(110),
                                                decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 10,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      ScreenUtil().radius(
                                                          ScreenUtil()
                                                              .radius(25)),
                                                    ),
                                                    gradient:
                                                        const LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: [
                                                          Color(0xFFB5A3E4),
                                                          Color(0xFF7964AC),
                                                        ])),
                                                child: Center(
                                                  child: Padding(
                                                    padding: help
                                                        .getPaddingByDirection(
                                                      start: 5,
                                                      end: 5,
                                                    ),
                                                    child: Text(
                                                      friendList[index].name!,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      softWrap: false,
                                                      style: Get.theme.textTheme
                                                          .headline5!
                                                          .apply(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                        Padding(
                          padding: help.getPaddingByDirection(
                            bottom: 20,
                            top: 20,
                          ),
                          child: Text(
                            "Greeting :",
                            style: Get.theme.textTheme.bodyText1,
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width - 50,
                            height: ScreenUtil().setWidth(150),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 10,
                                    color: Colors.grey,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().radius(ScreenUtil().radius(15)),
                                ),
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFFB5A3E4),
                                      Color(0xFF7964AC),
                                    ])),
                            child: Padding(
                              padding: help.getPaddingByDirection(
                                top: 18,
                              ),
                              child: SingleChildScrollView(
                                child: Text(
                                  selectuser.greeting!,
                                  textAlign: TextAlign.center,
                                  style:
                                      Get.theme.textTheme.bodyText1!.copyWith(
                                    fontSize: ScreenUtil().setSp(20),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ))
            ])));
  }
}
