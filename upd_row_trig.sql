CREATE OR REPLACE TRIGGER UPD_PRICE_TRIG
BEFORE UPDATE ON po_item
FOR EACH ROW
BEGIN
 INSERT INTO po_item_log ( proj_no, po_no, it_no, qty, price, "COMMENT" )
  VALUES ( :OLD.proj_no, :OLD.po_no, :OLD.it_no, :OLD.qty, :OLD.price, 'UNIT PRICE CHANGED FROM' ) ;
 INSERT INTO po_item_log ( proj_no, po_no, it_no, qty, price, "COMMENT" )
  VALUES ( :NEW.proj_no, :NEW.po_no, :NEW.it_no, :NEW.qty, :NEW.price, 'TO' ) ;
END ;
/


