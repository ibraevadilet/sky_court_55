import 'dart:async' show Future;

import 'package:adapty_flutter/adapty_flutter.dart';

class HETethgnrtr {
  void Function(AdaptyError)? onDfsdfasdfaafasErrorOccurred;
  void Function(Object)? onLearAdaUnknownErrorOccurred;

  final learAdaAdapty = Adapty();

  static final HETethgnrtr _learAdaInstance = HETethgnrtr._internal();

  factory HETethgnrtr() {
    return _learAdaInstance;
  }

  HETethgnrtr._internal();

  Future<AdaptyProfile?> safagfag() async {
    try {
      final ocev = await learAdaAdapty.getProfile();
      return ocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }
    return null;
  }

  Future<void> yuturg() async {
    try {
      learAdaAdapty.setLogLevel(AdaptyLogLevel.verbose);
      learAdaAdapty.activate();
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }
  }

  Future<AdaptyPaywall?> eryerhjth(
    String learAdaPaywallId,
  ) async {
    try {
      final learAdaocev = await learAdaAdapty.getPaywall(
        placementId: learAdaPaywallId,
        loadTimeout: const Duration(seconds: 5),
      );
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<List<AdaptyPaywallProduct>?> hgfhdgsbfngmh(
    AdaptyPaywall learAdaPaywall,
  ) async {
    try {
      final learAdaocev =
          await learAdaAdapty.getPaywallProducts(paywall: learAdaPaywall);
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> khgjfhdgsdhfjgh(
      AdaptyPaywallProduct learAdaProduct) async {
    try {
      final learAdaocev =
          await learAdaAdapty.makePurchase(product: learAdaProduct);
      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<AdaptyProfile?> iuyitrhdgf() async {
    try {
      final learAdaocev = await learAdaAdapty.restorePurchases();

      return learAdaocev;
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return null;
  }

  Future<bool> ertfger() async {
    try {
      final learAdaProfile = await learAdaAdapty.getProfile();
      if (learAdaProfile.accessLevels['premium']?.isActive ?? false) {
        return true;
      }
    } on AdaptyError catch (adaptyError) {
      onDfsdfasdfaafasErrorOccurred?.call(adaptyError);
    } catch (e) {
      onLearAdaUnknownErrorOccurred?.call(e);
    }

    return false;
  }
}
