import 'package:mini_app_clean_arcticture/core/constants/assets.dart';

class HomeLocalDatasource {
  static final List<String> covers = [
    Assets.resourceImagesConan,
    Assets.resourceImagesHunterXHunter,
    Assets.resourceImagesDragonBall,
  ];
  static final List<Map<String, String>> coversData = [
    {'Detective Conan': 'Mystery'},
    {'Hunter x Hunter': 'Adventure'},
    {'Dragon Ball': 'Adventure'},
  ];
  static final List<String> characters = [
    Assets.resourceImagesHunterxhunercharchter,
    Assets.resourceImagesNarutoCharachter,
    Assets.resourceImagesLufyFace,
    Assets.resourceImagesConanCharchter,
  ];
  static final List<Map<String, String>> topCharacterData = [
    {'Gon Freecss': 'Hunter x Hunter'},
    {'Naruto Uzumaki': 'Naruto'},
    {'Luffy': 'One Piece'},
    {'Conan Edogawa': 'Detective Conan'},
  ];
}
