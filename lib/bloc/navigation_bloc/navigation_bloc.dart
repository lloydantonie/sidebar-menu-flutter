import 'package:bloc/bloc.dart';
import 'package:sidebar_menu/pages/Contactuspage.dart';
import 'package:sidebar_menu/pages/aboutuspage.dart';
import 'package:sidebar_menu/pages/donatepage.dart';
import 'package:sidebar_menu/pages/homepage.dart';
import 'package:sidebar_menu/pages/logout.dart';
import 'package:sidebar_menu/pages/myaccountpage.dart';
import 'package:sidebar_menu/pages/reportpage.dart';


enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  ReportPageClickedEvent,
  DonatePageClickedEvent,
  AboutUsPageClickedEvent,
  ContactUsPageClickedEvent,
  LogoutClickedEvent,
}

abstract class NavigationStates{}

class NavigationBloc extends Bloc<NavigationEvents,NavigationStates>{
  @override

  NavigationStates get initialState => HomePage();

  @override
  Stream <NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.ReportPageClickedEvent:
        yield ReportPage();
        break;
      case NavigationEvents.DonatePageClickedEvent:
        yield DonatePage();
        break;
      case NavigationEvents.AboutUsPageClickedEvent:
        yield AboutUsPage();
        break;
      case NavigationEvents.ContactUsPageClickedEvent:
        yield ContactUsPage();
        break;
      case NavigationEvents.LogoutClickedEvent:
        yield Logout();
        break;
    }
  }

}


