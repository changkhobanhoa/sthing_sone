import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../global/global_colors.dart';
import '../../models/category.model.dart';
import '../../widget/widget_carousel.dart';
import '../../widget/widget_category_item.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final List<Category> items = [
    Category(
        name: "Tiêm phòng", image: Icons.synagogue, decription: "tiêm phòng"),
    Category(
        name: "Thuốc trừ sâu", image: Icons.home, decription: "tiêm phòng"),
    Category(
        name: "Quá trình cây trồng",
        image: Icons.wechat,
        decription: "tiêm phòng"),
    Category(
        name: "Chăm sóc cây trồng",
        image: Icons.wechat,
        decription: "tiêm phòng"),
    Category(
        name: "Bệnh tật cây trồng",
        image: Icons.wechat,
        decription: "tiêm phòng"),
    Category(
        name: "Mẹo hay cây trồng",
        image: Icons.wechat,
        decription: "tiêm phòng"),
    Category(
        name: "Thời tiết",
        image: CupertinoIcons.cloud_sun,
        decription: "tiêm phòng"),
    Category(
        name: "Quyét Mã",
        image: CupertinoIcons.qrcode,
        decription: "tiêm phòng"),
  ];

  @override
  Widget build(BuildContext context) {
    debugPrint("reload");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.bgApp,
        title: const Text(
          'Trang chủ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          primary: false,
          child: Column(
            children: [
              const WidgetCarousel(),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true, // Để tránh lỗi overflow
                physics:
                    const NeverScrollableScrollPhysics(), // Ngăn chặn GridView cuộn khi nội dung quá dài
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Số cột trong lưới
                  crossAxisSpacing: 8.0, // Khoảng cách giữa các cột
                  mainAxisSpacing: 8.0, // Khoảng cách giữa các hàng
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return WidgetCategory(
                    model: items[index],
                  );
                },
              ),
              // Đặt các widget khác tại đây nếu bạn muốn
              const Text('Footer'),
            ],
          ),
        ),
      ),
    );
  }
}
