CREATE TABLE INVOICE (
    supplier_id TINYINT,
    invoice_amount DECIMAL(8, 2),
    due_date DATE
);

CREATE TABLE SUPPLIER (
    supplier_id TINYINT,
    name VARCHAR(200)
);

INSERT INTO SUPPLIER (supplier_id, name)
VALUES 
(1, 'Catering Plus'),
(2, 'Dave''s Discos'),  
(3, 'Entertainment Tonight'),
(4, 'Ice Ice Baby'),
(5, 'Party Animals');


INSERT INTO INVOICE (supplier_id, invoice_amount, due_date)
VALUES
(5, 6000.00, DATE_ADD('day', -DAY(DATE_ADD('month', 4, CURRENT_DATE)), DATE_ADD('month', 4, CURRENT_DATE))),
(1, 2000.00, DATE_ADD('day', -DAY(DATE_ADD('month', 3, CURRENT_DATE)), DATE_ADD('month', 3, CURRENT_DATE))),
(1, 1500.00, DATE_ADD('day', -DAY(DATE_ADD('month', 4, CURRENT_DATE)), DATE_ADD('month', 4, CURRENT_DATE))),
(2, 500.00, DATE_ADD('day', -DAY(DATE_ADD('month', 2, CURRENT_DATE)), DATE_ADD('month', 2, CURRENT_DATE))),
(3, 6000.00, DATE_ADD('day', -DAY(DATE_ADD('month', 4, CURRENT_DATE)), DATE_ADD('month', 4, CURRENT_DATE))),
(4, 4000.00, DATE_ADD('day', -DAY(DATE_ADD('month', 7, CURRENT_DATE)), DATE_ADD('month', 7, CURRENT_DATE)));
