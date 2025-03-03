import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/login_and_register/login/login_screen.dart';
import 'package:edu_land/src/feature/screen/login_and_register/register/register_screen.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flutter/material.dart';

enum TabItem { login, register }


@RoutePage()
class LoginAndRegisterScreen extends StatefulWidget {
  const LoginAndRegisterScreen({super.key, this.tabItem = TabItem.login});

  final TabItem tabItem;

  @override
  State<LoginAndRegisterScreen> createState() => _LoginAndRegisterScreenState();
}

class _LoginAndRegisterScreenState extends State<LoginAndRegisterScreen>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.index = widget.tabItem.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cFFFF),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          32.height,
          _buildHeader(),
          _loginAndRegister(),
        ],
      ),
    );
  }

  _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(
          iconCode: 'f19d',
          color: Color(AppColors.c3B),
          size: 36,
          type: FaIconType.solid,
        ),
        const Text(' '),
        Text(
          AppStrings.appName,
          style:
              StyleApp.light(fontSize: 32, color: const Color(AppColors.c3B)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  _loginAndRegister() {
    return Expanded(
      child: Container(
        margin: 16.padding,
        padding: 16.padding,
        decoration: BoxDecoration(
          color: const Color(AppColors.cFFFF),
          borderRadius: 16.radius,
          border: Border.all(
            color: const Color(AppColors.cE5),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            _buildTabar(),
            16.height,
            _buildTabView(),
          ],
        ),
      ),
    );
  }

  _buildTabar() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(AppColors.cE5),
        borderRadius: 999.radius,
      ),
      child: TabBar(
        controller: tabController,
        labelColor: const Color(AppColors.cFFFF),
        unselectedLabelColor: const Color(AppColors.c9C),
        indicator: BoxDecoration(
          color: const Color(AppColors.c3B),
          borderRadius: 999.radius,
        ),
        labelStyle: StyleApp.light(fontSize: 16),
        indicatorColor: Colors.white,
        dividerColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: Text(
              AppStrings.txtLogin,
            ),
          ),
          Tab(
            child: Text(
              AppStrings.register,
            ),
          ),
        ],
      ),
    );
  }

  _buildTabView() {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          LoginScreen(
            onRegister: () => tabController.animateTo(1),
          ),
          RegisterScreen(
            onLogin: () => tabController.animateTo(0),
          ),
        ],
      ),
    );
  }


}
