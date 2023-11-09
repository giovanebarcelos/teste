import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/familyeconomize_item_model.dart';
import 'package:giovane_s_application2/presentation/in_cio_3_5_screen/models/in_cio_3_5_model.dart';
part 'in_cio_3_5_event.dart';
part 'in_cio_3_5_state.dart';

/// A bloc that manages the state of a InCio35 according to the event that is dispatched to it.
class InCio35Bloc extends Bloc<InCio35Event, InCio35State> {
  InCio35Bloc(InCio35State initialState) : super(initialState) {
    on<InCio35InitialEvent>(_onInitialize);
  }

  List<FamilyeconomizeItemModel> fillFamilyeconomizeItemList() {
    return List.generate(1, (index) => FamilyeconomizeItemModel());
  }

  _onInitialize(
    InCio35InitialEvent event,
    Emitter<InCio35State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inCio35ModelObj: state.inCio35ModelObj?.copyWith(
      familyeconomizeItemList: fillFamilyeconomizeItemList(),
    )));
  }
}
