// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'recipepreparer_item_model.dart';

/// This class defines the variables used in the [in_cio_4_5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InCio45Model extends Equatable {
  InCio45Model({this.recipepreparerItemList = const []}) {}

  List<RecipepreparerItemModel> recipepreparerItemList;

  InCio45Model copyWith(
      {List<RecipepreparerItemModel>? recipepreparerItemList}) {
    return InCio45Model(
      recipepreparerItemList:
          recipepreparerItemList ?? this.recipepreparerItemList,
    );
  }

  @override
  List<Object?> get props => [recipepreparerItemList];
}
