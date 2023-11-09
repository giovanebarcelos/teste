import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/organizeframe_item_model.dart';
import 'package:giovane_s_application2/presentation/in_cio_1_5_screen/models/in_cio_1_5_model.dart';
part 'in_cio_1_5_event.dart';
part 'in_cio_1_5_state.dart';

/// A bloc that manages the state of a InCio15 according to the event that is dispatched to it.
class InCio15Bloc extends Bloc<InCio15Event, InCio15State> {
  InCio15Bloc(InCio15State initialState) : super(initialState) {
    on<InCio15InitialEvent>(_onInitialize);
  }

  List<OrganizeframeItemModel> fillOrganizeframeItemList() {
    return List.generate(1, (index) => OrganizeframeItemModel());
  }

  _onInitialize(
    InCio15InitialEvent event,
    Emitter<InCio15State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inCio15ModelObj: state.inCio15ModelObj?.copyWith(
      organizeframeItemList: fillOrganizeframeItemList(),
    )));
  }
}
