import 'package:ak_admin/provider/dashboard_provider.dart';
import 'package:ak_admin/view/widget/dashboard_widget.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();

  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 56, 79, 1),
      appBar: null,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer<DashboardProvider>(builder: (context, provider, child) {
            return SideMenu(
              onDisplayModeChanged: (value) {
                provider.changeCompact(value);
              },
              controller: sideMenu,
              style: SideMenuStyle(
                  arrowCollapse: Colors.white,
                  unselectedIconColorExpandable: Colors.white,
                  selectedIconColorExpandable: Colors.white,
                  selectedTitleTextStyleExpandable:
                      TextStyle(color: Colors.white),
                  unselectedIconColor: Colors.white,
                  unselectedTitleTextStyle: TextStyle(color: Colors.white),
                  // showTooltip: false,
                  displayMode: SideMenuDisplayMode.auto,
                  compactSideMenuWidth:
                      MediaQuery.of(context).size.width * 0.15,
                  hoverColor: Colors.blueAccent,
                  selectedHoverColor: Colors.white,
                  selectedColor: Colors.white,
                  selectedTitleTextStyle: const TextStyle(color: Colors.black),
                  selectedIconColor: Colors.black,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  // ),
                  backgroundColor: Colors.black),
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.008,
                    vertical: MediaQuery.of(context).size.height * 0.01),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Builder(builder: (context) {
                    if (!provider.isCompact) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/rhodes_icon.png'),
                                    fit: BoxFit.fill)),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Arknight Admin",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    } else {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/rhodes_icon.png'),
                                fit: BoxFit.fill)),
                      );
                    }
                  }),
                ),
              ),
              items: [
                SideMenuItem(
                  title: 'Dashboard',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.home),
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(color: Colors.black),
                  ),
                  tooltipContent: "This is a tooltip for Dashboard item",
                ),
                SideMenuItem(
                  title: 'Users',
                  onTap: (index, _) {
                    sideMenu.changePage(index);
                  },
                  icon: const Icon(Icons.supervisor_account),
                ),
                SideMenuExpansionItem(
                  icon: Icon(
                    applyTextScaling: true,
                    Icons.book,
                    color: Colors.white,
                  ),
                  title: "Operator",
                  children: [
                    SideMenuItem(
                      title: 'Operator List',
                      onTap: (index, _) {
                        sideMenu.changePage(index);
                      },
                      icon: const Icon(Icons.home),
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      tooltipContent: "Operator List",
                    ),
                    SideMenuItem(
                      title: 'Add Operator',
                      onTap: (index, _) {
                        sideMenu.changePage(index);
                      },
                      icon: const Icon(Icons.supervisor_account),
                    )
                  ],
                ),
                SideMenuExpansionItem(
                    title: "Event",
                    icon: Icon(
                      Icons.event,
                      color: Colors.white,
                    ),
                    children: [
                      SideMenuItem(
                        onTap: (index, sideMenuController) =>
                            sideMenu.changePage(index),
                        title: "Event List",
                        icon: Icon(Icons.list),
                      ),
                      SideMenuItem(
                        onTap: (index, sideMenuController) =>
                            sideMenu.changePage(index),
                        title: "Add Event",
                        icon: Icon(Icons.list),
                      )
                    ]),
                SideMenuItem(
                  builder: (context, displayMode) {
                    return const Divider(
                      endIndent: 8,
                      indent: 8,
                    );
                  },
                ),
              ],
            );
          }),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                DashboardWidget(),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Users',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'List Operator',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Add Operator',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'List Event',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Add Event',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
