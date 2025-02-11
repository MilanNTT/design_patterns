CLASS z_employee_class_adapter DEFINITION
  PUBLIC
  INHERITING FROM z_employee_adapter
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES z_customer .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_employee_class_adapter IMPLEMENTATION.

  METHOD z_customer~getaddress.
    RETURN me->get_officelocation( ).
  ENDMETHOD.

  METHOD z_customer~getdesignation.
    RETURN me->get_officelocation( ).
  ENDMETHOD.

  METHOD z_customer~getname.
    RETURN me->get_fullname( ).
  ENDMETHOD.

ENDCLASS.
