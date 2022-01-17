import 'dart:convert';

class localimages {

  static final String flutterWallpaper = "assets/images/splashScreen_flutter.jpg";
  static final String login = "users/login/";


  String convertToBase64(String credentials) {
    final Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(credentials);
  }

  String base64ToString(String credentials) {
    final Codec<String, String> base64ToString = utf8.fuse(base64);
    return base64ToString.decode(credentials);
  }
}

const img_estreeetmart = "assets/images/estreeetmart.png";
const img_mobileestreeetmart = "assets/images/logopng.png";
const img_mobilepaymentSecured = "assets/images/paymentSecured.jpg";
const img_mobile24hoursSupport = "assets/images/24hoursSupport.jpg";
const img_mobilefreeDeliveyCharge = "assets/images/freeDeliveyCharge.jpg";
const img_mobilebestPriceGranted = "assets/images/bestPriceGranted.jpg";
const img_mobilesupportsLotsOfPayment =
    "assets/images/supportsLotsOfPayment.jpg";
const img_facebook = "assets/images/facebook.PNG";
const img_twitter = "assets/images/twitter.PNG";
const img_instagram = "assets/images/instagram.PNG";
const img_indeed = "assets/images/indeed.PNG";
const img_google_playstore = "assets/images/google-playstore.jpg";
const img_apps_store = "assets/images/apps-store.jpg";
const img_copyrights = "assets/images/copyrights.PNG";
const img_send_Image = "images/send_Image.jpg";
const img_tshirt = "assets/images/tshirt.jpg";
const img_gift = "assets/images/gift.jpg";
const img_login_background = "assets/images/login_background.JPG";
const img_dress_image = "assets/images/dress_image.JPG";
const img_fruits = "assets/images/fruits.jpg";
const img_google_logos = "assets/images/google-logos.png";
const tap = "assets/images/tap.png";
const settings = "assets/images/settings.png";
const refund = "assets/images/refund.png";
const help = "assets/images/help.png";
const dashboard = "assets/images/dashboard.png";
const coupons = "assets/images/coupons.png";
const sent = "assets/images/sent.png";
const address = "assets/images/address.png";
const truck = "assets/images/truck.png";
const shippied = "assets/images/shippied.png";
const processing = "assets/images/processing.png";
const packed = "assets/images/packed.png";
const checks = "assets/images/check.png";
const complete = "assets/images/completed.png";
const cardIcons = "assets/images/card-icons.png";
const paynow = "assets/images/PayNow.png";
const payment_icons = "assets/images/payment-icons.png";
const flag = "assets/images/flag.png";
const refunds = "assets/images/refunds.png";
const customer_care = "assets/images/customer-care.png";

const img_search = "assets/images/search.svg";
const img_cloud = "assets/images/cloud.svg";
const img_timeing = "assets/images/timeing.svg";
const img_aleram = "assets/images/aleram.svg";
const img_arrow = "assets/images/arrow.svg";
const img_heartShape = "assets/images/heartShape.svg";
const img_shopCard = "assets/images/shopCard.svg";
const img_paymentSecured = "assets/images/paymentSecured.svg";
const img_24hoursSupport = "assets/images/24hoursSupport.svg";
const img_freeDelivery = "assets/images/freeDelivery.svg";
const img_bestPrice = "assets/images/bestPrice.svg";
const img_supportLots = "assets/images/supportLots.svg";
const img_google_logo = "assets/images/google_logo.svg";
const img_like = "assets/images/Vector-1.svg";
const img_share = "assets/images/Vector-4.svg";
const sg_flag_gif = "assets/gif/Singapore_240-animated-flag-gifs.gif";
