// ignore_for_file: must_be_immutable

part of 'in_cio_5_5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InCio55 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InCio55Event extends Equatable {}

/// Event that is dispatched when the InCio55 widget is first created.
class InCio55InitialEvent extends InCio55Event {
  @override
  List<Object?> get props => [];
}
