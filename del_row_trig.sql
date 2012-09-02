CREATE OR REPLACE TRIGGER DEL_ROW_TRIG
AFTER DELETE ON po_item
FOR EACH ROW
BEGIN
 INSERT INTO po_item_log( proj_no, po_no, it_no, qty, price, "COMMENT" )
  VALUES ( :OLD.proj_no, :OLD.po_no, :OLD.it_no, :OLD.qty, :OLD.price, 'DELETED' ) ;
END ;
/