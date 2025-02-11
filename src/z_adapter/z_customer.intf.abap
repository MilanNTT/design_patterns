INTERFACE z_customer
  PUBLIC .
  METHODS:
    getName
      RETURNING VALUE(name) TYPE string,
    getDesignation
      RETURNING VALUE(designation) TYPE string,
    getAddress
      RETURNING VALUE(address) TYPE string.

ENDINTERFACE.
