// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'organizeframe_item_model.dart';

/// This class defines the variables used in the [in_cio_1_5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InCio15Model extends Equatable {
  InCio15Model({this.organizeframeItemList = const []}) {}

  List<OrganizeframeItemModel> organizeframeItemList;

  InCio15Model copyWith({List<OrganizeframeItemModel>? organizeframeItemList}) {
    return InCio15Model(
      organizeframeItemList:
          organizeframeItemList ?? this.organizeframeItemList,
    );
  }

  @override
  List<Object?> get props => [organizeframeItemList];
}
