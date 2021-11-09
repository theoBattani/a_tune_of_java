
DELIMITER $

CREATE PROCEDURE get_bands_playing_piece(IN p_id_piece INT)
BEGIN
  SELECT * FROM band
  INNER JOIN directory ON id_band = band.id_band
  WHERE id_piece = p_id_piece;
END $

CREATE PROCEDURE get_meetings_with_piece(IN p_id_piece INT) 
BEGIN 
  SELECT label, band.denomination FROM meeting
  INNER JOIN during ON during.id_meeting = meeting.id_meeting
  INNER JOIN performance ON performance.id_performance = during.id_performance
  INNER JOIN band ON band.id_band = performance.id_band
  INNER JOIN play_piece ON play_piece.id_performance = performance.id_performance
  WHERE play_piece.id_piece = p_id_piece;
END $

DELIMITER ;