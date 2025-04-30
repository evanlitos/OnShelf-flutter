import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? MenuWidget() : SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? MenuWidget() : SignInWidget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: SignInWidget.routeName,
          path: SignInWidget.routePath,
          builder: (context, params) => SignInWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: SuccessInstructionsWidget.routeName,
          path: SuccessInstructionsWidget.routePath,
          builder: (context, params) => SuccessInstructionsWidget(),
        ),
        FFRoute(
          name: CheckinWidget.routeName,
          path: CheckinWidget.routePath,
          builder: (context, params) => CheckinWidget(),
        ),
        FFRoute(
          name: MenuWidget.routeName,
          path: MenuWidget.routePath,
          builder: (context, params) => MenuWidget(),
        ),
        FFRoute(
          name: TakepictureWidget.routeName,
          path: TakepictureWidget.routePath,
          builder: (context, params) => TakepictureWidget(),
        ),
        FFRoute(
          name: S1BlockCategories2Widget.routeName,
          path: S1BlockCategories2Widget.routePath,
          builder: (context, params) => S1BlockCategories2Widget(),
        ),
        FFRoute(
          name: S2BlockCategoriesInstructionsWidget.routeName,
          path: S2BlockCategoriesInstructionsWidget.routePath,
          builder: (context, params) => S2BlockCategoriesInstructionsWidget(),
        ),
        FFRoute(
          name: S22ResumeTakePhoto3Widget.routeName,
          path: S22ResumeTakePhoto3Widget.routePath,
          builder: (context, params) => S22ResumeTakePhoto3Widget(
            foto: params.getParam(
              'foto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: S3BeforePhotoDiagram4Widget.routeName,
          path: S3BeforePhotoDiagram4Widget.routePath,
          builder: (context, params) => S3BeforePhotoDiagram4Widget(
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: S6ScanProducts5Widget.routeName,
          path: S6ScanProducts5Widget.routePath,
          builder: (context, params) => S6ScanProducts5Widget(
            aFoto: params.getParam(
              'aFoto',
              ParamType.FFUploadedFile,
            ),
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: BlockAlienproductsWidget.routeName,
          path: BlockAlienproductsWidget.routePath,
          builder: (context, params) => BlockAlienproductsWidget(),
        ),
        FFRoute(
          name: InstructionsAlienProductWidget.routeName,
          path: InstructionsAlienProductWidget.routePath,
          builder: (context, params) => InstructionsAlienProductWidget(),
        ),
        FFRoute(
          name: InstructionsAlienProductPhotoWidget.routeName,
          path: InstructionsAlienProductPhotoWidget.routePath,
          builder: (context, params) => InstructionsAlienProductPhotoWidget(
            photo: params.getParam(
              'photo',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: S5AferResumeTakePhoto3CopyWidget.routeName,
          path: S5AferResumeTakePhoto3CopyWidget.routePath,
          builder: (context, params) => S5AferResumeTakePhoto3CopyWidget(
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
            aFoto: params.getParam(
              'aFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: S4AfterBlockCategoriesInstructionsCopyWidget.routeName,
          path: S4AfterBlockCategoriesInstructionsCopyWidget.routePath,
          builder: (context, params) =>
              S4AfterBlockCategoriesInstructionsCopyWidget(
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: S7FillProductWidget.routeName,
          path: S7FillProductWidget.routePath,
          builder: (context, params) => S7FillProductWidget(
            product: params.getParam(
              'product',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProductsStruct.fromSerializableMap,
            ),
            itemIndex: params.getParam(
              'itemIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Rep1ScanblockidWidget.routeName,
          path: Rep1ScanblockidWidget.routePath,
          builder: (context, params) => Rep1ScanblockidWidget(),
        ),
        FFRoute(
          name: REP2InstructionsBeforeFotoWidget.routeName,
          path: REP2InstructionsBeforeFotoWidget.routePath,
          builder: (context, params) => REP2InstructionsBeforeFotoWidget(),
        ),
        FFRoute(
          name: REP3ResumeBeforeFotoWidget.routeName,
          path: REP3ResumeBeforeFotoWidget.routePath,
          builder: (context, params) => REP3ResumeBeforeFotoWidget(
            foto: params.getParam(
              'foto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: REP4InstructionsAfterFotoWidget.routeName,
          path: REP4InstructionsAfterFotoWidget.routePath,
          builder: (context, params) => REP4InstructionsAfterFotoWidget(
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: REP5ResumeAfterFotoWidget.routeName,
          path: REP5ResumeAfterFotoWidget.routePath,
          builder: (context, params) => REP5ResumeAfterFotoWidget(
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
            aFoto: params.getParam(
              'aFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: REP6ScanProducts5CopyWidget.routeName,
          path: REP6ScanProducts5CopyWidget.routePath,
          builder: (context, params) => REP6ScanProducts5CopyWidget(
            aFoto: params.getParam(
              'aFoto',
              ParamType.FFUploadedFile,
            ),
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: REP7FillProductWidget.routeName,
          path: REP7FillProductWidget.routePath,
          builder: (context, params) => REP7FillProductWidget(
            product: params.getParam(
              'product',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProductsStruct.fromSerializableMap,
            ),
            itemIndex: params.getParam(
              'itemIndex',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: FRESH1BLOCKCATEGORIES2CopyWidget.routeName,
          path: FRESH1BLOCKCATEGORIES2CopyWidget.routePath,
          builder: (context, params) => FRESH1BLOCKCATEGORIES2CopyWidget(),
        ),
        FFRoute(
          name: FRESH2ProductsWidget.routeName,
          path: FRESH2ProductsWidget.routePath,
          builder: (context, params) => FRESH2ProductsWidget(),
        ),
        FFRoute(
          name: F1Fresh1Widget.routeName,
          path: F1Fresh1Widget.routePath,
          builder: (context, params) => F1Fresh1Widget(),
        ),
        FFRoute(
          name: PF1FinderWidget.routeName,
          path: PF1FinderWidget.routePath,
          builder: (context, params) => PF1FinderWidget(),
        ),
        FFRoute(
          name: PF2PlanogramWidget.routeName,
          path: PF2PlanogramWidget.routePath,
          builder: (context, params) => PF2PlanogramWidget(
            shelf: params.getParam(
              'shelf',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ShelfsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: RTB1FindCodeWidget.routeName,
          path: RTB1FindCodeWidget.routePath,
          builder: (context, params) => RTB1FindCodeWidget(),
        ),
        FFRoute(
          name: RTB2FillProductCopyWidget.routeName,
          path: RTB2FillProductCopyWidget.routePath,
          builder: (context, params) => RTB2FillProductCopyWidget(
            sku: params.getParam(
              'sku',
              ParamType.String,
            ),
            product: params.getParam(
              'product',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProductsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AbsenseWidget.routeName,
          path: AbsenseWidget.routePath,
          builder: (context, params) => AbsenseWidget(),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: ChooseRouteWidget.routeName,
          path: ChooseRouteWidget.routePath,
          builder: (context, params) => ChooseRouteWidget(),
        ),
        FFRoute(
          name: S6ScanProducts5CopyWidget.routeName,
          path: S6ScanProducts5CopyWidget.routePath,
          builder: (context, params) => S6ScanProducts5CopyWidget(
            aFoto: params.getParam(
              'aFoto',
              ParamType.FFUploadedFile,
            ),
            bFoto: params.getParam(
              'bFoto',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: ChooseRouteFreshnessWidget.routeName,
          path: ChooseRouteFreshnessWidget.routePath,
          builder: (context, params) => ChooseRouteFreshnessWidget(),
        ),
        FFRoute(
          name: BackDoorDeliveryWidget.routeName,
          path: BackDoorDeliveryWidget.routePath,
          builder: (context, params) => BackDoorDeliveryWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0x00FFFFFF),
                  child: Image.asset(
                    'assets/images/iconApp.png',
                    fit: BoxFit.contain,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
