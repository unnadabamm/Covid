

// import 'package:flutter/material.dart';

// @immutable
// abstract class EnvironmentConfig extends InheritedWidget {
//   EnvironmentConfig({
//     Key key,
//      Widget child,
//   }) : super(key: key, child: child);

//   // final int logLevel = AppLog.LOG_LEVEL_OFF;
//   final bool isDebugMode = false;

//   bool get isProduction {
//     return !isDebug;
//   }

//   bool get isDebug {
//     return isDebugMode;
//   }

//   final bool isUsingMockApiData = false;

//   final bool isLogging = false;

//   final bool isSystemLogging = false;

//   String getServerType();

//   String getClientId();

//   String getClientSecret();

//   String getServiceApiBaseUrl();

//   String getServerApiKey();

//   String getFirebaseApiKey();

//   String getAppTitle();

//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) => true;

//   static EnvironmentConfig? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<EnvironmentConfig>();
//   }
// }

// class CMApiEnvironment extends EnvironmentConfig {
//   @override
//   final int logLevel = AppLog.LOG_LEVEL_D;

//   @override
//   final bool isDebugMode = true;

//   @override
//   final bool isUsingMockApiData = false;

//   CMApiEnvironment() : super(child: Container());

//   @override
//   String getServerType() => ServerType.cm;

//   @override
//   String getClientId() => 'YGvMeedZPKeByrnZfypTaV1UKOz9YpQANvh4DEXL';

//   @override
//   String getClientSecret() => 'vUxl9dPuMqOMgWcQFeyGUOxRObTbVMJ3wWGE9p3PwW2hcqo7YPveUSNaBNkHu1mtKWzm3pnPe4LpgODiTnclbouW3ROr45jEjy0ZvvW7EeIDqK2CHsKYKSwnVRNTjlHR';

//   @override
//   String getServiceApiBaseUrl() => 'https://fm-cm.sitearound.com/api';

//   @override
//   String getServerApiKey() => 'assets/api_keys/server_api_key_dev.json';

//   @override
//   String getFirebaseApiKey() => 'assets/api_keys/firebase_api_key_dev.json';

//   @override
//   String getAppTitle() => 'SiteAround';
// }

// class DevApiEnvironment extends EnvironmentConfig {
//   @override
//   final int logLevel = AppLog.LOG_LEVEL_D;

//   @override
//   final bool isDebugMode = true;

//   @override
//   final bool isUsingMockApiData = false;

//   DevApiEnvironment() : super(child: Container());

//   @override
//   String getServerType() => ServerType.dev;

//   @override
//   String getClientId() => 'YGvMeedZPKeByrnZfypTaV1UKOz9YpQANvh4DEXL';

//   @override
//   String getClientSecret() => 'vUxl9dPuMqOMgWcQFeyGUOxRObTbVMJ3wWGE9p3PwW2hcqo7YPveUSNaBNkHu1mtKWzm3pnPe4LpgODiTnclbouW3ROr45jEjy0ZvvW7EeIDqK2CHsKYKSwnVRNTjlHR';

//   @override
//   String getServiceApiBaseUrl() => 'https://fm-dev.sitearound.com/api';

//   @override
//   String getServerApiKey() => 'assets/api_keys/server_api_key_dev.json';

//   @override
//   String getFirebaseApiKey() => 'assets/api_keys/firebase_api_key_dev.json';

//   @override
//   String getAppTitle() => 'SiteAround';
// }

// class DevMockEnvironment extends EnvironmentConfig {
//   @override
//   final int logLevel = AppLog.LOG_LEVEL_D;

//   @override
//   final bool isDebugMode = true;

//   @override
//   final bool isUsingMockApiData = true;

//   DevMockEnvironment() : super(child: Container());

//   @override
//   String getServerType() => ServerType.dev;

//   @override
//   String getClientId() => 'YGvMeedZPKeByrnZfypTaV1UKOz9YpQANvh4DEXL';

//   @override
//   String getClientSecret() => 'vUxl9dPuMqOMgWcQFeyGUOxRObTbVMJ3wWGE9p3PwW2hcqo7YPveUSNaBNkHu1mtKWzm3pnPe4LpgODiTnclbouW3ROr45jEjy0ZvvW7EeIDqK2CHsKYKSwnVRNTjlHR';

//   @override
//   String getServiceApiBaseUrl() => '';

//   @override
//   String getServerApiKey() => 'assets/api_keys/server_api_key_dev.json';

//   @override
//   String getFirebaseApiKey() => 'assets/api_keys/firebase_api_key_dev.json';

//   @override
//   String getAppTitle() => 'SiteAround';
// }

// class ProductionEnvironment extends EnvironmentConfig {
//   @override
//   final int logLevel = AppLog.LOG_LEVEL_W;

//   @override
//   final bool isDebugMode = false;

//   @override
//   final bool isUsingMockApiData = false;

//   ProductionEnvironment() : super(child: Container());

//   @override
//   String getServerType() => ServerType.demo;

//   @override
//   String getClientId() => 'YGvMeedZPKeByrnZfypTaV1UKOz9YpQANvh4DEXL';

//   @override
//   String getClientSecret() => 'vUxl9dPuMqOMgWcQFeyGUOxRObTbVMJ3wWGE9p3PwW2hcqo7YPveUSNaBNkHu1mtKWzm3pnPe4LpgODiTnclbouW3ROr45jEjy0ZvvW7EeIDqK2CHsKYKSwnVRNTjlHR';

//   @override
//   String getServiceApiBaseUrl() => 'https://fm-demo.sitearound.com/api';

//   @override
//   String getServerApiKey() => 'assets/api_keys/server_api_key_prod.json';

//   @override
//   String getFirebaseApiKey() => 'assets/api_keys/firebase_api_key_prod.json';

//   @override
//   String getAppTitle() => 'SiteAround';
// }
