// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sharelist_item_model.dart';

/// This class defines the variables used in the [in_cio_2_5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InCio25Model extends Equatable {
  InCio25Model({this.sharelistItemList = const []}) {}

  List<SharelistItemModel> sharelistItemList;

  InCio25Model copyWith({List<SharelistItemModel>? sharelistItemList}) {
    return InCio25Model(
      sharelistItemList: sharelistItemList ?? this.sharelistItemList,
    );
  }

  @override
  List<Object?> get props => [sharelistItemList];
}
