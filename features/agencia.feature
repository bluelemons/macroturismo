# language: es

Característica: Gestión de agencias
  Para cargar los datos para la VENTA, necesitamos primero los datos de la
  agencia.
  Principalmente, los datos son:
  - Nombre de agencia y legajo,
  - domicilio, teléfono, mail
  - Responsabilidad frente al IVA (r. inscripto/monotributo/exento)
  - CUIT

  Escenario: Carga de una agencia
    Cuando cargo los datos de una agencia
    Entonces la agencia está disponible para crear reservas
