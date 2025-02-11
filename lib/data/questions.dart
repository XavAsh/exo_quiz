import '/models/question.dart';

final List<Question> questions = [
  Question(
      question: "Un moteur V8 a toujours plus de puissance qu'un moteur V6.",
      response: false,
      explanation:
          "La puissance dépend aussi du turbo, de l’injection et d'autres facteurs, pas seulement du nombre de cylindres.",
      imagePath: 'assets/v8_engine.jpg'),
  Question(
      question: "Les voitures électriques ont un couple instantané.",
      response: true,
      explanation:
          "Contrairement aux moteurs thermiques, les moteurs électriques délivrent leur couple maximal dès 0 tr/min.",
      imagePath: 'assets/electric_car.jpg'),
  Question(
      question:
          "Les freins à disque sont toujours plus performants que les freins à tambour.",
      response: false,
      explanation:
          "Les freins à disque offrent une meilleure dissipation thermique, mais les freins à tambour sont plus efficaces pour certaines utilisations (ex: frein de stationnement).",
      imagePath: 'assets/brake_disc.jpg'),
  Question(
      question: "La Formule 1 utilise des moteurs hybrides.",
      response: true,
      explanation:
          "Depuis 2014, les F1 utilisent des moteurs hybrides avec un système de récupération d’énergie (ERS).",
      imagePath: 'assets/f1_car.jpg'),
  Question(
      question:
          "Le moteur rotatif Wankel est encore utilisé aujourd’hui dans des voitures neuves.",
      response: false,
      explanation:
          "Mazda a arrêté la production du moteur rotatif en 2012 avec la RX-8, bien qu’il revienne en 2023 comme générateur électrique dans la MX-30.",
      imagePath: 'assets/wankel_engine.jpg'),
  Question(
      question: "Le diesel pollue toujours plus que l’essence.",
      response: false,
      explanation:
          "Les diesels modernes avec filtres à particules émettent parfois moins de CO2 que certaines voitures à essence.",
      imagePath: 'assets/diesel_vs_gasoline.jpg'),
  Question(
      question: "La Bugatti Chiron peut dépasser 400 km/h.",
      response: true,
      explanation:
          "En 2019, une Bugatti Chiron Super Sport 300+ a atteint 490 km/h, devenant la voiture de série la plus rapide du monde.",
      imagePath: 'assets/bugatti_chiron.jpg'),
  Question(
      question:
          "Les pneus hiver sont obligatoires dans certaines régions en France.",
      response: true,
      explanation:
          "Depuis 2021, la loi Montagne impose des pneus hiver ou chaînes dans certaines zones entre novembre et mars.",
      imagePath: 'assets/winter_tires.jpg'),
  Question(
      question:
          "Une voiture hybride ne peut pas rouler uniquement en mode électrique.",
      response: false,
      explanation:
          "Certaines hybrides, comme les hybrides rechargeables, peuvent rouler plusieurs dizaines de km en électrique.",
      imagePath: 'assets/hybrid_car.jpg'),
  Question(
      question:
          "La Tesla Model S Plaid a une accélération plus rapide qu'une Bugatti Chiron sur le 0-100 km/h.",
      response: true,
      explanation:
          "La Tesla Model S Plaid fait le 0-100 km/h en environ 2,1s, plus rapide que la Bugatti Chiron (2,4s).",
      imagePath: 'tesla_vs_bugatti.jpg'),
];
