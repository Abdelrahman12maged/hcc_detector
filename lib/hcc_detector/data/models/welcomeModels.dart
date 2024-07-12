class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.discription, this.title});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'images/m1.png',
      title: "    Hepatocellular Carcinoma(HCC)",
      discription: """
    the most common type of primary 
    liver cancer
      
      """),
  UnbordingContent(
      image: 'images/m2.png',
      title: """   Revolutionizing Lever Cancer Detection 
   with AI-Power Precision""",
      discription: """
   Empowering early detection 
   enhancing lives
"""),
  UnbordingContent(
      image: 'images/m3.png',
      title: "    Model Precision and Accuracy",
      discription: """
    Our deep learning model boasts a
    detection accuracy rate,
    significantly reducing the chances of 
    false positives and negatives
   """),
];
