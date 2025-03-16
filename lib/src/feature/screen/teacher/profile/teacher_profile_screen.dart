import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/components/main_button.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:flutter/material.dart';
class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppStrings.profile,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(AppColors.c1F),
                  ),
                ),
              ),
              const SizedBox(height: 28.0),
              const Center(
                child: CircleAvatar(
                  radius: 56 ,
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color(AppColors.cFFFF),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(AppColors.cE5),
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppStrings.displayName,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(AppColors.c6B),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    const Text(
                      'Nguyễn Văn A',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(AppColors.c1F),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Divider(
                      color: Color(AppColors.cF3),
                      thickness: 1,
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      AppStrings.emailAddress,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(AppColors.c6B),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    const Text(
                      'anv@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(AppColors.c1F),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: MainButton(
                    buttonTitle: AppStrings.signOut,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "You clicked on Edit Profile",
                          ),
                        ),
                      );
                    },
                    backgroundColor: const Color(AppColors.cFEE),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(AppColors.c99),
                    ),
                    icon: const FaIcon(
                      iconCode: 'f2f5',
                      color: Color(AppColors.c99),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
