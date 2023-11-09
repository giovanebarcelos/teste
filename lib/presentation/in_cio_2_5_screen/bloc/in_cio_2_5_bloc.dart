import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sharelist_item_model.dart';
import 'package:giovane_s_application2/presentation/in_cio_2_5_screen/models/in_cio_2_5_model.dart';
part 'in_cio_2_5_event.dart';
part 'in_cio_2_5_state.dart';

/// A bloc that manages the state of a InCio25 according to the event that is dispatched to it.
class InCio25Bloc extends Bloc<InCio25Event, InCio25State> {
  InCio25Bloc(InCio25State initialState) : super(initialState) {
    on<InCio25InitialEvent>(_onInitialize);
  }

  List<SharelistItemModel> fillSharelistItemList() {
    return List.generate(1, (index) => SharelistItemModel());
  }

  _onInitialize(
    InCio25InitialEvent event,
    Emitter<InCio25State> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        inCio25ModelObj: state.inCio25ModelObj
            ?.copyWith(sharelistItemList: fillSharelistItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.inCio15Screen,
      );
    });
  }
}
