import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:userstory/views/help_common_page.dart';

class CustomeButton extends StatefulWidget {
  String title;
  Function() callback;
  double height;
  double width;
  bool showIcon;
  CustomeButton(
      {Key? key,
      required this.callback,
      required this.title,
      this.height = 50,
      this.width = 135,
      this.showIcon = true})
      : super(key: key);

  @override
  _CustomeButtonState createState() => _CustomeButtonState();
}

class _CustomeButtonState extends State<CustomeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          widget.callback.call();
        },
        child: Container(
          width: ScreenUtil().setWidth(widget.width),
          height: ScreenUtil().setWidth(widget.height),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey,
                )
              ],
              borderRadius: BorderRadius.circular(ScreenUtil().radius(35)),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffF9AF07),
                    Color(0xffF98307),
                  ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style:
                    Get.theme.textTheme.subtitle2!.apply(color: Colors.white),
              ),
              widget.showIcon
                  ? Padding(
                      padding: help.getPaddingByDirection(start: 15),
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: ScreenUtil().setWidth(20),
                      ))
                  : const SizedBox(),
            ],
          ),
        ));
  }
}
