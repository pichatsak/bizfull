import 'package:bizfull/checkout/main_checkout.dart';
import 'package:bizfull/contack/main_contack.dart';
import 'package:bizfull/delively/main_delively.dart';
import 'package:bizfull/help/clickbabymm/main_clickbabymm.dart';
import 'package:bizfull/help/clickmm/main_clickmm.dart';
import 'package:bizfull/help/main_help.dart';
import 'package:bizfull/help/search/main_search.dart';
import 'package:bizfull/help/sendmail/main_sendmail.dart';
import 'package:bizfull/homepage/mainhome.dart';
import 'package:bizfull/login_and_registor/forgetpassword/mainmaster_forgetpassword.dart';
import 'package:bizfull/login_and_registor/mainMasterLogin.dart';
import 'package:bizfull/login_and_registor/mainmasterregistor.dart';
import 'package:bizfull/product/main_product.dart';
import 'package:bizfull/profile/account/main_profile.dart';
import 'package:bizfull/profile/addbuy/widget_profile_addbuy.dart';
import 'package:bizfull/profile/adddelivery/widget_profile_adddelivery.dart';
import 'package:bizfull/profile/address/widget_profile_address.dart';
import 'package:bizfull/profile/bank/widget_profile_bank.dart';
import 'package:bizfull/profile/cancle/widget_profile_cancle.dart';
import 'package:bizfull/profile/historysuc/widget_profile_historysuc.dart';
import 'package:bizfull/profile/loaddelivery/widget_profile_loaddelivery.dart';
import 'package:bizfull/profile/profile_mobile/main_profile_mobile.dart';
import 'package:bizfull/profile/resetpassword/widget_profile_reset.dart';
import 'package:bizfull/shopcart/main_shopcart.dart';
import 'package:bizfull/showproduct/dataproduct/comment/widget_all_comment.dart';
import 'package:bizfull/showproduct/main_showproduct.dart';
import 'package:fluro/fluro.dart';

class FluroRouters {
  static final FluroRouter router = FluroRouter();
  TransitionType transitionType = TransitionType.native;
  static Handler homeHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const MyHomePage());

  static Handler loginHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const MainLogin());

  static Handler regisHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const MainRegistor());

  static Handler productsHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    var id = params['id']?.first;
    return ShowProduct(
      idGet: id,
    );
  });

  static Handler cartHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const ShopCart());

  static Handler productAllHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Product());

  static Handler checkOutHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const CheckOut());

  static Handler profileHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Profile());

  static Handler helpHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Help());

  static Handler clickMmHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Clickmm());

  static Handler clickBabyMmHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const Clickbaymm());

  static Handler clickSearchHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const Clicksearch());

  static Handler sendMailHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Sendmail());

  static Handler contactHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Contack());

  static Handler deliveryHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) => const Delively());

  static Handler profileMobileHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileMobile());

  static Handler profileBankHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileBank());

  static Handler profileAdrHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileAddress());

  static Handler profileResetAdrHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileReset());

  static Handler profileHisHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileHistorysuc());

  static Handler profileLoadDeliHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileLoadDelivery());

  static Handler profileAddDeliHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileAddDelivery());

  static Handler profileAddBuyHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileAddBuy());

  static Handler profileCancelHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const ProfileCancle());

  static Handler resetPassHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const MainmasterForgetpassword());

  static Handler allCommentHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const Allcomment());

  static void setupRouter() {
    router.define('/',
        handler: homeHandler, transitionType: TransitionType.native);

    router.define('/login',
        handler: loginHandler, transitionType: TransitionType.native);

    router.define('/registor',
        handler: regisHandler, transitionType: TransitionType.native);

    router.define('/shopcart',
        handler: cartHandler, transitionType: TransitionType.native);

    router.define('/products',
        handler: productsHandler, transitionType: TransitionType.native);

    router.define('/shop',
        handler: productAllHandler, transitionType: TransitionType.native);

    router.define('/checkout',
        handler: checkOutHandler, transitionType: TransitionType.native);

    router.define('/profile',
        handler: profileHandler, transitionType: TransitionType.native);

    router.define('/help',
        handler: helpHandler, transitionType: TransitionType.native);

    router.define('/clickmm',
        handler: clickMmHandler, transitionType: TransitionType.native);

    router.define('/clickbabymm',
        handler: clickBabyMmHandler, transitionType: TransitionType.native);

    router.define('/clicksearch',
        handler: clickSearchHandler, transitionType: TransitionType.native);

    router.define('/sendmail',
        handler: sendMailHandler, transitionType: TransitionType.native);

    router.define('/contack',
        handler: contactHandler, transitionType: TransitionType.native);

    router.define('/delively',
        handler: deliveryHandler, transitionType: TransitionType.native);

    router.define('/profile_mobile',
        handler: profileMobileHandler, transitionType: TransitionType.native);

    router.define('/profile_bank',
        handler: profileBankHandler, transitionType: TransitionType.native);

    router.define('/profile_address',
        handler: profileAdrHandler, transitionType: TransitionType.native);

    router.define('/profile_reset',
        handler: profileResetAdrHandler, transitionType: TransitionType.native);

    router.define('/profile_historysuc',
        handler: profileHisHandler, transitionType: TransitionType.native);

    router.define('/profile_loaddelivery',
        handler: profileLoadDeliHandler, transitionType: TransitionType.native);

    router.define('/profile_adddelivery',
        handler: profileAddDeliHandler, transitionType: TransitionType.native);

    router.define('/profile_addbuy',
        handler: profileAddBuyHandler, transitionType: TransitionType.native);

    router.define('/profile_cancle',
        handler: profileCancelHandler, transitionType: TransitionType.native);

    router.define('/forgetpassword',
        handler: resetPassHandler, transitionType: TransitionType.native);

    router.define('/allcomment',
        handler: allCommentHandler, transitionType: TransitionType.native);
  }
}
