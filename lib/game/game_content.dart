class GameModel {
  final String qwest;
  final String right;
  final List<String> otvets;
  GameModel({
    required this.qwest,
    required this.right,
    required this.otvets,
  });
}

List<GameModel> gameList = [
  GameModel(
    qwest: 'Your star scorer receives two technical fouls.',
    right: 'Sub him out to avoid disqualification.',
    otvets: [
      'Sub him out to avoid disqualification.',
      'Keep him in the game, but instruct him to play cautiously.',
      'Ask him to be more careful but keep him in the game.',
    ],
  ),
  GameModel(
    qwest: 'Your point guard is being pressured by the opponent.',
    right: 'Initiate a quick counter-attack, utilizing his speed.',
    otvets: [
      'Pass the ball to an open player.',
      'Initiate a quick counter-attack, utilizing his speed.',
      'Implement a slow offensive tactic.',
    ],
  ),
  GameModel(
    qwest: 'Your center is blocked and unable to go for an attack.',
    right: 'Create a pick to free up the center.',
    otvets: [
      'Try passing the ball outside for an open shot.',
      'Pass the ball to another player inside.',
      'Create a pick to free up the center.',
    ],
  ),
  GameModel(
    qwest: 'The opponent frequently attempts three-pointers.',
    right: 'Use a zone defense to limit three-point attempts.',
    otvets: [
      'Strengthen defense on the perimeter.',
      'Substitute your defenders.',
      'Use a zone defense to limit three-point attempts.',
    ],
  ),
  GameModel(
    qwest: 'Your team is leading with just one minute left in the game.',
    right: 'Play defense and control timeouts.',
    otvets: [
      'Slow down the game and control possession.',
      'Play defense and control timeouts.',
      'Try for a quick counter-attacking shot.',
    ],
  ),
  GameModel(
    qwest:
        'Your best defender is on the brink of disqualification after the fourth personal foul.',
    right: 'Substitute him and adjust the team to a more careful defense.',
    otvets: [
      'Substitute him to prevent disqualification.',
      'Keep him in the game, instructing him to play cautious defense.',
      'Substitute him and adjust the team to a more careful defense.',
    ],
  ),
  GameModel(
    qwest: 'Your team is trailing by just one point with 10 seconds left.',
    right: 'Attempt a quick two-point shot.',
    otvets: [
      'Attempt a quick two-point shot.',
      'Try a three-point shot for the win.',
      'Force a foul to get free throws.',
    ],
  ),
  GameModel(
    qwest: 'Your star scorer has a low shooting percentage during the game.',
    right: 'Utilize other players to create scoring opportunities.',
    otvets: [
      'Support him by providing more scoring opportunities.',
      'Give him a few minutes on the bench for rest.',
      'Utilize other players to create scoring opportunities.',
    ],
  ),
  GameModel(
    qwest:
        'The opponent is playing zone defense, restricting your attacking potential.',
    right: 'Control positions on the perimeter for open shots.',
    otvets: [
      'Control positions on the perimeter for open shots.',
      'Drive inside through the defense.',
      'Attempt quick movements to create space.',
    ],
  ),
  GameModel(
    qwest: 'Your defender is individually marking a dangerous opponent scorer.',
    right: 'Strengthen the defense, not allowing open shots.',
    otvets: [
      'Strengthen the defense, not allowing open shots.',
      'Try to block his shots.',
      'Use zone defense to limit his opportunities.',
    ],
  ),
  GameModel(
    qwest:
        'Your team is losing momentum after a series of unsuccessful attacks.',
    right: 'Take a timeout to regroup and boost team morale.',
    otvets: [
      'Take a timeout to regroup and boost team morale.',
      'Make substitutions for a fresh energy injection.',
      'Change the attack strategy to create new opportunities.',
    ],
  ),
  GameModel(
    qwest: 'Your center is under pressure and cannot make a pass inside.',
    right: 'Use a pick to create space for a pass inside.',
    otvets: [
      'Pass the ball outside for an open shot.',
      'Use a pick to create space for a pass inside.',
      'Attempt quick movements to open up possibilities.',
    ],
  ),
  GameModel(
    qwest:
        'One of your players is on the verge of disqualification after three technical fouls.',
    right: 'Substitute him to avoid disqualification.',
    otvets: [
      'Substitute him to avoid disqualification.',
      'Ask him to remain calm and continue playing.',
      'Keep him in the game, relying on his experience.',
    ],
  ),
  GameModel(
    qwest: "Your defender struggles to cope with the opponent's fast break.",
    right: 'Substitute him with a player having higher speed.',
    otvets: [
      'Adjust the defensive tactics.',
      'Substitute him with a player having higher speed.',
      'Attempt quick substitutions to stabilize defense.',
    ],
  ),
  GameModel(
    qwest: 'Your team frequently loses possession due to opponent pressure.',
    right: 'Intensify focus on training passing and ball handling.',
    otvets: [
      'Intensify focus on training passing and ball handling.',
      'Make substitutions to bring in new players.',
      'Attempt to slow down the game to reduce pressure.',
    ],
  ),
];
