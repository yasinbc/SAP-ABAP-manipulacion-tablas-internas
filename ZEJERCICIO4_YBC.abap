*&---------------------------------------------------------------------*
*& Report ZEJERCICIO4_YBC
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zejercicio4_ybc.

DATA: clientes TYPE TABLE OF  ZTYBC_CLIENTES,
      cliente LIKE LINE OF clientes.

SELECT * FROM ztybc_clientes INTO TABLE clientes.

LOOP AT clientes INTO cliente.
  WRITE:/ 'Sucursal: ', cliente-sucursal.
  WRITE: '  Cliente: ', cliente-nombre_cliente.
  write: '  Cuenta: ', cliente-cuenta.
  WRITE: '  Saldo: ', cliente-saldo, cliente-moneda.
  write: '  Divisa: ', cliente-moneda.
  ""write: '  Clave: ', cliente-clavecliente.
ENDLOOP.