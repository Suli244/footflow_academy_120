class ReadModel {
  final String image;
  final String name;
  final String? country;
  final String description;

  ReadModel({
    required this.image,
    required this.name,
    this.country,
    required this.description,
  });
}

List<ReadModel> listPlayers = [
  ReadModel(
    image: 'https://i.ibb.co/jyxxR7V/1.png',
    name: 'Lionel Messi',
    country: 'Argentina',
    description:
        '''Often regarded as one of the greatest footballers of all time, Messi is known for his exceptional dribbling, vision, and goal-scoring ability.
Messi has won numerous individual awards, including seven FIFA Ballon d'Or titles, and has achieved tremendous success with FC Barcelona, where he spent the majority of his career.
He has won numerous domestic and international titles with Barcelona, including multiple UEFA Champions League trophies and La Liga titles.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/0XtTWq8/2.png',
    name: 'Cristiano Ronaldo',
    country: 'Portugal',
    description:
        '''A prolific goal scorer and one of the most recognizable athletes in the world, Ronaldo is known for his athleticism, aerial ability, and powerful shooting.
Ronaldo has won five FIFA Ballon d'Or awards and has achieved success with several top clubs, including Manchester United, Real Madrid, and Juventus.
He has won numerous domestic league titles, UEFA Champions League trophies, and international honors with Portugal, including the UEFA European Championship in 2016.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/MkrXJ9S/3.png',
    name: 'Neymar Jr.',
    country: 'Brazil',
    description:
        '''Known for his flair, creativity, and skill on the ball, Neymar is one of the most talented and marketable footballers of his generation.
Neymar has played for top clubs such as FC Barcelona and Paris Saint-Germain (PSG), where he has won domestic league titles and domestic cup competitions.
He has represented Brazil in multiple FIFA World Cups and has won numerous individual awards for his performances on the field.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/L6NSScF/4.png',
    name: 'Kylian Mbappé',
    country: 'France',
    description:
        '''A rising star in world football, Mbappé is known for his blistering pace, technical ability, and goal-scoring prowess.
Mbappé burst onto the scene with AS Monaco before joining PSG, where he has won multiple Ligue 1 titles and domestic cup competitions.
He played a key role in France's victory at the 2018 FIFA World Cup, winning the tournament's Best Young Player award and establishing himself as one of the brightest talents in the sport.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/F0MTyRT/5.png',
    name: 'Mohamed Salah',
    country: 'Egypt',
    description:
        '''Known for his speed, dribbling skills, and clinical finishing, Salah has emerged as one of the top forwards in world football.
Salah has enjoyed success with clubs such as AS Roma and Liverpool, where he has won the Premier League, UEFA Champions League, and numerous individual awards.
He has represented Egypt in multiple Africa Cup of Nations tournaments and has been a key player for both club and country.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/30Fv6vZ/6.png',
    name: 'Andrés Iniesta',
    country: 'Spain',
    description:
        '''Known for his exceptional vision, passing, and ball control, Iniesta was a key player for FC Barcelona and the Spanish national team.
Iniesta won numerous domestic league titles, UEFA Champions League trophies, and international honors with Spain, including the FIFA World Cup in 2010.
He is revered for his ability to dictate the tempo of the game and deliver decisive passes in critical moments.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/Jvrvtrw/7.png',
    name: 'Zinedine Zidane',
    country: 'France',
    description:
        '''A legendary midfielder known for his elegance, skill, and playmaking ability, Zidane won numerous titles with clubs like Juventus and Real Madrid.
Zidane's crowning achievement came in the 1998 FIFA World Cup, where he led France to victory on home soil and was named the tournament's best player.
He is remembered for his iconic goals, such as his volley in the 2002 UEFA Champions League final, which secured Real Madrid's victory.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/q5zq6zC/8.png',
    name: 'Ronaldinho',
    country: 'Brazil',
    description:
        '''Known for his dazzling dribbling, creativity, and infectious smile, Ronaldinho mesmerized fans around the world with his unique style of play.
Ronaldinho won numerous titles with clubs like FC Barcelona, AC Milan, and Paris Saint-Germain, including two FIFA World Player of the Year awards.
He played a pivotal role in Brazil's 2002 FIFA World Cup victory and is remembered for his incredible skill moves and audacious goals.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/98Kp6Qs/9.png',
    name: 'Thierry Henry',
    country: 'France',
    description:
        '''A prolific goal scorer and one of the greatest forwards of his generation, Henry was known for his speed, intelligence, and lethal finishing ability.
Henry enjoyed immense success with Arsenal, where he became the club's all-time leading goal scorer and won numerous Premier League titles and FA Cups.
He also had successful stints with clubs like Barcelona and the New York Red Bulls, earning praise for his contributions on and off the field.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/gtRbPwy/10.png',
    name: 'Franz Beckenbauer',
    country: 'Germany',
    description:
        '''A true football legend, Beckenbauer was known for his versatility, leadership, and tactical acumen as both a player and coach.
Beckenbauer won numerous titles with Bayern Munich and the German national team, including the FIFA World Cup as a player in 1974 and as a coach in 1990.
He revolutionized the role of the sweeper in football and is widely regarded as one of the greatest defenders of all time.''',
  ),
];

List<ReadModel> listTrainers = [
  ReadModel(
    image: 'https://i.ibb.co/WH29wdT/1.png',
    name: 'Pep Guardiola',
    description:
        '''Pep Guardiola is widely regarded as one of the most innovative and influential football managers of his generation. Renowned for his commitment to the principles of possession-based football, Guardiola's teams are known for their intricate passing, positional play, and high pressing. He emphasizes fluid movement, quick transitions, and tactical flexibility, often deploying unconventional formations to gain a strategic advantage. Guardiola enjoyed tremendous success at Barcelona, where he won numerous domestic and international titles, including the UEFA Champions League. He later continued his managerial prowess at Bayern Munich before taking charge of Manchester City, where he has maintained his reputation as one of the game's leading tacticians, consistently competing for major trophies both domestically and in Europe.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/s32B4tS/2.png',
    name: 'Jurgen Klopp',
    description:
        '''Jurgen Klopp is renowned for his charismatic personality, passionate touchline demeanor, and high-intensity style of football known as "gegenpressing." Klopp's teams are characterized by their relentless pressing, quick transitions, and dynamic attacking play. He emphasizes teamwork, unity, and a strong bond between players and fans. Klopp achieved great success during his tenure at Borussia Dortmund, leading the club to two Bundesliga titles and a UEFA Champions League final. Since joining Liverpool, Klopp has revitalized the club, guiding them to their first Premier League title in 30 years and winning the UEFA Champions League. His ability to inspire and motivate players while implementing an exciting brand of football has made him one of the most respected managers in the world.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/GHpXJ4f/3.png',
    name: 'Jose Mourinho',
    description:
        '''Jose Mourinho, often referred to as "The Special One," is a highly successful and polarizing figure in football management. Known for his pragmatic and results-oriented approach, Mourinho prioritizes defensive solidity, organization, and counter-attacking prowess. He is a master of tactical strategy, adept at nullifying opponents' strengths while exploiting their weaknesses. Mourinho has enjoyed tremendous success throughout his career, winning numerous league titles and domestic cups with clubs such as Porto, Chelsea, Inter Milan, Real Madrid, and Manchester United. While his confrontational style and penchant for mind games have garnered criticism, there's no denying Mourinho's tactical astuteness and track record of delivering silverware at the highest level.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/cyT1XmR/4.png',
    name: 'Diego Simeone:',
    description:
        '''Diego Simeone is synonymous with Atletico Madrid's identity as a tenacious and resilient team that thrives on hard work, discipline, and defensive solidity. As a manager, Simeone instills a strong sense of commitment and unity within his squad, demanding maximum effort and dedication on the field. His tactical approach emphasizes defensive organization, aggressive pressing, and clinical counter-attacking football. Under Simeone's guidance, Atletico Madrid has achieved remarkable success, winning La Liga titles and reaching multiple UEFA Champions League finals despite competing against financially superior opponents. Simeone's intense touchline demeanor and unwavering passion for the game have earned him admiration from fans and players alike, establishing him as one of the most respected managers in world football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/0X9WR7W/5.png',
    name: 'Zinedine Zidane',
    description:
        '''Zinedine Zidane, a footballing icon turned successful manager, is revered for his elegant playing style and remarkable achievements in coaching. As a manager, Zidane emphasizes player management, fostering a harmonious atmosphere within the squad while encouraging individual brilliance on the field. His tactical approach is characterized by flexibility, adapting formations and strategies to suit the strengths of his players and exploit opponents' weaknesses. Zidane achieved unprecedented success during his first managerial stint at Real Madrid, guiding the club to three consecutive UEFA Champions League titles among other domestic and international trophies. His calm demeanor, tactical acumen, and ability to inspire confidence in his players have solidified his reputation as one of the finest managers of his era.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/6bqpDQV/6.png',
    name: 'Carlo Ancelotti',
    description:
        '''Carlo Ancelotti is a highly respected and experienced manager known for his tactical versatility, calm demeanor, and ability to build cohesive teams capable of achieving success at the highest level. Ancelotti's managerial philosophy emphasizes balance, with a focus on both defensive solidity and attacking flair. He is renowned for his man-management skills, creating a positive atmosphere within the dressing room and extracting the best performances from his players. Ancelotti has enjoyed a distinguished managerial career, winning league titles and UEFA Champions League trophies with clubs such as AC Milan, Real Madrid, and Chelsea. His adaptability and knack for delivering results in pressure situations have earned him admiration from players, fans, and peers across the footballing world.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/vjR2zKC/7.png',
    name: 'Mauricio Pochettino',
    description:
        '''Mauricio Pochettino is known for his innovative coaching methods, high-pressing style of play, and commitment to youth development. Pochettino's teams are characterized by their energy, intensity, and attacking intent, pressing opponents relentlessly to regain possession and launch quick counter-attacks. He places a strong emphasis on teamwork, discipline, and player development, nurturing young talents and maximizing their potential on the field. Pochettino gained widespread acclaim during his tenure at Tottenham Hotspur, where he transformed the club into consistent top-four contenders in the Premier League and led them to the UEFA Champions League final. His tactical acumen, progressive approach to coaching, and ability to inspire improvement in his players have made him one of the most sought-after managers in world football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/5LsC64n/8.png',
    name: 'Jorge Jesus',
    description:
        '''Jorge Jesus is a highly regarded football manager known for his bold tactical approach, attacking style of play, and success at both domestic and international levels. Jesus emphasizes fluid passing, offensive creativity, and high defensive lines, encouraging his teams to play entertaining and expansive football. He is renowned for his meticulous attention to detail and innovative training methods, which focus on improving technical skills and tactical awareness. Jesus has achieved significant success throughout his managerial career, winning league titles, domestic cups, and continental competitions with clubs such as Benfica, Sporting Lisbon, and Flamengo. His ability to implement dynamic playing styles and consistently deliver silverware has earned him recognition as one of the top managers in modern football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/fMs14p1/9.png',
    name: 'Arsène Wenger',
    description:
        '''Arsène Wenger is a legendary figure in football management, renowned for his innovative tactics, commitment to attractive football, and revolutionary approach to player fitness and development. During his tenure at Arsenal, Wenger introduced a style of play characterized by fluid passing, creative attacking movement, and defensive solidity. He emphasized technical proficiency and mental resilience, nurturing young talents while instilling a strong team ethos. Wenger's teams were known for their consistency and ability to compete at the highest level, winning multiple Premier League titles and FA Cups. His impact extended beyond the pitch, as he played a significant role in modernizing English football and shaping the managerial landscape with his progressive methods and visionary approach.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/h10pVyC/10.png',
    name: 'Marcelo Bielsa',
    description:
        '''Marcelo Bielsa, often referred to as "El Loco," is a highly influential and enigmatic football manager known for his innovative tactics, intense work ethic, and unwavering commitment to attacking football. Bielsa's teams are characterized by their high-tempo pressing, fluid positional play, and relentless attacking movement. He places a strong emphasis on physical conditioning and tactical discipline, demanding absolute dedication from his players on and off the field. Bielsa's coaching philosophy has inspired a generation of managers, earning him admiration for his unconventional methods and dedication to footballing principles. He has managed top clubs and national teams around the world, leaving a lasting legacy as one of the most respected and intriguing figures in the world of football management.''',
  ),
];

List<ReadModel> listBest = [
  ReadModel(
    image: 'https://i.ibb.co/zNB8bym/1.png',
    name: 'Real Madrid',
    description:
        '''Real Madrid is one of the most successful and prestigious football clubs globally, based in Madrid, Spain. Known as "Los Blancos," the club has a rich history of success, boasting numerous domestic league titles, Copa del Rey victories, and a record number of UEFA Champions League trophies. Real Madrid is renowned for its Galácticos policy, where they sign world-class players to maintain their status as a dominant force in European football. The club's iconic white jersey, along with its passionate fan base and historic stadium, Santiago Bernabéu, solidify its status as one of the elite football clubs worldwide.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/pLNJT9b/2.png',
    name: 'FC Barcelona',
    description:
        '''FC Barcelona, based in Barcelona, Spain, is synonymous with attractive, possession-based football and a renowned youth academy, La Masia. Known as "Blaugrana" for their iconic blue and red striped jerseys, the club has a storied history of success, featuring numerous La Liga titles, Copa del Rey victories, and UEFA Champions League triumphs. Barcelona's identity is deeply rooted in its commitment to producing homegrown talent, with legendary players like Lionel Messi emerging from its youth ranks. The club's motto, "Més que un club" (More than a club), reflects its significance as a symbol of Catalan pride and identity.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/TbB9RWz/3.png',
    name: 'Bayern Munich',
    description:
        '''Bayern Munich, based in Munich, Germany, is one of the most dominant football clubs in European football history. Known as "Die Roten" (The Reds), Bayern has consistently dominated the Bundesliga, winning numerous league titles and German Cups. Internationally, the club has enjoyed success in the UEFA Champions League, winning multiple titles. Bayern Munich is renowned for its strong emphasis on youth development, financial stability, and strategic transfer policy, consistently assembling competitive squads capable of challenging for domestic and European honors.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/tQbdWQ4/4.png',
    name: 'Manchester City',
    description:
        '''Manchester City, based in Manchester, England, has emerged as a powerhouse in English and European football in recent years. Owned by the City Football Group, the club has experienced unprecedented success, winning multiple Premier League titles, FA Cups, and League Cups. Under the guidance of renowned manager Pep Guardiola, Manchester City has adopted an attractive, possession-based style of play, emphasizing technical proficiency and tactical versatility. The club's state-of-the-art facilities, ambitious recruitment strategy, and strong financial backing have established it as a formidable force in the global football landscape.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/4WfM7fy/5.png',
    name: 'Liverpool FC',
    description:
        '''Liverpool FC, based in Liverpool, England, is one of the most storied and successful football clubs in the world. Known as "The Reds," Liverpool has a rich history of domestic and European success, boasting numerous league titles, FA Cups, League Cups, and UEFA Champions League trophies. The club is renowned for its passionate fan base, iconic anthem "You'll Never Walk Alone," and legendary players and managers who have left an indelible mark on football history. Under the leadership of manager Jurgen Klopp, Liverpool has experienced a resurgence, reclaiming its status as a dominant force in English and European football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/cbnCbhb/6.png',
    name: 'Paris Saint-Germain (PSG)',
    description:
        '''Paris Saint-Germain, based in Paris, France, has established itself as a leading football club in recent years, propelled by significant investment and ambitious recruitment. Known for its star-studded squad featuring world-class talents, PSG has dominated French football, winning multiple Ligue 1 titles, Coupe de France, and Coupe de la Ligue trophies. The club's Qatari owners have prioritized success in the UEFA Champions League, leading to high-profile signings and ambitious continental campaigns. PSG's rise to prominence has elevated its status as a global football powerhouse, attracting top players and competing for prestigious honors on the international stage.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/0nVYWdH/7.png',
    name: 'Juventus FC',
    description:
        '''Juventus FC, based in Turin, Italy, is one of the most successful football clubs in Italian and European football history. Known as "La Vecchia Signora" (The Old Lady), Juventus has dominated Serie A, winning numerous league titles and Coppa Italia trophies. The club boasts a rich tradition of success, with iconic players like Alessandro Del Piero, Michel Platini, and Gianluigi Buffon gracing its ranks. Juventus is renowned for its defensive solidity, tactical acumen, and strategic transfer policy, consistently assembling competitive squads capable of challenging for domestic and European honors. With its state-of-the-art stadium, Allianz Stadium, and passionate fan base, Juventus remains a symbol of excellence in Italian football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/r4NvwGq/8.png',
    name: 'Manchester United',
    description:
        '''Manchester United, based in Manchester, England, is one of the most iconic and successful football clubs globally. Known as "The Red Devils," Manchester United has a storied history of success, featuring numerous Premier League titles, FA Cups, League Cups, and UEFA Champions League trophies. The club's rich tradition is epitomized by legendary figures such as Sir Matt Busby and Sir Alex Ferguson, who established a culture of attacking football and nurturing young talent. Manchester United's global fan base, historic stadium, Old Trafford, and iconic red jerseys contribute to its status as one of the most recognizable and beloved football clubs in the world.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/Zmgp6Jv/9.png',
    name: 'AC Milan',
    description:
        '''AC Milan, based in Milan, Italy, is one of the most storied and successful football clubs in Italian and European football history. Known as "I Rossoneri" (The Red and Blacks), AC Milan has enjoyed immense success, winning numerous Serie A titles, Coppa Italia trophies, and UEFA Champions League titles. The club's iconic red and black striped jerseys and legendary players such as Paolo Maldini, Franco Baresi, and Marco van Basten have cemented its place in football lore. AC Milan is renowned for its rich tradition of attacking football, tactical innovation, and a commitment to nurturing young talent. With its illustrious history and passionate fan base, AC Milan remains a symbol of excellence in Italian football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/wgM3x5J/10.png',
    name: 'Chelsea FC',
    description:
        '''Chelsea FC, based in London, England, is one of the most prominent football clubs in English and European football. Known as "The Blues," Chelsea has experienced significant success in recent years, winning multiple Premier League titles, FA Cups, League Cups, and UEFA Champions League trophies. The club's rise to prominence is attributed to strategic investment, ambitious recruitment, and managerial stability. Chelsea is renowned for its competitive spirit, attacking prowess, and strong presence in domestic and European competitions. With its state-of-the-art stadium, Stamford Bridge, and passionate supporters, Chelsea continues to be a dominant force in English football and a contender on the international stage.''',
  ),
];

List<ReadModel> listFootball = [
  ReadModel(
    image: 'https://i.ibb.co/nC4zmF1/1.png',
    name: 'Most FIFA World Cup Wins',
    description:
        '''Brazil holds the record for the most FIFA World Cup wins, with a total of 5 titles. The Brazilian national team secured victories in the World Cup tournaments held in 1958, 1962, 1970, 1994, and 2002. Brazil's success in the World Cup is attributed to its rich footballing history, talented players, and a distinctive style of play known for its flair, creativity, and attacking prowess.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/JsHTybs/2.png',
    name: 'Most UEFA Champions League',
    description:
        '''Real Madrid holds the record for the most UEFA Champions League/European Cup titles, with a total of 13 championships. The Spanish club has been a dominant force in European football, winning the prestigious tournament in 1956, 1957, 1958, 1959, 1960, 1966, 1998, 2000, 2002, 2014, 2016, 2017, and 2018. Real Madrid's success in the Champions League is attributed to its rich tradition, talented players, and a culture of excellence cultivated over decades.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/qj78w07/3.png',
    name: 'Most Goals Scored',
    description:
        '''Lionel Messi holds the record for the most goals scored in a calendar year, with 91 goals in 2012. The Argentine forward achieved this remarkable feat while playing for FC Barcelona, showcasing his incredible goal-scoring ability, skill, and consistency. Messi's record-breaking year solidified his status as one of the greatest footballers of all time.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/J72BpK4/4.png',
    name: 'Longest Unbeaten Run',
    description:
        '''The record for the longest unbeaten run in a top-flight domestic league is held by Arsenal, with 49 consecutive matches undefeated in the English Premier League. The streak began on May 7, 2003, and lasted until October 24, 2004. Arsenal's "Invincibles" team of the 2003-2004 season, managed by Arsène Wenger, went through the entire league campaign without suffering a single defeat, a remarkable achievement in modern football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/2qPNP4M/5.png',
    name: 'Most Goals Scored by a Player',
    description:
        '''Just Fontaine holds the record for the most goals scored by a player in a single FIFA World Cup tournament, with 13 goals during the 1958 World Cup held in Sweden. The French striker's prolific goal-scoring exploits helped lead the French national team to a third-place finish in the tournament. Fontaine's record remains unmatched to this day, highlighting his exceptional performance on the world stage.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/k6JgRZt/6.png',
    name: 'Fastest Goal Scored in a FIFA',
    description:
        '''Hakan Şükür of Turkey holds the record for the fastest goal scored in a FIFA World Cup match, finding the net just 11 seconds into a match against South Korea during the 2002 World Cup held in South Korea and Japan. Şükür's early goal set the tone for the match and remains the quickest goal in World Cup history, showcasing the importance of a fast start in football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/WFBW112/7.png',
    name: 'Most Goals Scored by a Player',
    description:
        '''Most Goals Scored by a Player in a Single UEFA Champions League/European Cup Season: Cristiano Ronaldo holds the record for the most goals scored by a player in a single UEFA Champions League/European Cup season, with 17 goals during the 2013-2014 campaign. Ronaldo achieved this feat while playing for Real Madrid, demonstrating his exceptional goal-scoring prowess and consistency at the highest level of European club football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/DDBkbSb/8.png',
    name: 'Longest Winning Streak in a Top-flight',
    description:
        '''Longest Winning Streak in a Top-flight League Season: Bayern Munich holds the record for the longest winning streak in a top-flight league season, winning 19 consecutive matches in the Bundesliga during the 2013-2014 season. Under the management of Pep Guardiola, Bayern Munich displayed dominance and consistency, setting a new standard for excellence in German football.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/SB5PqRL/9.png',
    name: 'Most Consecutive Ballon d\'Or Wins',
    description:
        '''Lionel Messi holds the record for the most consecutive Ballon d'Or wins, receiving the prestigious award four times in a row from 2009 to 2012. Messi's remarkable achievements during this period, including record-breaking goal-scoring feats and stellar performances for FC Barcelona, solidified his status as one of the greatest footballers of all time.''',
  ),
  ReadModel(
    image: 'https://i.ibb.co/ykrkCpf/10.png',
    name: 'Most Goals Scored by a Team',
    description:
        '''Most Goals Scored by a Team in a Single FIFA World Cup Match: Hungary holds the record for the most goals scored by a team in a single FIFA World Cup match, defeating El Salvador 10-1 during the group stage of the 1982 World Cup held in Spain. Hungary's prolific goal-scoring display showcased their attacking prowess and remains a memorable moment in World Cup history.''',
  ),
];
