import 'package:assignment/generated/assets.dart';
import 'package:assignment/home/home_screen.dart';
import 'package:assignment/search/search_screen.dart';
import 'package:assignment/style/colors.dart';
import 'package:assignment/wish_list/wish_list_screen.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<TabItem> items = [];

  var childrenWidget = [];

  int visit = 0;
  double height = 30;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    items = const [
      TabItem(
        icon: Icons.home,
      ),
      TabItem(
        icon: Icons.search_sharp,

      ),
      TabItem(
        icon: Icons.favorite_border,
      ),
    ];

    childrenWidget = const [HomeScreen(), SearchScreen(), WishListScreen()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        leading: badges.Badge(
          position: badges.BadgePosition.topEnd(top: 15, end: 17),
          stackFit: StackFit.expand,
          badgeContent: SvgPicture.asset(
            Assets.iconsAlertDot,
            width: 1.0,
            height: 1.0,
          ),
          child: SvgPicture.asset(
            Assets.iconsAlert,
            width: 24.0,
            height: 27.88,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: SvgPicture.asset(
              Assets.iconsUserIcon,
              height: 22.5,
              width: 20,
            ),
          ),
        ],
      ),
      body: childrenWidget[visit],
      bottomNavigationBar: BottomBarInspiredFancy(
        items: items,
        backgroundColor: kColorCodeFFFFFF,
        color: kColorCode000000,
        colorSelected: Colors.red,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
