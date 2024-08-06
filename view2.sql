CREATE OR REPLACE VIEW EquipmentCatalogInfo AS
SELECT 
    e.EQSERIALNUMBER,
    e.VALIDITY,
    e.LASTUSE,
    cat.TYPECAT,
    cat.AMOUNT
FROM 
    EQUIPMENT e
JOIN 
    CATALOG cat ON e.CATSERIALNUMBER = cat.CATSERIALNUMBER;
    
    
    
SELECT * 
FROM EquipmentCatalogInfo;


SELECT * 
FROM EquipmentCatalogInfo
ORDER BY LASTUSE ASC;



