import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_change_theme/controller/themecontroller.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008069),
        title: Text("Change Theme"),
        actions: [
          Obx(() {
            return Switch(
              splashRadius: 100,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: controller.mode.value,
              onChanged: (value) {
                if (controller.mode.value) {
                  controller.updateTheme(ThemeData.light());
                } else {
                  controller.updateTheme(ThemeData.dark());
                }
              },
            );
          })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (ctx, index) {
              return Column(
                children: const [
                  ListTile(
                    title: Text("M S Dhoni"),
                    subtitle: Text("Hey"),
                    trailing: Text("10:30 AM"),
                    contentPadding: EdgeInsets.only(right: 30),
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://c.ndtvimg.com/2021-04/1lrriqc8_ms-dhoni-bcciipl_625x300_20_April_21.jpg"),
                    ),
                  ),
                  Divider(),
                ],
              );
            }),
      ),
    );
  }
}
