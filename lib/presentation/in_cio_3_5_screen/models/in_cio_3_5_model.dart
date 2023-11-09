// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'familyeconomize_item_model.dart';

/// This class defines the variables used in the [in_cio_3_5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InCio35Model extends Equatable {
  InCio35Model({this.familyeconomizeItemList = const []}) {}

  List<FamilyeconomizeItemModel> familyeconomizeItemList;

  InCio35Model copyWith(
      {List<FamilyeconomizeItemModel>? familyeconomizeItemList}) {
    return InCio35Model(
      familyeconomizeItemList:
          familyeconomizeItemList ?? this.familyeconomizeItemList,
    );
  }

  @override
  List<Object?> get props => [familyeconomizeItemList];
}
