// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'one_item_model.dart';

/// This class defines the variables used in the [in_cio_5_5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InCio55Model extends Equatable {
  InCio55Model({this.oneItemList = const []}) {}

  List<OneItemModel> oneItemList;

  InCio55Model copyWith({List<OneItemModel>? oneItemList}) {
    return InCio55Model(
      oneItemList: oneItemList ?? this.oneItemList,
    );
  }

  @override
  List<Object?> get props => [oneItemList];
}
