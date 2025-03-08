import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/bloc/bloc_state.dart';
import 'package:flutter/material.dart';

import '../feature/components/dialog_utils.dart';

class CheckStateBloc {
  static void check(
    BuildContext context,
    BlocState state, {
    String? msg,
    bool isClose = false,
    String? successBtnText,
    Function()? success,
    Function()? failure,
    String? svgIconSuccess,
    PageRouteInfo? route,
    bool isRemove = false,
  }) {
    if (state.status == Status.loading) {
      DialogUtils.showLoading(
        context,
        msg ?? 'Đang tải...',
      );
    }
    if (state.status == Status.success) {
      Navigator.pop(context);
      DialogUtils.showSuccess(context, msg ?? state.msg);
      success?.call();
    }
    if (state.status == Status.error) {
      Navigator.pop(context);
      DialogUtils.showError(context, msg ?? state.msg);
      failure?.call();
    }
    if(state.status == Status.navigate) {
      Navigator.pop(context);
      if(route != null) {
       context.router.push(route);
      }
    }

  }
}
