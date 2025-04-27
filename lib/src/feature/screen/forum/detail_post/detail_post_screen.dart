import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:edu_land/src/feature/components/app_input.dart';
import 'package:edu_land/src/feature/components/fa_icon.dart';
import 'package:edu_land/src/feature/screen/forum/detail_post/detail_post_bloc.dart';
import 'package:edu_land/src/model/comment_model.dart';
import 'package:edu_land/src/model/post_model.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_date.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:edu_land/src/shared/extension/ext_string.dart';
import 'package:edu_land/src/shared/extension/ext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_avatar/random_avatar.dart';

import '../../../../resources/constant/app_colors.dart';
import '../../../../resources/constant/app_strings.dart';
import '../../../../resources/constant/app_styles.dart';

@RoutePage()
class DetailPostScreen extends StatefulWidget {
  const DetailPostScreen({super.key, required this.id, required this.onSuccess});

  final int id;
  final VoidCallback onSuccess;

  @override
  State<DetailPostScreen> createState() => _DetailPostScreenState();
}

class _DetailPostScreenState extends State<DetailPostScreen> {
  final bloc = DetailPostBloc();
  final TextEditingController commentCtrl = TextEditingController();

  @override
  void initState() {
    bloc.init(widget.id);
    super.initState();
  }

  @override
  void dispose() {
    commentCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.cF9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          AppStrings.forumPost,
          style: StyleApp.normal(fontSize: 24),
        ),
      ),
      bottomSheet: _buildBottomSheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<DetailPostBloc, BlocState<PostModel>>(
              bloc: bloc,
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.status == Status.error) {
                  return Center(
                    child: Text(state.msg),
                  );
                }
                return _buildPost(state.data!);
              },
              buildWhen: (previous, current) {
                return previous.data?.id != current.data?.id;
              },
            ),
            16.height,
            BlocBuilder<DetailPostBloc, BlocState<PostModel>>(
              bloc: bloc,
              builder: (context, state) {
                return _buildComment(state.data?.comments ?? []);
              },
            ),
            (context.padding.bottom + 200).height,
          ],
        ),
      ),
    );
  }

  _buildPost(PostModel e) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(AppColors.cE5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            e.title ?? '',
            style: StyleApp.normal(
                fontSize: 18, color: const Color(AppColors.c1F)),
          ),
          8.height,
          Row(
            children: [
              RandomAvatar(e.authorId.toString(), height: 24, width: 24),
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
          Text(e.content.validator),
          8.height,
        ],
      ),
    );
  }

  _buildComment(List<CommentModel> comments) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(AppColors.cE5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${AppStrings.comments} (${comments.length})',
            style: StyleApp.normal(fontSize: 18),
          ),
          8.height,
          ...comments.map((e) {
            return _buildDetailCmt(e).padding(16.paddingBottom);
          }),
        ],
      ),
    );
  }

  Widget _buildDetailCmt(CommentModel e) {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: const Color(AppColors.cF9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RandomAvatar(e.authorId.toString(), height: 24, width: 24),
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
          Text(e.content.validator)
        ],
      ),
    );
  }

  _buildBottomSheet() {
    return Container(
      padding: 16.padding,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(AppColors.cE5),
        ),
      ),
      child: Row(
        children: [
          AppInput(
            hintText: AppStrings.writeComment,
            radius: 999,
            controller: commentCtrl,
          ).expanded(),
          8.width,
          InkWell(
            onTap: () {
              if (commentCtrl.text.isEmpty) {
                return;
              }
              bloc.addComment(widget.id, commentCtrl.text).then((value) {
                if(value == true) {
                  widget.onSuccess();
                }
              },);
              commentCtrl.clear();
            },
            child: Container(
              padding: 16.padding,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const FaIcon(
                iconCode: 'f1d8',
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
