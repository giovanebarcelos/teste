// ignore_for_file: must_be_immutable

part of 'in_cio_1_5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InCio15 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InCio15Event extends Equatable {}

/// Event that is dispatched when the InCio15 widget is first created.
class InCio15InitialEvent extends InCio15Event {
  @override
  List<Object?> get props => [];
}
