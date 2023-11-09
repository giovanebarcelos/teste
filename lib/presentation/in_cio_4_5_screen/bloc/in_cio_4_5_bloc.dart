import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/recipepreparer_item_model.dart';
import 'package:giovane_s_application2/presentation/in_cio_4_5_screen/models/in_cio_4_5_model.dart';
part 'in_cio_4_5_event.dart';
part 'in_cio_4_5_state.dart';

/// A bloc that manages the state of a InCio45 according to the event that is dispatched to it.
class InCio45Bloc extends Bloc<InCio45Event, InCio45State> {
  InCio45Bloc(InCio45State initialState) : super(initialState) {
    on<InCio45InitialEvent>(_onInitialize);
  }

  List<RecipepreparerItemModel> fillRecipepreparerItemList() {
    return List.generate(1, (index) => RecipepreparerItemModel());
  }

  _onInitialize(
    InCio45InitialEvent event,
    Emitter<InCio45State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        inCio45ModelObj: state.inCio45ModelObj?.copyWith(
      recipepreparerItemList: fillRecipepreparerItemList(),
    )));
  }
}
