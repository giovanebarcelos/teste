// ignore_for_file: must_be_immutable

part of 'in_cio_2_5_bloc.dart';

/// Represents the state of InCio25 in the application.
class InCio25State extends Equatable {
  InCio25State({
    this.sliderIndex = 0,
    this.inCio25ModelObj,
  });

  InCio25Model? inCio25ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inCio25ModelObj,
      ];
  InCio25State copyWith({
    int? sliderIndex,
    InCio25Model? inCio25ModelObj,
  }) {
    return InCio25State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inCio25ModelObj: inCio25ModelObj ?? this.inCio25ModelObj,
    );
  }
}
