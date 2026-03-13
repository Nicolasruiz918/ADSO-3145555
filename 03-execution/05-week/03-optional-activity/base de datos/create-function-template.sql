-- Se crea o reemplaza la función llamada obtener_precio_producto
-- CREATE OR REPLACE permite actualizar la función si ya existe
CREATE OR REPLACE FUNCTION obtener_precio_producto(producto_sku VARCHAR)

-- La función devolverá un número decimal (precio del producto)
RETURNS DECIMAL

-- Se define el lenguaje que usará la función (PL/pgSQL de PostgreSQL)
LANGUAGE plpgsql

AS
$$

-- Se declara una variable para guardar el precio del producto
DECLARE
    precio DECIMAL;

BEGIN

    -- Se consulta la tabla product
    -- y se busca el producto cuyo SKU coincida con el parámetro recibido
    SELECT unit_price
    INTO precio
    FROM product
    WHERE sku = producto_sku;

    -- Se devuelve el precio encontrado
    RETURN precio;

END;

$$;

SELECT obtener_precio_producto('BCA-001');