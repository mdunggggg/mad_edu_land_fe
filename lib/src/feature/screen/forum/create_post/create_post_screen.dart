import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/primary_button.dart';
import 'package:edu_land/src/feature/components/secondary_button.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/check_status_bloc.dart';
import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import 'create_post_bloc.dart';

@RoutePage()
class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key, required this.onSuccess});

  final VoidCallback onSuccess;

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  final bloc = CreatePostBloc();
  final key = GlobalKey<FormState>();


  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(AppStrings.createPost),
        ),
        body: BlocListener<CreatePostBloc, BlocState>(
          bloc: bloc,
          listener: (context, state) {
            CheckStateBloc.check(
                context,
                state,
                msg: state.msg,
                success: widget.onSuccess,
                returnBack: true,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppInput(
                    hintText: AppStrings.enterPostTitle,
                    label: AppStrings.title,
                    required: true,
                    bgColor: Colors.white,
                    controller: _titleController,
                    titleStyle: StyleApp.medium(
                      fontSize: 20,
                      color: const Color(AppColors.c42),
                    ),
                    borderColor: const Color(AppColors.cE5),
                  ),
                  16.height,
                  AppInput(
                    hintText: AppStrings.enterPostContent,
                    label: AppStrings.content,
                    titleStyle: StyleApp.medium(
                      fontSize: 20,
                      color: const Color(AppColors.c42),
                    ),
                    required: true,
                    bgColor: Colors.white,
                    controller: _contentController,
                    borderColor: const Color(AppColors.cE5),
                    maxLines: 5,
                  ),
                  16.height,
                  Row(
                    children: [
                      SecondaryButton(
                        text: AppStrings.cancel,
                        onClick: () {
                          context.router.maybePop();
                        },
                        color: Colors.grey,
                      ).expanded(),
                      16.width,
                      PrimaryButton(
                        text: AppStrings.createPost,
                        onClick: () {
                          if (!key.currentState!.validate()) return;
                          bloc.createPost(title: _titleController.text,
                              content: _contentController.text);
                        },
                        textStyle: StyleApp.normal(color: Colors.white),
                        color: const Color(AppColors.cAC),
                      ).expanded(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
