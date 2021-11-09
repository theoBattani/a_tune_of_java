
DELIMITER $

CREATE PROCEDURE get_bands_playing_piece(IN p_id_piece INT)
BEGIN
  SELECT band.denomination,  
    FROM band
  INNER JOIN play_piece 
    ON play_piece.id_piece = piece.id_piece
  INNER JOIN performance
    ON performance.id_performance = play_piece.id_performance
  INNER JOIN during 
    ON during.id_performance = performance.id_performance
  WHERE id_piece = p_id_piece;
END $

CREATE PROCEDURE get_meetings_by_piece_and_band(
  IN p_id_piece INT,
  IN p_id_band INT
) 
BEGIN 
  SELECT meeting.label, band.denomination 
    FROM meeting
  INNER JOIN during 
    ON during.id_meeting = meeting.id_meeting
  INNER JOIN band 
    ON band.id_band = performance.id_band
  INNER JOIN play_piece 
    ON play_piece.id_performance = performance.id_performance
  WHERE play_piece.id_piece = p_id_piece
    AND band.id_band = p_id_band;
END $

CREATE PROCEDURE get_musician_by_meeting_and_speciality(
  IN p_id_meeting INT,
  IN p_id_speciality iNT
)
BEGIN
  SELECT firstname, lastname 
    FROM person
  INNER JOIN musician 
    ON musician.id_person = person.id_person
  INNER JOIN member_of_band 
    ON member_of_band.id_musician = musician.id_musician
  INNER JOIN band 
    ON band.id_band = member_of_band.id_band
  INNER JOIN performance 
    ON performance.id_band = band.id_band
  INNER JOIN during 
    ON during.id_performance = performance.id_performance
  INNER JOIN meeting 
    ON meeting.id_meeting = during.id_meeting
  WHERE meeting.id_meeting = p_id_meeting 
    AND musician.id_speciality = p_id_speciality;
END $

CREATE PROCEDURE get_piece_by_country_longer_than(
  IN p_id_country INT,
  IN p_seconds INT
)
BEGIN
  SELECT piece.denomination, piece.duration 
  FROM piece
  INNER JOIN play_piece 
    ON play_piece.id_piece = piece.id_piece
  INNER jOIN performance 
    ON performance.id_performance = play_piece.id_performance
  INNER JOIN during 
    ON during.id_performance = performance.id_performance
  INNER JOIN meeting 
    ON meeting.id_meeting = during.id_meeting
  INNER JOIN takes_place
    ON takes_place.id_meeting = meeting.id_meeting
  INNER JOIN address
    ON address.id_address = takers_place.id_address
  INNER JOIN city
    ON city.id_city = address.id_city
  WHERE piece.duration > p_seconds
    AND city.id_country = p_id_country;
END $

CREATE PROCEDURE get_meeting_by_band_count(
  IN p_band_count INT
)
BEGIN
  SELECT meeting.label, meeting.expected_visitors
    FROM meeting
  INNER JOIN during 
    ON during.id_meeting = meeting.id_meeting
  INNER JOIN performance
    ON performance.id_performance = during.id_performance
  WHERE COUNT(DISTINCT performance.id_band) = p_band_count;
END $ 

CREATE PROCEDURE get_meetings_by_instrument(
  IN p_id_instrument INT
)
BEGIN 
  SELECT meeting.label, meeting.expected_visitors
    FROM meeting
  INNER JOIN during
    ON during.id_meeting = meeting.id_meeting
  INNER JOIN performance
    ON performance.id_performance = during.id_performance
  INNER JOIN band
    ON band.id_band = performance.id_band
  INNER JOIN member_of_band
    ON member_of_band.id_band = band.id_band
  INNER JOIN musician
    ON musician.id_musician = member_of_band.id_musician
  INNER JOIN play
    ON play.id_musician = musician.id_musician
  WHERE play.id_instrument = p_id_instrument;
END $

DELIMITER ;