
DELIMITER $

CREATE PROCEDURE get_bands_playing_piece(IN p_id_piece INT)
BEGIN
  SELECT * FROM band
  INNER JOIN directory ON id_band = band.id_band
  WHERE id_piece = p_id_piece;
END $

CREATE PROCEDURE get_meetings_with_piece(IN p_id_piece INT) 
BEGIN 
  SELECT id_meeting FROM meeting
  INNER JOIN 
END $

DELIMITER ;