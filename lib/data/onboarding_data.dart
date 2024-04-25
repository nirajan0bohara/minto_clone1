class OnBoardingInfo {
  final String title;
  final String image;
  final String description;

  OnBoardingInfo({
    required this.title,
    required this.image,
    required this.description,
  });
}

List<OnBoardingInfo> onBoardingData = [
  OnBoardingInfo(
    title: "Buy from various Seller",
    image: "assets/undraw_shopping_re_hdd9.svg",
    description:
        "You can search for the devices you want and buy from second - hand sellers",
  ),
  OnBoardingInfo(
    title: "Sell your things",
    image: "assets/undraw_transfer_money_re_6o1h.svg",
    description: "Upload your device details and sell them to others",
  ),
  OnBoardingInfo(
    title: "Chat with them",
    image: "assets/undraw_texting_re_l11n.svg",
    description:
        "Talk with your sellers and potential buyers to proceed and finalise the purchase",
  ),
];
