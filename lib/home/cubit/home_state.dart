part of 'home_cubit.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == HomeStatus.initial;
  bool get isLoading => this == HomeStatus.loading;
  bool get isSuccess => this == HomeStatus.success;
  bool get isFailure => this == HomeStatus.failure;
}

class HomeState extends Equatable {
  const HomeState({
    this.homeStatus = HomeStatus.initial,
    this.total = 0,
  });

  final HomeStatus homeStatus;
  final int total;

  HomeState copyWith({
    HomeStatus? homeStatus,
    int? total,
  }) {
    return HomeState(
      homeStatus: homeStatus ?? this.homeStatus,
      total: total ?? this.total,
    );
  }

  @override
  List<Object?> get props => [
        homeStatus,
        total,
      ];
}
