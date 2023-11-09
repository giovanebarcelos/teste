// ignore_for_file: must_be_immutable

part of 'in_cio_3_5_bloc.dart';

/// Represents the state of InCio35 in the application.
class InCio35State extends Equatable {
  InCio35State({
    this.sliderIndex = 0,
    this.inCio35ModelObj,
  });

  InCio35Model? inCio35ModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        inCio35ModelObj,
      ];
  InCio35State copyWith({
    int? sliderIndex,
    InCio35Model? inCio35ModelObj,
  }) {
    return InCio35State(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      inCio35ModelObj: inCio35ModelObj ?? this.inCio35ModelObj,
    );
  }
}
