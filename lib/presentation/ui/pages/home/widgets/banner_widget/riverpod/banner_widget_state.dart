import 'package:freezed_annotation/freezed_annotation.dart';


part 'banner_widget_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(0) int pageIndex,
    @Default(0) int dayProductSelectedIndex,
    @Default(true) bool isLoading,
    @Default(false) bool isResponseError,
  }) = _HomeState;
}
