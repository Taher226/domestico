class SitterModels {
  final bool isFavorite;
  final String name;
  final Categories category;
  final String discreption;
  final String imageSrc;

  SitterModels({
    required this.isFavorite,
    required this.name,
    required this.category,
    required this.discreption,
    required this.imageSrc,
  });
}

enum Categories {
  Walker,
  Sitter;
}

class Models {
  var models = [
    SitterModels(
      isFavorite: true,
      name: 'mazen',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    SitterModels(
      isFavorite: false,
      name: 'mohamed',
      category: Categories.Sitter,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.webp?b=1&s=170667a&w=0&k=20&c=FycdXoKn5StpYCKJ7PdkyJo9G5wfNgmSLBWk3dI35Zw=',
    ),
    SitterModels(
      isFavorite: true,
      name: 'sara',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJWPsW3rH_2fu4B2gy4cwjqGKRXEG4gaoRCKIOAp7_zcMDEBvtzuQpFopVo98wrTHVNhg&usqp=CAU',
    ),
    SitterModels(
      isFavorite: true,
      name: 'mazen',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    SitterModels(
      isFavorite: false,
      name: 'mohamed',
      category: Categories.Sitter,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.webp?b=1&s=170667a&w=0&k=20&c=FycdXoKn5StpYCKJ7PdkyJo9G5wfNgmSLBWk3dI35Zw=',
    ),
    SitterModels(
      isFavorite: true,
      name: 'sara',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJWPsW3rH_2fu4B2gy4cwjqGKRXEG4gaoRCKIOAp7_zcMDEBvtzuQpFopVo98wrTHVNhg&usqp=CAU',
    ),
    SitterModels(
      isFavorite: true,
      name: 'mazen',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: '',
    ),
    SitterModels(
      isFavorite: false,
      name: 'mohamed',
      category: Categories.Sitter,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: '',
    ),
    SitterModels(
      isFavorite: true,
      name: 'sara',
      category: Categories.Walker,
      discreption: 'ay kalam kteeeer mlhosh lazma',
      imageSrc: '',
    ),
  ];

  // getter
  List<SitterModels> get sitterModels => models;
}
