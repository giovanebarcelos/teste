import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/one_item_model.dart';
import 'package:giovane_s_application2/presentation/in_cio_5_5_screen/models/in_cio_5_5_model.dart';
part 'in_cio_5_5_event.dart';
part 'in_cio_5_5_state.dart';

/// A bloc that manages the state of a InCio55 according to the event that is dispatched to it.
class InCio55Bloc extends Bloc<InCio55Event, InCio55State> {
  InCio55Bloc(InCio55State initialState) : super(initialState) {
    on<InCio55InitialEvent>(_onInitialize);
  }

  List<OneItemModel> fillOneItemList() {
    return List.generate(1, (index) => OneItemModel());
  }

  _onInitialize(
    InCio55InitialEvent event,
    Emitter<InCio55State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inCio55ModelObj: state.inCio55ModelObj?.copyWith(
      oneItemList: fillOneItemList(),
    )));
  }
}
