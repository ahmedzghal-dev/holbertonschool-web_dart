int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamA.forEach((shotType, shotCount) {
    if (shotType == 'freeThrow') {
      teamAPoints += shotCount;
    } else if (shotType == 'twoPointer') {
      teamAPoints += 2 * shotCount;
    } else if (shotType == 'threePointer') {
      teamAPoints += 3 * shotCount;
    }
  });

  teamB.forEach((shotType, shotCount) {
    if (shotType == 'freeThrow') {
      teamBPoints += shotCount;
    } else if (shotType == 'twoPointer') {
      teamBPoints += 2 * shotCount;
    } else if (shotType == 'threePointer') {
      teamBPoints += 3 * shotCount;
    }
  });

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
