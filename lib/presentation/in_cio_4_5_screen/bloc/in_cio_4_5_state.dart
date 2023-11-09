// ignore_for_file: must_be_immutable

part of 'in_cio_4_5_bloc.dart';

/// Represents the state of InCio45 in the application.
class InCio45State extends Equatable {
  InCio45State({
    this.sliderIndex = 0,
    this.inCio45ModelObj,
  });

  InCio45Model? inCio45ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inCio45ModelObj,
      ];
  InCio45State copyWith({
    int? sliderIndex,
    InCio45Model? inCio45ModelObj,
  }) {
    return InCio45State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inCio45ModelObj: inCio45ModelObj ?? this.inCio45ModelObj,
    );
  }
}
