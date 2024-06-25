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
    this.companies = const <Company>[],
    this.index = 0,
    this.profileController,
  });

  final HomeStatus homeStatus;
  final List<Company> companies;
  final int index;
  final FlyoutController? profileController;

  HomeState copyWith({
    HomeStatus? homeStatus,
    List<Company>? companies,
    int? index,
    FlyoutController? profileController,
  }) {
    return HomeState(
      homeStatus: homeStatus ?? this.homeStatus,
      companies: companies ?? this.companies,
      index: index ?? this.index,
      profileController: profileController ?? this.profileController,
    );
  }

  @override
  List<Object?> get props => [
        homeStatus,
        companies,
        index,
        profileController,
      ];
}
