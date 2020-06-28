class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "This is a period nobody expexted, which is already taking some emotional effect on us, we have to make people laugh");
  sliderModel.setTitle("Welcome to Smile");
  sliderModel.setImageAssetPath("images/feelingjoy.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel
      .setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit ut ");
  sliderModel.setTitle("Forget your worries");
  sliderModel.setImageAssetPath("images/happy.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel
      .setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit ut ");
  sliderModel.setTitle("Always Smile");
  sliderModel.setImageAssetPath("images/joy.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel
      .setDesc("Lorem ipsum dolor sit amet, consectetur adipiscing elit ut ");
  sliderModel.setTitle("Stay happy");
  sliderModel.setImageAssetPath("images/smiling.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
