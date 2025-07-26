import 'dart:async';

import 'serialization_util.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0x00FFFFFF),
          child: Image.asset(
            'assets/images/iconApp.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'SplashScreen': ParameterData.none(),
  'Sign_in': ParameterData.none(),
  'ForgotPassword': ParameterData.none(),
  'SuccessInstructions': ParameterData.none(),
  'Checkin': ParameterData.none(),
  'menu': ParameterData.none(),
  'takepicture': ParameterData.none(),
  'S1_BLOCK_CATEGORIES2': ParameterData.none(),
  'S2_BlockCategoriesInstructions': ParameterData.none(),
  'S2_2_Resume_TakePhoto_3': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'S3_Before_photo_diagram_4': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'S6_ScanProducts_5': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'BLOCK_ALIENPRODUCTS': ParameterData.none(),
  'InstructionsAlienProduct': ParameterData.none(),
  'InstructionsAlienProductPhoto': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'S5_AferResume_TakePhoto_3Copy': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'S4_AfterBlockCategoriesInstructionsCopy': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'S7_FillProduct': (data) async => ParameterData(
        allParams: {
          'itemIndex': getParameter<int>(data, 'itemIndex'),
        },
      ),
  'REP_1_SCANBLOCKID': ParameterData.none(),
  'REP_2_InstructionsBeforeFoto': ParameterData.none(),
  'REP_3_Resume_BeforeFoto': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'REP_4_InstructionsAfterFoto': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'REP_5_Resume_AfterFoto': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'REP_6_ScanProducts_5Copy': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'REP_7_FillProduct': (data) async => ParameterData(
        allParams: {
          'itemIndex': getParameter<int>(data, 'itemIndex'),
        },
      ),
  'FRESH1_BLOCK_CATEGORIES2Copy': ParameterData.none(),
  'FRESH2_Products': ParameterData.none(),
  'F1_FRESH1': ParameterData.none(),
  'PF1_finder': ParameterData.none(),
  'PF2_Planogram': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'RTB1_FindCode': ParameterData.none(),
  'RTB_2_FillProductCopy': (data) async => ParameterData(
        allParams: {
          'sku': getParameter<String>(data, 'sku'),
        },
      ),
  'absense': ParameterData.none(),
  'notifications': ParameterData.none(),
  'ChooseRoute': ParameterData.none(),
  'S6_ScanProducts_5Copy': (data) async => ParameterData(
        allParams: <String, dynamic>{},
      ),
  'ChooseRouteFreshness': ParameterData.none(),
  'BackDoorDelivery': ParameterData.none(),
  'P1_FORMNEWPLANO': ParameterData.none(),
  'P2_SCANPRODUCT': (data) async => ParameterData(
        allParams: {
          'shelfWidthCM': getParameter<int>(data, 'shelfWidthCM'),
          'shelfHeightCM': getParameter<int>(data, 'shelfHeightCM'),
          'numRows': getParameter<int>(data, 'numRows'),
          'shelfDepthCM': getParameter<int>(data, 'shelfDepthCM'),
          'nameShelf': getParameter<String>(data, 'nameShelf'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
