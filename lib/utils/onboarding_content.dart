class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'assets/images/Boy.jpg',
      title: 'Education',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
          'Aenean neque porta feugiat tincidunt nunc, egestas'
          'semper sed aliquet. Diam d'),
  OnboardingContent(
      image: 'assets/images/woman.jpg',
      title: 'Health Care',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
          'Aenean neque porta feugiat tincidunt nunc, egestas'
          'semper sed aliquet. Diam d'),
  OnboardingContent(
      image: 'assets/images/children.png',
      title: 'Lifestyle',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
          'Aenean neque porta feugiat tincidunt nunc, egestas'
          'semper sed aliquet. Diam d'),
];
