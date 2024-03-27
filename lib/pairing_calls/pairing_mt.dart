import 'package:shared_preferences/shared_preferences.dart';

class PrModel {
  final String image;
  final String text;

  PrModel({
    required this.image,
    required this.text,
  });
}

Future<int> getPlayer1Color() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt('Player1Color') ?? 0;
}

Future<void> setPlayer1Color(int playerColor1) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt('Player1Color', playerColor1);
}

Future<int> getPlayer2Color() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getInt('Player2Color') ?? 0;
}

Future<void> setPlayer2Color(int playerColor2) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt('Player2Color', playerColor2);
}

Future<String> getPlayer1() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('Player1') ?? 'Player 1';
}

Future<void> setPlayer1(String player1) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('Player1', player1);
}

Future<String> getPlayer2() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('Player2') ?? 'Player 2';
}

Future<void> setPlayer2(String player2) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('Player2', player2);
}

List<PrModel> listPr = [
  PrModel(
    image: 'assets/icons/pC1.png',
    text:
        'Dribbling Obstacle: Set up a course with cones or markers arranged in various formations. Challenge yourself to dribble through the course as quickly as possible while maintaining control of the ball. Focus on tight turns, quick changes of direction, and using both feet.',
  ),
  PrModel(
    image: 'assets/icons/pC2.png',
    text:
        'Shooting Accuracy Challenge: Place targets or cones in different areas of the goal and practice shooting to hit those targets consistently. Start with larger targets and gradually decrease the size to improve accuracy. ',
  ),
  PrModel(
    image: 'assets/icons/pC3.png',
    text:
        'Speed and Agility Drills: Set up agility ladder drills, cone drills, or shuttle runs to improve your speed, agility, and quickness on the field. Focus on explosive movements, rapid changes of direction, and accelerating and decelerating quickly.',
  ),
  PrModel(
    image: 'assets/icons/pC4.png',
    text:
        'Juggling Challenge: Test your ball control and coordination by seeing how many consecutive juggles you can perform with your feet, thighs, and head. Challenge yourself to improve your juggling record aiming for longer sequences without dropping the ball.',
  ),
  PrModel(
    image: 'assets/icons/pC5.png',
    text:
        'One-on-One Defending Practice: Set up cones or markers to create a small playing area and practice defending against an imaginary opponent. Work on staying low in a defensive stance, maintaining proper body positioning, and timing tackles and interceptions.',
  ),
  PrModel(
    image: 'assets/icons/pC6.png',
    text:
        'Crossbar Challenge: Test your accuracy and power by attempting to hit the crossbar of the goal from various distances and angles. Challenge yourself to hit the crossbar with different types of shots, including volleys, half-volleys, and driven shots.',
  ),
  PrModel(
    image: 'assets/icons/pC7.png',
    text:
        'Footwork and Coordination Drills: Set up drills to improve your footwork and coordination, such as ladder drills, cone drills, or agility ladder exercises. Focus on precise foot placement, quick movements, and maintaining balance and stability.',
  ),
  PrModel(
    image: 'assets/icons/pC8.png',
    text:
        'Heading Accuracy Challenge: Practice heading the ball into a target or specific area of the goal from different angles. Focus on timing your jumps, making solid contact with the ball, and directing it towards your target.',
  ),
  PrModel(
    image: 'assets/icons/pC9.png',
    text:
        'First Touch Challenge: Practice controlling passes or long balls with your first touch, aiming to keep the ball close and under control. Focus on cushioning the ball and directing it into space.',
  ),
  PrModel(
    image: 'assets/icons/pC10.png',
    text:
        'Dribbling Through Cones: Set up a series of cones in a straight line or zigzag pattern and dribble through them as quickly as possible. Challenge yourself to complete the course with minimal mistakes and sharp turns.',
  ),
];
