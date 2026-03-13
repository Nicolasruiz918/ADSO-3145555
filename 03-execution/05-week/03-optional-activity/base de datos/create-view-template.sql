-- Se crea o reemplaza una vista llamada view_invoices_basic
-- CREATE OR REPLACE permite actualizar la vista si ya existe
CREATE OR REPLACE VIEW view_invoices_basic AS

-- Selecciona los campos que se mostrarán en la vista
SELECT 

    -- Número de la factura
    i.invoice_number,

    -- Se concatenan el nombre y apellido del cliente
    -- para mostrar el nombre completo
    p.first_name || ' ' || p.last_name AS customer,

    -- Fecha en la que se emitió la factura
    i.issue_date,

    -- Total que se debe pagar en la factura
    i.total_amount,

    -- Estado de la factura (pagada, pendiente, cancelada, etc.)
    i.status

-- Tabla principal de facturas
FROM invoice i

-- Se une con la tabla de pedidos
-- porque cada factura pertenece a un pedido
JOIN "order" o ON i.order_id = o.id

-- Se une con la tabla de clientes
-- porque cada pedido pertenece a un cliente
JOIN customer c ON o.customer_id = c.id

-- Se une con la tabla de personas
-- para obtener el nombre y apellido del cliente
JOIN person p ON c.person_id = p.id;



SELECT * FROM view_invoices_basic;