import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Info Group Code

class SupabaseInfoGroup {
  static String getBaseUrl({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    return '${supabaseUrl}/rest/v1';
  }

  static Map<String, String> headers = {
    'apikey': '[SupabaseAnonKey]',
    'Content-Type': 'application/json',
  };
  static BuyerInfoCall buyerInfoCall = BuyerInfoCall();
  static BuyerCardInfoCall buyerCardInfoCall = BuyerCardInfoCall();
  static AdminUsersInfoCall adminUsersInfoCall = AdminUsersInfoCall();
  static TestUsersBuildInfoCall testUsersBuildInfoCall =
      TestUsersBuildInfoCall();
  static VehicleUserInfoCall vehicleUserInfoCall = VehicleUserInfoCall();
  static VehicleUserByIDInfoCall vehicleUserByIDInfoCall =
      VehicleUserByIDInfoCall();
  static UpsertVehicleUserInfoCall upsertVehicleUserInfoCall =
      UpsertVehicleUserInfoCall();
  static UpsertSellerFilterInfoCall upsertSellerFilterInfoCall =
      UpsertSellerFilterInfoCall();
  static UpsertAdInfoCall upsertAdInfoCall = UpsertAdInfoCall();
  static DeleteVehicleUserInfoCall deleteVehicleUserInfoCall =
      DeleteVehicleUserInfoCall();
  static UpdateDataUsersInfoCall updateDataUsersInfoCall =
      UpdateDataUsersInfoCall();
  static UpdateDataUsersSellerFilterInfoCall
      updateDataUsersSellerFilterInfoCall =
      UpdateDataUsersSellerFilterInfoCall();
  static BuyerApprovedRequestsInfoCall buyerApprovedRequestsInfoCall =
      BuyerApprovedRequestsInfoCall();
  static OpenAllApprovedRequestsInfoCall openAllApprovedRequestsInfoCall =
      OpenAllApprovedRequestsInfoCall();
  static OpenAllApprovedRequestsInfoCountCall
      openAllApprovedRequestsInfoCountCall =
      OpenAllApprovedRequestsInfoCountCall();
  static BuyerDiedRequestsInfoCall buyerDiedRequestsInfoCall =
      BuyerDiedRequestsInfoCall();
  static BuyerDeletedRequestsInfoCall buyerDeletedRequestsInfoCall =
      BuyerDeletedRequestsInfoCall();
  static BuyerPendingReviewRequestsInfoCall buyerPendingReviewRequestsInfoCall =
      BuyerPendingReviewRequestsInfoCall();
  static BuyerPendingReviewFeedbacksInfoCall
      buyerPendingReviewFeedbacksInfoCall =
      BuyerPendingReviewFeedbacksInfoCall();
  static BuyerRejectedFeedbacksInfoCall buyerRejectedFeedbacksInfoCall =
      BuyerRejectedFeedbacksInfoCall();
  static BuyerRejectedRequestsInfoCall buyerRejectedRequestsInfoCall =
      BuyerRejectedRequestsInfoCall();
  static SellerBuyerIDFromRequestsIDInfoCall
      sellerBuyerIDFromRequestsIDInfoCall =
      SellerBuyerIDFromRequestsIDInfoCall();
  static ModelsWithBrandsInfoCall modelsWithBrandsInfoCall =
      ModelsWithBrandsInfoCall();
  static PartsCategoryInfoCall partsCategoryInfoCall = PartsCategoryInfoCall();
  static SellerFiltersInfoCall sellerFiltersInfoCall = SellerFiltersInfoCall();
  static MyAdsInfoCall myAdsInfoCall = MyAdsInfoCall();
  static UpsertRequestInfoCall upsertRequestInfoCall = UpsertRequestInfoCall();
  static UpdateRequestInfoCall updateRequestInfoCall = UpdateRequestInfoCall();
  static UpdateFeedbackInfoCall updateFeedbackInfoCall =
      UpdateFeedbackInfoCall();
  static UpsertOfferInfoCall upsertOfferInfoCall = UpsertOfferInfoCall();
  static UpdateOfferInfoCall updateOfferInfoCall = UpdateOfferInfoCall();
  static UpsertOrderInfoCall upsertOrderInfoCall = UpsertOrderInfoCall();
  static SellerRequestsInfoCall sellerRequestsInfoCall =
      SellerRequestsInfoCall();
  static SellerRequestONEInfoCall sellerRequestONEInfoCall =
      SellerRequestONEInfoCall();
  static OpenRequestONEInfoCall openRequestONEInfoCall =
      OpenRequestONEInfoCall();
  static SellerRequestRejectedONEInfoCall sellerRequestRejectedONEInfoCall =
      SellerRequestRejectedONEInfoCall();
  static BuyerFilterONEInfoCall buyerFilterONEInfoCall =
      BuyerFilterONEInfoCall();
  static SellerRequestsInfoRESERVCall sellerRequestsInfoRESERVCall =
      SellerRequestsInfoRESERVCall();
  static SellerRequestsInfoALLCall sellerRequestsInfoALLCall =
      SellerRequestsInfoALLCall();
  static SellerRequestsRejectedInfoCall sellerRequestsRejectedInfoCall =
      SellerRequestsRejectedInfoCall();
  static HideVehicleUserInfoCall hideVehicleUserInfoCall =
      HideVehicleUserInfoCall();
  static UpdateVehicleUserInfoCall updateVehicleUserInfoCall =
      UpdateVehicleUserInfoCall();
  static HideRequestInfoCall hideRequestInfoCall = HideRequestInfoCall();
  static DiedRequestInfoCall diedRequestInfoCall = DiedRequestInfoCall();
  static DiedAdInfoCall diedAdInfoCall = DiedAdInfoCall();
  static AliveRequestInfoCall aliveRequestInfoCall = AliveRequestInfoCall();
  static RejectRequestInfoCall rejectRequestInfoCall = RejectRequestInfoCall();
  static HideOfferInfoCall hideOfferInfoCall = HideOfferInfoCall();
  static HideFilterInfoCall hideFilterInfoCall = HideFilterInfoCall();
  static HideAdInfoCall hideAdInfoCall = HideAdInfoCall();
  static CompleteOfferInfoCall completeOfferInfoCall = CompleteOfferInfoCall();
  static ViewOfferInfoCall viewOfferInfoCall = ViewOfferInfoCall();
  static RejectOfferInfoCall rejectOfferInfoCall = RejectOfferInfoCall();
  static AdminRequestsInfoCall adminRequestsInfoCall = AdminRequestsInfoCall();
  static ApprovedAdminRequestsInfoCall approvedAdminRequestsInfoCall =
      ApprovedAdminRequestsInfoCall();
  static ApprovedAdminOffersInfoCall approvedAdminOffersInfoCall =
      ApprovedAdminOffersInfoCall();
  static ApprovedAdminFeedbackInfoCall approvedAdminFeedbackInfoCall =
      ApprovedAdminFeedbackInfoCall();
  static RejectedAdminRequestsInfoCall rejectedAdminRequestsInfoCall =
      RejectedAdminRequestsInfoCall();
  static RejectedAdminOffersInfoCall rejectedAdminOffersInfoCall =
      RejectedAdminOffersInfoCall();
  static RejectedAdminFeedbacksInfoCall rejectedAdminFeedbacksInfoCall =
      RejectedAdminFeedbacksInfoCall();
  static RejectedAdminRequestsNotesInfoCall rejectedAdminRequestsNotesInfoCall =
      RejectedAdminRequestsNotesInfoCall();
  static RejectedAdminOffersNotesInfoCall rejectedAdminOffersNotesInfoCall =
      RejectedAdminOffersNotesInfoCall();
  static RejectedAdminFeedbacksNotesInfoCall
      rejectedAdminFeedbacksNotesInfoCall =
      RejectedAdminFeedbacksNotesInfoCall();
  static SellerPendingReviewOffersInfoCall sellerPendingReviewOffersInfoCall =
      SellerPendingReviewOffersInfoCall();
  static SellerApprovedOffersInfoCall sellerApprovedOffersInfoCall =
      SellerApprovedOffersInfoCall();
  static SellerRejectedOffersInfoCall sellerRejectedOffersInfoCall =
      SellerRejectedOffersInfoCall();
  static SellerDeletedOffersInfoCall sellerDeletedOffersInfoCall =
      SellerDeletedOffersInfoCall();
  static SellerCompletedOffersInfoCall sellerCompletedOffersInfoCall =
      SellerCompletedOffersInfoCall();
  static SellerNotSoldOffersInfoCall sellerNotSoldOffersInfoCall =
      SellerNotSoldOffersInfoCall();
  static BuyerOffersInfoCall buyerOffersInfoCall = BuyerOffersInfoCall();
  static BuyerOffersViewedInfoCall buyerOffersViewedInfoCall =
      BuyerOffersViewedInfoCall();
  static BuyerOffersRejectedInfoCall buyerOffersRejectedInfoCall =
      BuyerOffersRejectedInfoCall();
  static AdminOffersInfoCall adminOffersInfoCall = AdminOffersInfoCall();
  static AdminOrdersInfoCall adminOrdersInfoCall = AdminOrdersInfoCall();
  static AdminFeedbacksInfoCall adminFeedbacksInfoCall =
      AdminFeedbacksInfoCall();
  static BuyerOrdersInfoCall buyerOrdersInfoCall = BuyerOrdersInfoCall();
  static BuyerOrdersByRequestInfoCall buyerOrdersByRequestInfoCall =
      BuyerOrdersByRequestInfoCall();
  static BuyerCompletedOrdersInfoCall buyerCompletedOrdersInfoCall =
      BuyerCompletedOrdersInfoCall();
  static BuyerCancelledOrdersInfoCall buyerCancelledOrdersInfoCall =
      BuyerCancelledOrdersInfoCall();
  static SellerOrdersInfoCall sellerOrdersInfoCall = SellerOrdersInfoCall();
  static SellerCompletedOrdersInfoCall sellerCompletedOrdersInfoCall =
      SellerCompletedOrdersInfoCall();
  static SellerCancelledOrdersInfoCall sellerCancelledOrdersInfoCall =
      SellerCancelledOrdersInfoCall();
  static BuyerOrderCloseInfoCall buyerOrderCloseInfoCall =
      BuyerOrderCloseInfoCall();
  static BuyerFeedbackInfoCall buyerFeedbackInfoCall = BuyerFeedbackInfoCall();
  static SellerRatingInfoCall sellerRatingInfoCall = SellerRatingInfoCall();
  static BuyerRatingInfoCall buyerRatingInfoCall = BuyerRatingInfoCall();
  static UpdateSellerRatingInfoCall updateSellerRatingInfoCall =
      UpdateSellerRatingInfoCall();
  static GetRowDataUserCall getRowDataUserCall = GetRowDataUserCall();
  static NewOffersForRequestInfoCall newOffersForRequestInfoCall =
      NewOffersForRequestInfoCall();
  static ViewedOffersForRequestInfoCall viewedOffersForRequestInfoCall =
      ViewedOffersForRequestInfoCall();
  static AdminBuyerContractsInfoCall adminBuyerContractsInfoCall =
      AdminBuyerContractsInfoCall();
  static AdminSellerContractsInfoCall adminSellerContractsInfoCall =
      AdminSellerContractsInfoCall();
  static AdminBannersInfoCall adminBannersInfoCall = AdminBannersInfoCall();
  static AdminVehiclesInfoCall adminVehiclesInfoCall = AdminVehiclesInfoCall();
  static AdminSellerInfoCall adminSellerInfoCall = AdminSellerInfoCall();
  static AdminBuyerInfoCall adminBuyerInfoCall = AdminBuyerInfoCall();
  static ChatsBuyerInfoCall chatsBuyerInfoCall = ChatsBuyerInfoCall();
  static ChatsSellerInfoCall chatsSellerInfoCall = ChatsSellerInfoCall();
  static ChatsMessagesBuyerInfoCall chatsMessagesBuyerInfoCall =
      ChatsMessagesBuyerInfoCall();
  static ChatsMessagesSellerInfoCall chatsMessagesSellerInfoCall =
      ChatsMessagesSellerInfoCall();
}

class BuyerInfoCall {
  Future<ApiCallResponse> call({
    int? userIdApp,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Info',
      apiUrl:
          '${baseUrl}/data_users?select=full_name,roles(role),cities(id,city,countries(id,country)),vehicle_users(vin,years(year),car_models(model,car_brands(brand)))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "eq.${userIdApp}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? userRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].roles.role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carModel(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carBrand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].full_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cities.countries.country''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cities.city''',
      ));
  int? countryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cities.countries.id''',
      ));
  int? cityId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cities.id''',
      ));
  List<int>? carYear(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuyerCardInfoCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Card Info',
      apiUrl:
          '${baseUrl}/data_users?select=full_name,cities(city,countries(country)),rating,rating_count,seller_profiles(about,photo_urls)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "eq.${sellerID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? userRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].roles.role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carModel(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carBrand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].full_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cities.countries.country''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cities.city''',
      ));
  int? countryId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cities.countries.id''',
      ));
  int? cityId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cities.id''',
      ));
  List<int>? carYear(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users[:].years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AdminUsersInfoCall {
  Future<ApiCallResponse> call({
    int? roleID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Users Info',
      apiUrl: '${baseUrl}/data_users?select=id,role_id,created_at,phone',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'role_id': "eq.${roleID}",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TestUsersBuildInfoCall {
  Future<ApiCallResponse> call({
    int? roleID,
    int? build,
    bool? isDeleted,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Test Users Build Info',
      apiUrl:
          '${baseUrl}/data_users?select=id,role_id,created_at,phone,is_deleted,user_device_links!inner(id,user_devices!inner(id,build,platform))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'role_id': "eq.${roleID}",
        'order': "created_at.desc",
        'user_device_links.user_devices.build': "eq.${build}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VehicleUserInfoCall {
  Future<ApiCallResponse> call({
    int? userIdApp,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'VehicleUser Info',
      apiUrl:
          '${baseUrl}/vehicle_users?select=id,vin,photo,years(id,year),car_models(id,model,car_brands(id,brand)),data_users(id,full_name,roles(role))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Range': '0-9',
        'Prefer': 'count=exact',
      },
      params: {
        'user_id': "eq.${userIdApp}",
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? carVin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carModel(dynamic response) => (getJsonField(
        response,
        r'''$[:].car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carBrand(dynamic response) => (getJsonField(
        response,
        r'''$[:].car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_users.roles.role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_users.full_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? carYear(dynamic response) => (getJsonField(
        response,
        r'''$[:].years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? photos(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VehicleUserByIDInfoCall {
  Future<ApiCallResponse> call({
    int? carIdApp,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'VehicleUser by ID Info',
      apiUrl:
          '${baseUrl}/vehicle_users?select=id,vin,photo,years(id,year),car_models(id,model,car_brands(id,brand))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "eq.${carIdApp}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? carVin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carModel(dynamic response) => (getJsonField(
        response,
        r'''$[:].car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? carBrand(dynamic response) => (getJsonField(
        response,
        r'''$[:].car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_users.roles.role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_users.full_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? carYear(dynamic response) => (getJsonField(
        response,
        r'''$[:].years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? photos(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UpsertVehicleUserInfoCall {
  Future<ApiCallResponse> call({
    String? vin = '',
    int? modelId,
    int? userId,
    int? yearId,
    String? photo = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "vin": "${escapeStringForJson(vin)}",
  "user_id": ${userId},
  "model_id": ${modelId},
  "year_id": ${yearId},
  "photo": "${escapeStringForJson(photo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert VehicleUser Info',
      apiUrl: '${baseUrl}/vehicle_users?select=id',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates, return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertSellerFilterInfoCall {
  Future<ApiCallResponse> call({
    List<int>? partsCategoryIdListList,
    List<int>? carModelsIdListList,
    int? sellerId,
    bool? autopartsConditionNew = true,
    bool? autopartsConditionUsed = true,
    int? yearFrom,
    int? yearTo,
    int? carBrandId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final partsCategoryIdList = _serializeList(partsCategoryIdListList);
    final carModelsIdList = _serializeList(carModelsIdListList);

    final ffApiRequestBody = '''
{
  "seller_id": ${sellerId},
  "car_brand_id": ${carBrandId},
  "car_models_id_list": ${carModelsIdList},
  "parts_category_id_list": ${partsCategoryIdList},
  "autoparts_condition_new": ${autopartsConditionNew},
  "autoparts_condition_used": ${autopartsConditionUsed},
  "year_from": ${yearFrom},
  "year_to": ${yearTo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert SellerFilter Info',
      apiUrl: '${baseUrl}/filters?select=id',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates, return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertAdInfoCall {
  Future<ApiCallResponse> call({
    List<int>? partsCategoryIdListList,
    List<int>? carModelsIdListList,
    bool? autopartsConditionNew = true,
    bool? autopartsConditionUsed = true,
    int? yearFrom,
    int? yearTo,
    int? carBrandId,
    int? ownerId,
    String? description = '',
    int? price,
    int? currencyId,
    List<String>? photoUrlList,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final partsCategoryIdList = _serializeList(partsCategoryIdListList);
    final carModelsIdList = _serializeList(carModelsIdListList);
    final photoUrl = _serializeList(photoUrlList);

    final ffApiRequestBody = '''
{
  "owner_id": ${ownerId},
  "car_brand_id": ${carBrandId},
  "car_models_id_list": ${carModelsIdList},
  "parts_category_id_list": ${partsCategoryIdList},
  "autoparts_condition_new": ${autopartsConditionNew},
  "autoparts_condition_used": ${autopartsConditionUsed},
  "year_from": ${yearFrom},
  "year_to": ${yearTo},
  "description": "${escapeStringForJson(description)}",
  "price": ${price},
  "currency_id": ${currencyId},
  "photo_url": ${photoUrl}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Ad Info',
      apiUrl: '${baseUrl}/ads?select=id',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates, return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteVehicleUserInfoCall {
  Future<ApiCallResponse> call({
    int? carIdApp,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete VehicleUser Info',
      apiUrl: '${baseUrl}/vehicle_users',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "eq.${carIdApp}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDataUsersInfoCall {
  Future<ApiCallResponse> call({
    String? fullNameUser = '',
    int? userIdApp,
    int? cityIdUser,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "full_name" : "${escapeStringForJson(fullNameUser)}",
  "city_id" : "${cityIdUser}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update DataUsers Info',
      apiUrl: '${baseUrl}/data_users?id=eq.${userIdApp}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDataUsersSellerFilterInfoCall {
  Future<ApiCallResponse> call({
    int? userIdApp,
    List<int>? allModelsIdList,
    List<int>? allCategoriesIdList,
    bool? autopartsConditionUsed = true,
    bool? autopartsConditionNew = true,
    int? yearFrom,
    int? yearTo,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final allModelsId = _serializeList(allModelsIdList);
    final allCategoriesId = _serializeList(allCategoriesIdList);

    final ffApiRequestBody = '''
{
  "car_models_id" : "${allModelsId}",
  "parts_category_id" : "${allCategoriesId}",
  "autoparts_condition_used" : ${autopartsConditionUsed},
  "autoparts_condition_new" : ${autopartsConditionNew},
  "year_from" : ${yearFrom},
  "year_to" : ${yearTo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update DataUsers SellerFilter Info',
      apiUrl: '${baseUrl}/data_users?id=eq.${userIdApp}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuyerApprovedRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Approved Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,is_alive,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,is_visible,years(year),car_models(model,car_brands(brand)),data_users!inner(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'vehicle_users.data_users.id': "eq.${userId}",
        'status': "eq.${status}",
        'is_visible': "is.true",
        'is_alive': "is.true",
        'order': "created_at.desc",
        'vehicle_users.is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? photoDetail(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OpenAllApprovedRequestsInfoCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? offset,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Open All Approved Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,is_alive,is_visible,status,vehicle_users!inner(id,is_visible,years(year),car_models(model,car_brands(brand)))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'is_visible': "is.true",
        'is_alive': "is.true",
        'order': "created_at.desc",
        'vehicle_users.is_visible': "is.true",
        'limit': "${limit}",
        'offset': "${offset}",
        'status': "eq.approved",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? photoDetail(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OpenAllApprovedRequestsInfoCountCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Open All Approved Requests Info Count',
      apiUrl:
          '${baseUrl}/requests?select=is_alive,is_visible,status,vehicle_users!inner(is_visible)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.approved",
        'is_visible': "is.true",
        'is_alive': "is.true",
        'vehicle_users.is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? photoDetail(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerDiedRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Died Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,is_alive,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,is_visible,photo,years(year),car_models(model,car_brands(brand)),data_users!inner(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'vehicle_users.data_users.id': "eq.${userId}",
        'is_visible': "is.true",
        'is_alive': "is.false",
        'vehicle_users.is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? photoDetail(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerDeletedRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Deleted Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years(year),car_models(model,car_brands(brand)),data_users!inner(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'vehicle_users.data_users.id': "eq.${userId}",
        'is_visible': "is.false",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? photoDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?;
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerPendingReviewRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer PendingReview Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years(year),car_models(model,car_brands(brand)),data_users(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'vehicle_users.data_users.id': "eq.${userId}",
        'vehicle_users.data_users': "not.is.null",
        'status': "eq.${status}",
        'is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? photoDetail(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerPendingReviewFeedbacksInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer PendingReview Feedbacks Info',
      apiUrl:
          '${baseUrl}/feedbacks?select=id,created_at,order_rating,comment,status,orders!inner(offers!inner(data_users(id,full_name,phone,rating),requests!inner(vehicle_users!inner(data_users!inner(id,full_name,phone)))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'orders.offers.requests.vehicle_users.data_users.id': "eq.${userId}",
        'status': "eq.${status}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? orderRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? comment(dynamic response) => (getJsonField(
        response,
        r'''$[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerRejectedFeedbacksInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Rejected Feedbacks Info',
      apiUrl:
          '${baseUrl}/feedbacks?select=id,created_at,order_rating,comment,feedbacks_notes(note),status,orders!inner(offers!inner(data_users(id,full_name,phone,rating),requests!inner(vehicle_users!inner(data_users!inner(id,full_name,phone)))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'orders.offers.requests.vehicle_users.data_users.id': "eq.${userId}",
        'status': "eq.${status}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? comment(dynamic response) => (getJsonField(
        response,
        r'''$[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? orderRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuyerRejectedRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Rejected Requests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requests_notes(note),requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years(year),car_models(model,car_brands(brand)),data_users(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'vehicle_users.data_users.id': "eq.${userId}",
        'vehicle_users.data_users': "not.is.null",
        'status': "eq.${status}",
        'is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? photoDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?;
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? notes(dynamic response) => getJsonField(
        response,
        r'''$[:].requests_notes''',
        true,
      ) as List?;
}

class SellerBuyerIDFromRequestsIDInfoCall {
  Future<ApiCallResponse> call({
    String? reqID = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller BuyerID From RequestsID Info',
      apiUrl:
          '${baseUrl}/requests?select=id,vehicle_users!inner(id,data_users!inner(id))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${reqID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? model(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vin(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? carId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? brand(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? partCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? details(dynamic response) => (getJsonField(
        response,
        r'''$[:].requested_details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isVerified(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_verified''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isPublished(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_published''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isUsed(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_used''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? isNew(dynamic response) => (getJsonField(
        response,
        r'''$[:].condition_new''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? photoDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?;
  List? photoCar(dynamic response) => getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?;
  List<int>? requestId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? buyerId(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? notes(dynamic response) => getJsonField(
        response,
        r'''$[:].requests_notes''',
        true,
      ) as List?;
}

class ModelsWithBrandsInfoCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ModelsWithBrands Info',
      apiUrl: '${baseUrl}/car_brands?select=id,brand,car_models(id,model)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PartsCategoryInfoCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'PartsCategory Info',
      apiUrl: '${baseUrl}/parts_category?select=id,category',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SellerFiltersInfoCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerFilters Info',
      apiUrl:
          '${baseUrl}/filters?select=id,seller_id,parts_category_id_list,car_brand_id,car_models_id_list,autoparts_condition_new,autoparts_condition_used,year_from,year_to,is_visible',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'seller_id': "eq.${sellerID}",
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MyAdsInfoCall {
  Future<ApiCallResponse> call({
    int? ownerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'My Ads Info',
      apiUrl:
          '${baseUrl}/ads?select=id,owner_id,parts_category_id_list,car_brands(id,brand),car_models_id_list,autoparts_condition_new,autoparts_condition_used,year_from,year_to,description,price,currencies!inner(id,currency),photo_url,is_alive,is_visible',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'owner_id': "eq.${ownerID}",
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertRequestInfoCall {
  Future<ApiCallResponse> call({
    List<int>? requestedPartIdList,
    String? requestedDetails = '',
    int? vehicleBuyerId,
    List<String>? photoUrlList,
    bool? conditionUsed = true,
    bool? conditionNew = true,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final requestedPartId = _serializeList(requestedPartIdList);
    final photoUrl = _serializeList(photoUrlList);

    final ffApiRequestBody = '''
{
  "requested_part_id": ${requestedPartId},
  "requested_details": "${escapeStringForJson(requestedDetails)}",
  "vehicle_buyer_id": ${vehicleBuyerId},
  "photo_url": ${photoUrl},
  "condition_used": ${conditionUsed},
  "condition_new": ${conditionNew}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Request Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,is_alive,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,is_visible,years(year),car_models(model,car_brands(brand)),data_users!inner(id))',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates, return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRequestInfoCall {
  Future<ApiCallResponse> call({
    List<int>? requestedPartIdList,
    String? requestedDetails = '',
    List<String>? photoUrlList,
    bool? conditionUsed = true,
    bool? conditionNew = true,
    String? status = '',
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final requestedPartId = _serializeList(requestedPartIdList);
    final photoUrl = _serializeList(photoUrlList);

    final ffApiRequestBody = '''
{
  "requested_part_id": ${requestedPartId},
  "requested_details": "${escapeStringForJson(requestedDetails)}",
  "photo_url": ${photoUrl},
  "condition_used": ${conditionUsed},
  "condition_new": ${conditionNew},
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Request Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqID}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateFeedbackInfoCall {
  Future<ApiCallResponse> call({
    String? status = '',
    int? feedID,
    int? orderRating,
    String? comment = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "order_rating": ${orderRating},
  "comment": "${escapeStringForJson(comment)}",
  "status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Feedback Info',
      apiUrl: '${baseUrl}/feedbacks?id=eq.${feedID}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertOfferInfoCall {
  Future<ApiCallResponse> call({
    int? requestId,
    int? sellerId,
    int? currencyId,
    List<String>? photoUrlList,
    int? price,
    String? details = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final photoUrl = _serializeList(photoUrlList);

    final ffApiRequestBody = '''
{
  "request_id": ${requestId},
  "seller_id": ${sellerId},
  "currency_id": ${currencyId},
  "photo_url": ${photoUrl},
  "price": ${price},
  "details": "${escapeStringForJson(details)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Offer Info',
      apiUrl: '${baseUrl}/offers',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOfferInfoCall {
  Future<ApiCallResponse> call({
    int? offID,
    List<String>? photoUrlList,
    int? price,
    String? details = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final photoUrl = _serializeList(photoUrlList);

    final ffApiRequestBody = '''
{
  "photo_url": ${photoUrl},
  "price": ${price},
  "details": "${escapeStringForJson(details)}",
  "status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Offer Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offID}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertOrderInfoCall {
  Future<ApiCallResponse> call({
    int? offerId,
    String? orderStatus = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "offer_id" : ${offerId},
  "order_status" : "${escapeStringForJson(orderStatus)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Order Info',
      apiUrl: '${baseUrl}/orders',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SellerRequestsInfoCall {
  Future<ApiCallResponse> call({
    bool? isUsed = true,
    bool? isNew = true,
    String? selectedCategoryIds = '',
    String? selectedModelIds = '',
    String? status = '',
    int? sellerID,
    int? yearFrom = 1,
    int? yearTo = 61,
    int? selectedBrandId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,parts_category!inner(id,category),requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years!inner(id,year),car_models!inner(id,model,car_brands(id,brand)),data_users(id)),seller_requests(seller_id,request_id,is_rejected)&vehicle_users.years.id=gte.${yearFrom}&vehicle_users.years.id=lte.${yearTo}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'parts_category.id': "in.(${selectedCategoryIds})",
        'vehicle_users.car_models.id': "in.(${selectedModelIds})",
        'status': "eq.${status}",
        'is_visible': "is.true",
        'is_completed': "is.false",
        'or': "(condition_used.eq.${isUsed},condition_new.eq.${isNew})",
        'seller_requests': "is.null",
        'vehicle_users.car_models.car_brands.id': "in.(${selectedBrandId})",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
}

class SellerRequestONEInfoCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequest ONE Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years!inner(id,year),car_models!inner(id,model,car_brands(id,brand)),data_users!inner(id,phone,cities(id,countries!inner(id)))),seller_requests(seller_id,request_id,is_rejected)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${reqID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
  int? countryID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.cities.countries.id''',
      ));
  int? cityID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.cities.id''',
      ));
}

class OpenRequestONEInfoCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Open Request ONE Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,condition_used,condition_new,photo_url,vehicle_users!inner(vin,years!inner(year),car_models!inner(model,car_brands(brand)))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${reqID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
}

class SellerRequestRejectedONEInfoCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequest Rejected ONE Info',
      apiUrl:
          '${baseUrl}/requests?select=id,vehicle_users!inner(years!inner(year),car_models!inner(model,car_brands(brand)))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${reqID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
}

class BuyerFilterONEInfoCall {
  Future<ApiCallResponse> call({
    int? filterID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Filter ONE Info',
      apiUrl:
          '${baseUrl}/filters?select=id,created_at,data_users!inner(id,phone,rating,cities(id,city,countries(id,country,flag_url)))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${filterID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? countryID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.cities.countries.id''',
      ));
  int? cityID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.cities.id''',
      ));
}

class SellerRequestsInfoRESERVCall {
  Future<ApiCallResponse> call({
    bool? isUsed = true,
    bool? isNew = true,
    String? selectedCategoryIds = '',
    String? selectedModelIds = '',
    String? status = '',
    int? userID,
    int? yearFrom = 1,
    int? yearTo = 61,
    int? selectedBrandId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequests Info RESERV',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years!inner(id,year),car_models!inner(id,model,car_brands(id,brand)),data_users(id,phone)),seller_requests!inner(seller_id,request_id,is_rejected)&vehicle_users.years.id=gte.${yearFrom}&vehicle_users.years.id=lte.${yearTo}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'is_visible': "is.true",
        'is_alive': "is.true",
        'or': "(condition_used.eq.${isUsed},condition_new.eq.${isNew})",
        'seller_requests.seller_id': "neq.${userID}",
        'vehicle_users.car_models.car_brands.id': "eq.${selectedBrandId}",
        'vehicle_users.car_models.id': "in.(${selectedModelIds})",
        'requested_part_id': "ov.{${selectedCategoryIds}}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
}

class SellerRequestsInfoALLCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? userID = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequests Info ALL',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years!inner(id,year),car_models!inner(id,model,car_brands(id,brand)),data_users(id)),seller_requests!inner(seller_id,request_id,is_rejected)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'is_visible': "is.true",
        'is_alive': "is.true",
        'seller_requests.seller_id': "neq.${userID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
}

class SellerRequestsRejectedInfoCall {
  Future<ApiCallResponse> call({
    String? status = '',
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'SellerRequests Rejected Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,photo,years(year),car_models!inner(id,model,car_brands(brand)),data_users(id)),seller_requests!inner(seller_id,request_id,is_rejected)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'seller_requests.seller_id': "eq.${sellerID}",
        'seller_requests.is_rejected': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? partId(dynamic response) => (getJsonField(
        response,
        r'''$[:].parts_category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.data_users.id''',
      ));
  int? reqID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].vehicle_users.years.year''',
      ));
  List<String>? reqPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? reqDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requested_details''',
      ));
  List<String>? carPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicle_users.photos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? carVIN(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].vehicle_users.vin''',
      ));
  List<bool>? isRejected(dynamic response) => (getJsonField(
        response,
        r'''$[:].seller_requests[0].is_rejected''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? pgg(dynamic response) => getJsonField(
        response,
        r'''$[:].seller_requests''',
        true,
      ) as List?;
}

class HideVehicleUserInfoCall {
  Future<ApiCallResponse> call({
    int? carId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_visible": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hide VehicleUser Info',
      apiUrl: '${baseUrl}/vehicle_users?id=eq.${carId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateVehicleUserInfoCall {
  Future<ApiCallResponse> call({
    int? carId,
    int? carModel,
    String? carVin = '',
    String? carPhoto,
    int? carYear,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    carPhoto ??= null;
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "model_id": ${carModel},
  "vin": "${escapeStringForJson(carVin)}",
  "photo": "${escapeStringForJson(carPhoto)}",
  "year_id": ${carYear}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update VehicleUser Info',
      apiUrl: '${baseUrl}/vehicle_users?id=eq.${carId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HideRequestInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_visible": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hide Request Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiedRequestInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_alive": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Died Request Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiedAdInfoCall {
  Future<ApiCallResponse> call({
    int? adId,
    bool? status,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_alive": ${status}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Died Ad Info',
      apiUrl: '${baseUrl}/ads?id=eq.${adId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AliveRequestInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_alive": "True",
  "created_at": "now()"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Alive Request Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectRequestInfoCall {
  Future<ApiCallResponse> call({
    int? reqID,
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "seller_id" : ${sellerID},
  "request_id" : ${reqID},
  "is_rejected": "True"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reject Request Info',
      apiUrl: '${baseUrl}/seller_requests',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HideOfferInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_visible": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hide Offer Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HideFilterInfoCall {
  Future<ApiCallResponse> call({
    int? filterId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_visible": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hide Filter Info',
      apiUrl: '${baseUrl}/filters?id=eq.${filterId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HideAdInfoCall {
  Future<ApiCallResponse> call({
    int? adId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_visible": "False"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Hide Ad Info',
      apiUrl: '${baseUrl}/ads?id=eq.${adId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompleteOfferInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_completed": "True"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Complete Offer Info',
      apiUrl: '${baseUrl}/offers?request_id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ViewOfferInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_viewed": "True"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'View Offer Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectOfferInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "is_rejected": "True"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reject Offer Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminRequestsInfoCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'AdminRequests Info',
      apiUrl:
          '${baseUrl}/requests?select=id,created_at,requested_part_id,requested_details,status,condition_used,condition_new,photo_url,vehicle_users(id,vin,photo,years(year),car_models(id,model,car_brands(brand)),data_users(id,uid,phone)),requests_notes(request_id,note)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApprovedAdminRequestsInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Approved AdminRequests Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApprovedAdminOffersInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Approved AdminOffers Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApprovedAdminFeedbackInfoCall {
  Future<ApiCallResponse> call({
    int? feedId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Approved AdminFeedback Info',
      apiUrl: '${baseUrl}/feedbacks?id=eq.${feedId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminRequestsInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminRequests Info',
      apiUrl: '${baseUrl}/requests?id=eq.${reqId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminOffersInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminOffers Info',
      apiUrl: '${baseUrl}/offers?id=eq.${offId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminFeedbacksInfoCall {
  Future<ApiCallResponse> call({
    int? feedId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminFeedbacks Info',
      apiUrl: '${baseUrl}/feedbacks?id=eq.${feedId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminRequestsNotesInfoCall {
  Future<ApiCallResponse> call({
    int? reqId,
    int? adminId,
    String? note = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "request_id" : ${reqId},
  "admin_id" : ${adminId},
  "note" : "${escapeStringForJson(note)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminRequestsNotes Info',
      apiUrl: '${baseUrl}/requests_notes',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminOffersNotesInfoCall {
  Future<ApiCallResponse> call({
    int? offId,
    int? adminId,
    String? note = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "offer_id" : ${offId},
  "admin_id" : ${adminId},
  "note" : "${escapeStringForJson(note)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminOffersNotes Info',
      apiUrl: '${baseUrl}/offers_notes',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RejectedAdminFeedbacksNotesInfoCall {
  Future<ApiCallResponse> call({
    int? feedId,
    int? adminId,
    String? note = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "feedback_id" : ${feedId},
  "admin_id" : ${adminId},
  "note" : "${escapeStringForJson(note)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rejected AdminFeedbacksNotes Info',
      apiUrl: '${baseUrl}/feedbacks_notes',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SellerPendingReviewOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller PendingReview Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,data_users(id,full_name),requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'seller_id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerApprovedOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Approved Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,data_users(id,full_name),requests!inner(id,is_alive,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'seller_id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
        'requests.is_alive': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerRejectedOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Rejected Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users(id,full_name),requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'seller_id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerDeletedOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Deleted Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users(id,full_name),requests(id,requested_part_id,requested_details,photo_url,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'seller_id': "eq.${userId}",
        'is_visible': "is.false",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerCompletedOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Completed Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users(id,full_name),requests(id,requested_part_id,requested_details,photo_url,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'seller_id': "eq.${userId}",
        'is_completed': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerNotSoldOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Not Sold Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users(id,full_name),requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year))),price,details,status,currencies(id,currency),photo_url,orders(id)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'seller_id': "eq.${userId}",
        'is_completed': "is.true",
        'orders.id': "is.null",
        'order': "id.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerOffersInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users!inner(id,full_name,rating,phone),requests!inner(id,is_alive,requested_part_id,requested_details,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,car_models(model,car_brands(brand)),years(year),data_users!inner(id,phone,full_name))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'requests.vehicle_users.data_users.id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
        'is_rejected': "is.false",
        'is_viewed': "is.false",
        'requests.is_alive': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerOffersViewedInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Offers Viewed Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users!inner(id,full_name,rating,phone),requests!inner(id,is_alive,requested_part_id,requested_details,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,car_models(model,car_brands(brand)),years(year),data_users!inner(id,phone,full_name))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'requests.vehicle_users.data_users.id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
        'is_rejected': "is.false",
        'is_viewed': "is.true",
        'requests.is_alive': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerOffersRejectedInfoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Offers Rejected Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users!inner(id,full_name,rating,phone),requests!inner(id,is_alive,requested_part_id,requested_details,condition_used,condition_new,photo_url,vehicle_users!inner(id,vin,car_models(model,car_brands(brand)),years(year),data_users!inner(id,phone,full_name))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'requests.vehicle_users.data_users.id': "eq.${userId}",
        'is_visible': "is.true",
        'is_completed': "is.false",
        'is_rejected': "is.true",
        'requests.is_alive': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class AdminOffersInfoCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Offers Info',
      apiUrl:
          '${baseUrl}/offers?select=id,created_at,offers_notes(note),data_users(id,uid,full_name),requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,car_models(model,car_brands(brand)),years(year),data_users(id,uid))),price,details,status,currencies(id,currency),photo_url',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${status}",
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class AdminOrdersInfoCall {
  Future<ApiCallResponse> call({
    String? orderStatus = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'order_status': "not.eq.${orderStatus}",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class AdminFeedbacksInfoCall {
  Future<ApiCallResponse> call({
    String? feedbackStatus = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Feedbacks Info',
      apiUrl:
          '${baseUrl}/feedbacks?select=id,created_at,rating,comment,status,seller_id,buyer_id',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'status': "eq.${feedbackStatus}",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? comment(dynamic response) => (getJsonField(
        response,
        r'''$[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? orderRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].order_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuyerOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? orderStatus = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests!inner(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users!inner(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users!inner(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'offers.requests.vehicle_users.data_users.id': "eq.${userID}",
        'order_status': "eq.${orderStatus}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerOrdersByRequestInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? orderStatus = '',
    int? requestID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Orders By Request Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests!inner(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users!inner(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users!inner(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'offers.requests.vehicle_users.data_users.id': "eq.${userID}",
        'order_status': "eq.${orderStatus}",
        'offers.requests.id': "eq.${requestID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerCompletedOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Completed Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests!inner(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users!inner(id,vin,is_visible,photo,car_models(model,car_brands(brand)),years(year),data_users!inner(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'offers.requests.vehicle_users.data_users.id': "eq.${userID}",
        'or':
            "(order_status.eq.completedBuyer,order_status.eq.completedSeller)",
        'offers.requests.vehicle_users.is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerCancelledOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Cancelled Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests!inner(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users!inner(id,vin,is_visible,photo,car_models(model,car_brands(brand)),years(year),data_users!inner(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'offers.requests.vehicle_users.data_users.id': "eq.${userID}",
        'or':
            "(order_status.eq.cancelledBuyer,order_status.eq.cancelledSeller)",
        'offers.requests.vehicle_users.is_visible': "is.true",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? orderStatus = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'offers.seller_id': "eq.${userID}",
        'order_status': "eq.${orderStatus}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerCompletedOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Completed Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'offers.seller_id': "eq.${userID}",
        'or':
            "(order_status.eq.completedBuyer,order_status.eq.completedSeller)",
        'order': "id.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class SellerCancelledOrdersInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Cancelled Orders Info',
      apiUrl:
          '${baseUrl}/orders?select=id,created_at,order_status,offers!inner(id,offers_notes(note),data_users(id,full_name,phone,rating,cities(city,countries(country))),price,details,status,currencies(id,currency),photo_url,requests(id,requested_part_id,requested_details,photo_url,condition_used,condition_new,vehicle_users(id,vin,photo,car_models(model,car_brands(brand)),years(year),data_users(id,full_name,phone,cities(city,countries(country)),rating))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'offers.seller_id': "eq.${userID}",
        'or':
            "(order_status.eq.cancelledBuyer,order_status.eq.cancelledSeller)",
        'order': "id.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? offerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
  String? offerDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].details''',
      ));
  List<String>? offerPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? sellerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].data_users.id''',
      ));
  String? sellerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_users.full_name''',
      ));
  int? requestID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.id''',
      ));
  List<String>? requestPhoto(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests.photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? partCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.parts_category.category''',
      ));
  String? requestDetails(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.requested_details''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].currencies.currency''',
      ));
  String? carBrand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.car_brands.brand''',
      ));
  String? carModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.car_models.model''',
      ));
  int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.years.year''',
      ));
  String? carVin(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.vin''',
      ));
  int? carID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].requests.vehicle_users.id''',
      ));
}

class BuyerOrderCloseInfoCall {
  Future<ApiCallResponse> call({
    int? ordId,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "order_status" : "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Order Close Info',
      apiUrl: '${baseUrl}/orders?id=eq.${ordId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuyerFeedbackInfoCall {
  Future<ApiCallResponse> call({
    int? orderRating,
    String? comment = '',
    String? status = '',
    int? sellerId,
    int? buyerId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "rating": ${orderRating},
  "comment": "${escapeStringForJson(comment)}",
  "status": "${escapeStringForJson(status)}",
  "seller_id": ${sellerId},
  "buyer_id": ${buyerId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Feedback Info',
      apiUrl: '${baseUrl}/feedbacks',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SellerRatingInfoCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Seller Rating Info',
      apiUrl:
          '${baseUrl}/feedbacks?select=id,rating,comment,seller_id,buyer_id,status',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'seller_id': "eq.${sellerID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? orderRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? comment(dynamic response) => (getJsonField(
        response,
        r'''$[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuyerRatingInfoCall {
  Future<ApiCallResponse> call({
    int? buyerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Buyer Rating Info',
      apiUrl:
          '${baseUrl}/feedbacks?select=order_rating,comment,orders(id,offers(requests(vehicle_users(user_id))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'orders.offers.requests.vehicle_users.user_id': "eq.${buyerID}",
        'order_rating': "not.is.null",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ratings(dynamic response) => (getJsonField(
        response,
        r'''$[*].order_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class UpdateSellerRatingInfoCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    double? rating,
    int? ratingCount,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "rating" : ${rating},
  "rating_count" : ${ratingCount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Seller Rating Info',
      apiUrl: '${baseUrl}/data_users?id=eq.${sellerID}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRowDataUserCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Row DataUser',
      apiUrl: '${baseUrl}/data_users?select=id,is_licensed,is_blocked',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
      },
      params: {
        'id': "eq.${userID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  bool? islicensed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_licensed''',
      ));
  bool? isblocked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_blocked''',
      ));
}

class NewOffersForRequestInfoCall {
  Future<ApiCallResponse> call({
    int? requestID,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'New Offers For Request Info',
      apiUrl:
          '${baseUrl}/offers?select=id,request_id,is_viewed,is_visible,is_completed,is_rejected,requests(is_alive)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'request_id': "eq.${requestID}",
        'is_visible': "is.true",
        'is_viewed': "is.false",
        'is_completed': "is.false",
        'is_rejected': "is.false",
        'requests.is_alive': "is.true",
        'status': "eq.${status}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

class ViewedOffersForRequestInfoCall {
  Future<ApiCallResponse> call({
    int? requestID,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Viewed Offers For Request Info',
      apiUrl: '${baseUrl}/offers?select=id,request_id,is_viewed,is_visible',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'request_id': "eq.${requestID}",
        'is_visible': "is.true",
        'is_viewed': "is.true",
        'status': "eq.${status}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  bool? islicensed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_licensed''',
      ));
  bool? isblocked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_blocked''',
      ));
}

class AdminBuyerContractsInfoCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Buyer Contracts Info',
      apiUrl:
          '${baseUrl}/contracts?select=id,created_at,role_id,admin_id,content',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'role_id': "eq.1",
        'order': "created_at.desc",
        'limit': "1",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminSellerContractsInfoCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Seller Contracts Info',
      apiUrl:
          '${baseUrl}/contracts?select=id,created_at,role_id,admin_id,content',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'role_id': "eq.2",
        'order': "created_at.desc",
        'limit': "1",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminBannersInfoCall {
  Future<ApiCallResponse> call({
    int? placeID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Banners Info',
      apiUrl: '${baseUrl}/banners?select=id,created_at,admin_id,place,photo',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'order': "created_at.desc",
        'limit': "1",
        'place': "eq.${placeID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminVehiclesInfoCall {
  Future<ApiCallResponse> call({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Vehicles Info',
      apiUrl: '${baseUrl}/vehicle_users?select=id,created_at,is_visible',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'is_visible': "is.true",
        'order': "created_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminSellerInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Seller Info',
      apiUrl:
          '${baseUrl}/data_users?select=id,created_at,full_name,rating,cities(city),filters(id, seller_id,is_visible,autoparts_condition_new,autoparts_condition_used,year_from,year_to,parts_category_id_list,car_brand_id,car_models_id_list),offers(id,seller_id,price,currency_id,orders(id,order_status)),seller_requests(id,seller_id)',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${userID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminBuyerInfoCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Admin Buyer Info',
      apiUrl:
          '${baseUrl}/data_users?select=id,created_at,full_name,cities(city),vehicle_users(id,user_id,vin,years(id,year),photo,car_models(model,car_brands(brand)),requests(id,is_alive,offers(price,currency_id,orders(order_status))))',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
      },
      params: {
        'id': "eq.${userID}",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatsBuyerInfoCall {
  Future<ApiCallResponse> call({
    int? buyerID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chats Buyer Info',
      apiUrl:
          '${baseUrl}/chats?select=id,created_at,buyer_id,seller_id,last_message,last_message_at',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {
        'buyer_id': "eq.${buyerID}",
        'order': "last_message_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
        true,
      ) as List?;
}

class ChatsSellerInfoCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chats Seller Info',
      apiUrl:
          '${baseUrl}/chats?select=id,created_at,buyer_id,seller_id,last_message,last_message_at',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {
        'seller_id': "eq.${sellerID}",
        'order': "last_message_at.desc",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
        true,
      ) as List?;
}

class ChatsMessagesBuyerInfoCall {
  Future<ApiCallResponse> call({
    int? chatID,
    int? offset,
    int? limit,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chats Messages Buyer Info',
      apiUrl:
          '${baseUrl}/messages?select=id,created_at,chat_id,sender_id,status,is_removed,type,text,media_url,path,thumbnail_url,translated_text,content',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {
        'chat_id': "eq.${chatID}",
        'order': "created_at.desc",
        'limit': "${limit}",
        'offset': "${offset}",
        'is_removed': "is.False",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? senderID(dynamic response) => (getJsonField(
        response,
        r'''$[:].sender_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? text(dynamic response) => (getJsonField(
        response,
        r'''$[:].content.text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isRemoved(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_removed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class ChatsMessagesSellerInfoCall {
  Future<ApiCallResponse> call({
    int? chatID,
    int? offset,
    int? limit,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = SupabaseInfoGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chats Messages Seller Info',
      apiUrl:
          '${baseUrl}/messages?select=id,created_at,chat_id,sender_id,status,is_removed,type,text,media_url,path,thumbnail_url,translated_text,content',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${supabaseAnonKey}',
        'Content-Type': 'application/json',
        'Prefer': 'count=exact',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {
        'chat_id': "eq.${chatID}",
        'order': "created_at.desc",
        'limit': "${limit}",
        'offset': "${offset}",
        'is_removed': "is.False",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? senderID(dynamic response) => (getJsonField(
        response,
        r'''$[:].sender_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? text(dynamic response) => (getJsonField(
        response,
        r'''$[:].content.text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isRemoved(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_removed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

/// End Supabase Info Group Code

/// Start RPC Requests Filters Group Code

class RPCRequestsFiltersGroup {
  static String getBaseUrl({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    return '${supabaseUrl}/rest/v1/rpc/';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Prefer': 'return=representation,count=exact',
    'apikey': '[SupabaseAnonKey]',
    'Authorization': 'Bearer [SupabaseAnonKey]',
  };
  static DeactivateRequestLinksCall deactivateRequestLinksCall =
      DeactivateRequestLinksCall();
  static RebuildLinksForRequestCall rebuildLinksForRequestCall =
      RebuildLinksForRequestCall();
  static RebuildLinksForFilterCall rebuildLinksForFilterCall =
      RebuildLinksForFilterCall();
  static DeactivateFilterLinksCall deactivateFilterLinksCall =
      DeactivateFilterLinksCall();
  static SetRequestFilterStatusCall setRequestFilterStatusCall =
      SetRequestFilterStatusCall();
  static GetFiltersForRequestCall getFiltersForRequestCall =
      GetFiltersForRequestCall();
  static RestoreRequestFromProfileCall restoreRequestFromProfileCall =
      RestoreRequestFromProfileCall();
  static NotifySellersNewRequestCall notifySellersNewRequestCall =
      NotifySellersNewRequestCall();
  static GetRequestsForFilterCall getRequestsForFilterCall =
      GetRequestsForFilterCall();
  static GetRejectedRfForBuyerCall getRejectedRfForBuyerCall =
      GetRejectedRfForBuyerCall();
  static PurgeUserDataHardCall purgeUserDataHardCall = PurgeUserDataHardCall();
  static GetRejectedRfForSellerCall getRejectedRfForSellerCall =
      GetRejectedRfForSellerCall();
  static SetRequestFilterStatusForSellerCall
      setRequestFilterStatusForSellerCall =
      SetRequestFilterStatusForSellerCall();
  static HideVehicleRequestsFiltersCall hideVehicleRequestsFiltersCall =
      HideVehicleRequestsFiltersCall();
  static UpsertSellerProfileCall upsertSellerProfileCall =
      UpsertSellerProfileCall();
  static GetBuyersDashboardByRoleCall getBuyersDashboardByRoleCall =
      GetBuyersDashboardByRoleCall();
  static GetSellersDashboardByRoleCall getSellersDashboardByRoleCall =
      GetSellersDashboardByRoleCall();
}

class DeactivateRequestLinksCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deactivate request links',
      apiUrl: '${baseUrl}deactivate_request_links',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RebuildLinksForRequestCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rebuild links for request',
      apiUrl: '${baseUrl}rebuild_links_for_request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RebuildLinksForFilterCall {
  Future<ApiCallResponse> call({
    int? filterID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_filter_id": ${filterID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rebuild links for filter',
      apiUrl: '${baseUrl}rebuild_links_for_filter',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeactivateFilterLinksCall {
  Future<ApiCallResponse> call({
    int? filterID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_filter_id": ${filterID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deactivate filter links',
      apiUrl: '${baseUrl}deactivate_filter_links',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetRequestFilterStatusCall {
  Future<ApiCallResponse> call({
    int? reqID,
    int? filterID,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID},
  "p_filter_id": ${filterID},
  "p_status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'set request filter status',
      apiUrl: '${baseUrl}set_request_filter_status',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFiltersForRequestCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get filters for request',
      apiUrl: '${baseUrl}get_filters_for_request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RestoreRequestFromProfileCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'restore request from profile',
      apiUrl: '${baseUrl}restore_request_from_profile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NotifySellersNewRequestCall {
  Future<ApiCallResponse> call({
    int? reqID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'notify sellers new request',
      apiUrl: '${baseUrl}notify_sellers_new_request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRequestsForFilterCall {
  Future<ApiCallResponse> call({
    int? filterID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_filter_id": ${filterID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get requests for filter',
      apiUrl: '${baseUrl}get_requests_for_filter',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRejectedRfForBuyerCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get rejected rf for buyer',
      apiUrl: '${baseUrl}get_rejected_rf_for_buyer',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PurgeUserDataHardCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'purge user data hard',
      apiUrl: '${baseUrl}purge_user_data_hard',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRejectedRfForSellerCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get rejected rf for seller',
      apiUrl: '${baseUrl}get_rejected_rf_for_seller',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetRequestFilterStatusForSellerCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    int? reqID,
    String? status = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${sellerID},
  "p_request_id": ${reqID},
  "p_status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'set request filter status for seller',
      apiUrl: '${baseUrl}set_request_status_for_seller',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HideVehicleRequestsFiltersCall {
  Future<ApiCallResponse> call({
    int? vehicleID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_vehicle_id": ${vehicleID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'hide vehicle requests filters',
      apiUrl: '${baseUrl}hide_vehicle_requests_filters',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertSellerProfileCall {
  Future<ApiCallResponse> call({
    int? sellerId,
    String? about = '',
    List<String>? photoUrlsList,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final photoUrls = _serializeList(photoUrlsList);

    final ffApiRequestBody = '''
{
  "p_seller_id": ${sellerId},
  "p_about": "${escapeStringForJson(about)}",
  "p_photo_urls": ${photoUrls}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert seller profile',
      apiUrl: '${baseUrl}upsert_seller_profile',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBuyersDashboardByRoleCall {
  Future<ApiCallResponse> call({
    int? roleID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_role_id":${roleID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get buyers dashboard by role',
      apiUrl: '${baseUrl}get_buyers_dashboard_by_role',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? role(dynamic response) => (getJsonField(
        response,
        r'''$[:].role_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? created(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? deleted(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_deleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? build(dynamic response) => (getJsonField(
        response,
        r'''$[:].last_build''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? platform(dynamic response) => (getJsonField(
        response,
        r'''$[:].last_platform''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? vehTotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicles_total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? vehHid(dynamic response) => (getJsonField(
        response,
        r'''$[:].vehicles_hidden''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? reqTotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests_total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? reqHid(dynamic response) => (getJsonField(
        response,
        r'''$[:].requests_hidden''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetSellersDashboardByRoleCall {
  Future<ApiCallResponse> call({
    int? roleID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCRequestsFiltersGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_role_id": ${roleID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get sellers dashboard by role',
      apiUrl: '${baseUrl}get_sellers_dashboard_by_role',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? role(dynamic response) => (getJsonField(
        response,
        r'''$[:].role_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? created(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? deleted(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_deleted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? build(dynamic response) => (getJsonField(
        response,
        r'''$[*].last_build''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? platform(dynamic response) => (getJsonField(
        response,
        r'''$[:].last_platform''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? filterTotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].filters_total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? filterHid(dynamic response) => (getJsonField(
        response,
        r'''$[:].filters_hidden''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End RPC Requests Filters Group Code

/// Start RPC Seller Specializations Group Code

class RPCSellerSpecializationsGroup {
  static String getBaseUrl({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    return '${supabaseUrl}/rest/v1/rpc/';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Prefer': 'return=representation,count=exact',
    'apikey': '[SupabaseAnonKey]',
    'Authorization': 'Bearer [SupabaseAnonKey]',
  };
  static GetSellersBySpecializationCall getSellersBySpecializationCall =
      GetSellersBySpecializationCall();
  static SaveSellerSpecializationsCall saveSellerSpecializationsCall =
      SaveSellerSpecializationsCall();
  static SaveSellerSpecializationOneCall saveSellerSpecializationOneCall =
      SaveSellerSpecializationOneCall();
}

class GetSellersBySpecializationCall {
  Future<ApiCallResponse> call({
    int? specID,
    int? selectedCountryId,
    int? selectedCityId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCSellerSpecializationsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_spec_id": ${specID},
  "p_country_id": ${selectedCountryId},
  "p_city_id": ${selectedCityId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get sellers by specialization',
      apiUrl: '${baseUrl}get_sellers_by_specialization',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveSellerSpecializationsCall {
  Future<ApiCallResponse> call({
    List<int>? specIDsList,
    int? sellerID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCSellerSpecializationsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );
    final specIDs = _serializeList(specIDsList);

    final ffApiRequestBody = '''
{
  "p_seller_id": ${sellerID},
  "p_spec_ids": ${specIDs}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'save seller specializations',
      apiUrl: '${baseUrl}save_seller_specializations',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveSellerSpecializationOneCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    int? specID,
    bool? isActive = false,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCSellerSpecializationsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${sellerID},
  "p_spec_id": ${specID},
  "p_is_active": ${isActive}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'save seller specialization one',
      apiUrl: '${baseUrl}save_seller_specialization_one',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RPC Seller Specializations Group Code

/// Start RPC Chats Group Code

class RPCChatsGroup {
  static String getBaseUrl({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    return '${supabaseUrl}/rest/v1/rpc/';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Prefer': 'return=representation,count=exact',
    'apikey': '[SupabaseAnonKey]',
  };
  static ChSendMessageCall chSendMessageCall = ChSendMessageCall();
  static ChChatPreviewCall chChatPreviewCall = ChChatPreviewCall();
  static ChMarkChatReadCall chMarkChatReadCall = ChMarkChatReadCall();
  static ChPresenceOpenCall chPresenceOpenCall = ChPresenceOpenCall();
  static ChPresenceCloseCall chPresenceCloseCall = ChPresenceCloseCall();
  static ChGetOrCreateChatCall chGetOrCreateChatCall = ChGetOrCreateChatCall();
  static ChDeleteOwnMessageCall chDeleteOwnMessageCall =
      ChDeleteOwnMessageCall();
  static AdsGetForRequestCall adsGetForRequestCall = AdsGetForRequestCall();
  static AdsAddUniqueViewCall adsAddUniqueViewCall = AdsAddUniqueViewCall();
  static RequestAddUniqueViewCall requestAddUniqueViewCall =
      RequestAddUniqueViewCall();
  static AdGetViewsCountCall adGetViewsCountCall = AdGetViewsCountCall();
  static RequestGetViewsCountCall requestGetViewsCountCall =
      RequestGetViewsCountCall();
  static RequestActualityConfirmCall requestActualityConfirmCall =
      RequestActualityConfirmCall();
  static RequestActualityRemoveByBuyerCall requestActualityRemoveByBuyerCall =
      RequestActualityRemoveByBuyerCall();
}

class ChSendMessageCall {
  Future<ApiCallResponse> call({
    int? chatID,
    dynamic contentJson,
    String? currentJwtToken = '',
    String? text = '',
    String? type = '',
    String? mediaURL = '',
    String? path = '',
    String? thumbnailURL = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final content = _serializeJson(contentJson);
    final ffApiRequestBody = '''
{
  "p_chat_id": ${chatID},
  "p_content": ${content},
  "p_text": "${escapeStringForJson(text)}",
  "p_type": "${escapeStringForJson(type)}",
  "p_media_url": "${escapeStringForJson(mediaURL)}",
  "p_path": "${escapeStringForJson(path)}",
  "p_thumbnail_url": "${escapeStringForJson(thumbnailURL)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch send message',
      apiUrl: '${baseUrl}ch_send_message',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChChatPreviewCall {
  Future<ApiCallResponse> call({
    bool? isRemoved,
    String? type = '',
    String? text = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_is_removed": ${isRemoved},
  "p_type": "${escapeStringForJson(type)}",
  "p_text": "${escapeStringForJson(text)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch chat preview',
      apiUrl: '${baseUrl}ch_chat_preview',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChMarkChatReadCall {
  Future<ApiCallResponse> call({
    int? chatID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_chat_id": ${chatID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch mark chat read',
      apiUrl: '${baseUrl}ch_mark_chat_read',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChPresenceOpenCall {
  Future<ApiCallResponse> call({
    int? chatID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_chat_id": ${chatID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch presence open',
      apiUrl: '${baseUrl}ch_presence_open',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChPresenceCloseCall {
  Future<ApiCallResponse> call({
    int? chatID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_chat_id": ${chatID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch presence close',
      apiUrl: '${baseUrl}ch_presence_close',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChGetOrCreateChatCall {
  Future<ApiCallResponse> call({
    int? buyerID,
    int? sellerID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_buyer_id": ${buyerID},
  "p_seller_id": ${sellerID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch get or create chat',
      apiUrl: '${baseUrl}ch_get_or_create_chat',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChDeleteOwnMessageCall {
  Future<ApiCallResponse> call({
    int? messageID,
    String? currentJwtToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_message_id": ${messageID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ch delete own message',
      apiUrl: '${baseUrl}ch_delete_own_message',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${currentJwtToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdsGetForRequestCall {
  Future<ApiCallResponse> call({
    int? requestID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${requestID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ads get for request',
      apiUrl: '${baseUrl}ads_get_for_request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdsAddUniqueViewCall {
  Future<ApiCallResponse> call({
    int? buyerID,
    int? adId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_buyer_id": ${buyerID},
  "p_ad_id": ${adId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ads add unique view',
      apiUrl: '${baseUrl}ads_add_unique_view',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestAddUniqueViewCall {
  Future<ApiCallResponse> call({
    int? sellerID,
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${sellerID},
  "p_request_id": ${reqId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'request add unique view',
      apiUrl: '${baseUrl}add_request_unique_view',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdGetViewsCountCall {
  Future<ApiCallResponse> call({
    int? adId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_ad_id": ${adId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ad get views count',
      apiUrl: '${baseUrl}ad_get_views_count',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestGetViewsCountCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'request get views count',
      apiUrl: '${baseUrl}get_request_views_count',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestActualityConfirmCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'request actuality confirm',
      apiUrl: '${baseUrl}request_actuality_confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestActualityRemoveByBuyerCall {
  Future<ApiCallResponse> call({
    int? reqId,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCChatsGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_request_id": ${reqId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'request actuality remove by buyer',
      apiUrl: '${baseUrl}request_actuality_remove_by_buyer',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RPC Chats Group Code

/// Start RPC Users Device About Group Code

class RPCUsersDeviceAboutGroup {
  static String getBaseUrl({
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    return '${supabaseUrl}/rest/v1/rpc/';
  }

  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Prefer': 'return=representation,count=exact',
    'apikey': '[SupabaseAnonKey]',
    'Authorization': 'Bearer [SupabaseAnonKey]',
  };
  static AboutSellerCall aboutSellerCall = AboutSellerCall();
  static AboutBuyerCall aboutBuyerCall = AboutBuyerCall();
  static AllRequestsForSellerPaginCall allRequestsForSellerPaginCall =
      AllRequestsForSellerPaginCall();
  static AllRequestsForSellerFilterPaginCall
      allRequestsForSellerFilterPaginCall =
      AllRequestsForSellerFilterPaginCall();
  static AllRequestsForSellerCountCall allRequestsForSellerCountCall =
      AllRequestsForSellerCountCall();
  static AllRequestsForSellerFilterCountCall
      allRequestsForSellerFilterCountCall =
      AllRequestsForSellerFilterCountCall();
  static UpsertDeviceAndStartSessionCall upsertDeviceAndStartSessionCall =
      UpsertDeviceAndStartSessionCall();
}

class AboutSellerCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'About Seller',
      apiUrl: '${baseUrl}fn_seller_stats',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AboutBuyerCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'About Buyer',
      apiUrl: '${baseUrl}fn_buyer_stats',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllRequestsForSellerPaginCall {
  Future<ApiCallResponse> call({
    int? userID,
    int? limit,
    int? offset,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${userID},
  "p_limit": ${limit},
  "p_offset": ${offset}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'All Requests For Seller Pagin',
      apiUrl: '${baseUrl}requests_for_seller_pagin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllRequestsForSellerFilterPaginCall {
  Future<ApiCallResponse> call({
    int? userID,
    int? limit,
    int? offset,
    int? cityID = 0,
    int? countryID = 0,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${userID},
  "p_limit": ${limit},
  "p_offset": ${offset},
  "p_country_id": ${countryID},
  "p_city_id": ${cityID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'All Requests For Seller Filter Pagin',
      apiUrl: '${baseUrl}requests_for_seller_filter_pagin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllRequestsForSellerCountCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'All Requests For Seller Count',
      apiUrl: '${baseUrl}requests_for_seller_count',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AllRequestsForSellerFilterCountCall {
  Future<ApiCallResponse> call({
    int? userID,
    int? cityID = 0,
    int? countryID = 0,
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_seller_id": ${userID},
  "p_country_id": ${countryID},
  "p_city_id": ${cityID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'All Requests For Seller Filter Count',
      apiUrl: '${baseUrl}requests_for_seller_filter_count',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertDeviceAndStartSessionCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? installid = '',
    String? platform = '',
    int? build,
    String? fcmToken = '',
    String? supabaseUrl,
    String? supabaseAnonKey,
  }) async {
    supabaseUrl ??= FFDevEnvironmentValues().SupabaseUrl;
    supabaseAnonKey ??= FFDevEnvironmentValues().SupabaseAnonKey;
    final baseUrl = RPCUsersDeviceAboutGroup.getBaseUrl(
      supabaseUrl: supabaseUrl,
      supabaseAnonKey: supabaseAnonKey,
    );

    final ffApiRequestBody = '''
{
  "p_install_id": "${escapeStringForJson(installid)}",
  "p_platform": "${escapeStringForJson(platform)}",
  "p_build": ${build},
  "p_fcm_token": "${escapeStringForJson(fcmToken)}",
  "p_user_id": ${userID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'upsert device and start session',
      apiUrl: '${baseUrl}upsert_device_and_start_session',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation,count=exact',
        'apikey': '${supabaseAnonKey}',
        'Authorization': 'Bearer ${supabaseAnonKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RPC Users Device About Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
