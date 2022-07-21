int whoWins(Map<String, int> teamA, Map<String, int> teamB) {

  var team1 = 0;
  teamA.forEach((key, value) {
    if (key == 'Free throws')
      team1 += value;
    else if (key == '2 pointer')
      team1 += value * 2;
    else if (key == '3 pointer') 
      team1 += value * 3;
  });

  var team2 = 0;
  teamB.forEach((key, value) {
    if (key == 'Free throws')
      team2 += value;
    else if (key == '2 pointer')
      team2 += value * 2;
    else if (key == '3 pointer')
      team2 += value * 3;
  });

  if (team1 > team2)
    return 1;
  else if (team1 < team2)
    return 2;
  else
    return 0;
}