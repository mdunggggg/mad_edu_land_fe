import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/resources/constant/app_colors.dart';
import 'package:edu_land/src/resources/constant/app_strings.dart';
import 'package:edu_land/src/resources/constant/app_styles.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:edu_land/src/shared/extension/ext_date.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_string.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:readmore/readmore.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../model/forum_overview_model.dart';
import 'list_forum_bloc.dart';

@RoutePage()
class ListForumScreen extends StatefulWidget {
  const ListForumScreen({super.key});

  @override
  State<ListForumScreen> createState() => _ListForumScreenState();
}

class _ListForumScreenState extends State<ListForumScreen> {
  final bloc = ListForumBloc();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          AppStrings.forum,
          style:
              StyleApp.normal(fontSize: 24, color: const Color(AppColors.c7C)),
        ),
        leading: null,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreatePostRoute(
            onSuccess: () {
              bloc.init();
            },
          ));
        },
        shape: const CircleBorder(),
        backgroundColor: const Color(AppColors.c8B),
        child: const FaIcon(
          iconCode: 'f304',
          color: Colors.white,
          size: 20,
        ),
      ),
      body: BlocBuilder<ListForumBloc, BlocState<List<ForumOverviewModel>>>(
        bloc: bloc,
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            padding: 16.padding.copyWith(bottom: 0),
            decoration: const BoxDecoration(color: Color(AppColors.cF9)),
            child: RefreshIndicator(
              onRefresh: () {
                return bloc.init();
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...state.data?.map((e) {
                          return _buildForumItem(e).padding(16.paddingBottom);
                        }).toList() ??
                        [],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildForumItem(ForumOverviewModel e) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(AppColors.cE5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.router.push(DetailPostRoute(id: e.id ?? -1, onSuccess: () => bloc.init(),));
            },
            child: Row(
              children: [
                Text(
                  e.title.validator,
                  style: StyleApp.normal(
                      fontSize: 18, color: const Color(AppColors.c1F)),
                ).expanded(),
                const FaIcon(
                  iconCode: 'f061',
                  color: Color(AppColors.c8B),
                )
              ],
            ),
          ),
          8.height,
          Row(
            children: [
              RandomAvatar(e.userId.toString(), height: 24, width: 24),
              8.width,
              Text(
                e.author.validator,
                style: StyleApp.normal(color: const Color(AppColors.c4B)),
              ),
              8.width,
              Text(
                e.createdAt.format(format: 'hh:mm dd/MM/yyyy'),
                style: StyleApp.normal(
                    fontSize: 14, color: const Color(AppColors.c9C)),
              ).expanded(),
            ],
          ),
          8.height,
          ReadMoreText(
            e.content.validator,
            trimLines: 5,
            trimMode: TrimMode.Line,
            trimCollapsedText: AppStrings.readMore.toLowerCase(),
            trimExpandedText: AppStrings.readLess.toLowerCase(),
            style: StyleApp.normal(),
          ),
          8.height,
          Row(
            children: [
              const FaIcon(
                  iconCode: 'f075',
                  type: FaIconType.light,
                  color: Color(AppColors.c6B)),
              4.width,
              Text(
                '${e.totalComments} ${AppStrings.comments.toLowerCase()}',
                style: StyleApp.normal(color: const Color(AppColors.c6B)),
              ),
              16.width,
              InkWell(
                onTap: () {
                  bloc.changeLike(e.id ?? -1);
                },
                child: FaIcon(
                    iconCode: 'f004',
                    type: e.liked ? FaIconType.solid : FaIconType.light,
                    color: e.liked ? Colors.red : const Color(AppColors.c6B)),
              ),
              4.width,
              Text(
                '${e.totalLikes} ${AppStrings.like.toLowerCase()}',
                style: StyleApp.normal(color: const Color(AppColors.c6B)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
