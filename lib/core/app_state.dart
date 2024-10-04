class AppState {
  final bool isInProgress;
  final bool isFailure;
  final bool isSuccess;
  final List<dynamic>? data;

  const AppState({
    required this.isInProgress,
    required this.isFailure,
    required this.isSuccess,
    this.data,
  });

  AppState.loading()
      : this(
          isFailure: false,
          isInProgress: true,
          isSuccess: false,
          data: null,
        );
  AppState.success({List<dynamic>? data})
      : this(
          isFailure: false,
          isInProgress: false,
          isSuccess: true,
          data: data,
        );
  AppState.failed()
      : this(
          isFailure: true,
          isInProgress: false,
          isSuccess: false,
          data: null,
        );

  AppState.unknown()
      : this(
          isFailure: false,
          isInProgress: true,
          isSuccess: false,
          data: null,
        );
}
