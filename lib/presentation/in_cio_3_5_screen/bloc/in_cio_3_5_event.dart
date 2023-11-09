// ignore_for_file: must_be_immutable

part of 'in_cio_3_5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InCio35 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InCio35Event extends Equatable {}

/// Event that is dispatched when the InCio35 widget is first created.
class InCio35InitialEvent extends InCio35Event {
  @override
  List<Object?> get props => [];
}
