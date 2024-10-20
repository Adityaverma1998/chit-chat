

import 'package:chit_chat/services/services_injection/services_injection.dart';
import 'package:get_it/get_it.dart';

final  getIt = GetIt.instance;

class ServiceLocators{
  static Future<void> configureDependencies() async {

    await ServicesInjection.configureServicesInjection();
  }
}
