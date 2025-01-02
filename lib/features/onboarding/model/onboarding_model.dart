import 'package:flutter/material.dart';

class OnboardingModel {
  final String title;
  final String subtitle;
  final Widget? image;
  final String btnTitle;

  OnboardingModel({
    required this.title,
    required this.subtitle,
    this.image,
    required this.btnTitle,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: "Discover Your Next Favorite Movie",
    subtitle:
        "Browse an endless collection of movies, from blockbusters to hidden gems",
    image: null,
    btnTitle: "Suivant",
  ),
  OnboardingModel(
    title: "Watch Anytime, Anywhere",
    subtitle:
        "Stream seamlessly on your phone, tablet, or TV—your movies, your way.",
    image: null,
    btnTitle: "Suivant",
  ),
  OnboardingModel(
    title: "Stay Ahead of the Trends",
    subtitle:
        "Get recommendations based on what’s popular and what you love to watch.",
    btnTitle: "Commencer",
    image: null,
  ),
];
