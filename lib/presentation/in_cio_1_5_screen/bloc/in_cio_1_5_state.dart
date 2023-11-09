// ignore_for_file: must_be_immutable

part of 'in_cio_1_5_bloc.dart';

/// Represents the state of InCio15 in the application.
class InCio15State extends Equatable {
  InCio15State({
    this.sliderIndex = 0,
    this.inCio15ModelObj,
  });

  InCio15Model? inCio15ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inCio15ModelObj,
      ];
  InCio15State copyWith({
    int? sliderIndex,
    InCio15Model? inCio15ModelObj,
  }) {
    return InCio15State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inCio15ModelObj: inCio15ModelObj ?? this.inCio15ModelObj,
    );
  }
}
