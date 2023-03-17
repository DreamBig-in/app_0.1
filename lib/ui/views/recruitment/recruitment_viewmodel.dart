import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class RecruitmentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigatetoProfile() {
    _navigationService.replaceWith(Routes.profileView);
  }

  void navigatetoHome() {
    _navigationService.replaceWithHomeView();
  }

  void navigatetoScore() {
    _navigationService.replaceWith(Routes.scoreboardView);
  }

  void navigatetoJobs() {
    _navigationService.replaceWith(Routes.recruitmentView);
  }
}
