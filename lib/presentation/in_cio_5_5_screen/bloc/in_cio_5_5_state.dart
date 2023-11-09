// ignore_for_file: must_be_immutable

part of 'in_cio_5_5_bloc.dart';

/// Represents the state of InCio55 in the application.
class InCio55State extends Equatable {
  InCio55State({
    this.sliderIndex = 0,
    this.inCio55ModelObj,
  });

  InCio55Model? inCio55ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inCio55ModelObj,
      ];
  InCio55State copyWith({
    int? sliderIndex,
    InCio55Model? inCio55ModelObj,
  }) {
    return InCio55State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inCio55ModelObj: inCio55ModelObj ?? this.inCio55ModelObj,
    );
  }
}
