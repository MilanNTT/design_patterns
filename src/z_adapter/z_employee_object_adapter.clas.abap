CLASS z_employee_object_adapter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES z_customer .
    METHODS:
      constructor
        IMPORTING employee TYPE REF TO z_employee_adapter.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        employee TYPE REF TO z_employee_adapter.
ENDCLASS.



CLASS z_employee_object_adapter IMPLEMENTATION.

  METHOD constructor.
    me->employee = employee.
  ENDMETHOD.


  METHOD z_customer~getaddress.
    employee->get_fullname( ).
  ENDMETHOD.


  METHOD z_customer~getdesignation.
    employee->get_jobtitle( ).
  ENDMETHOD.


  METHOD z_customer~getname.
    employee->get_fullname( ).
  ENDMETHOD.

ENDCLASS.
