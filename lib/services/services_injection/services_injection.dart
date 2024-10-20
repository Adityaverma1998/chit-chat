import 'package:chit_chat/di/serivce_locators.dart';
import 'package:chit_chat/services/cloud_storage_service/cloud_storage_service.dart';
import 'package:chit_chat/services/database_service/database_serivce.dart';
import 'package:chit_chat/services/media_service/media_service.dart';
import 'package:chit_chat/services/navigation_services/navigation_service.dart';
import 'package:flutter/cupertino.dart';

class ServicesInjection{

  static Future<void> configureServicesInjection() async {
    // await StoreModule.configureStoreModuleInjection();
    getIt.registerSingleton<CloudStorageService>(
      CloudStorageService(),
    );
    getIt.registerSingleton<NavigationService>(
      NavigationService(),
    );
    getIt.registerSingleton<MediaService>(
      MediaService(),
    ); getIt.registerSingleton<DatabaseService>(
      DatabaseService(),
    );
  }
}
