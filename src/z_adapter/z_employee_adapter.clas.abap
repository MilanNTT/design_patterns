CLASS z_employee_adapter DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_fullname RETURNING VALUE(r_result) TYPE string,
      set_fullname IMPORTING i_fullname TYPE string,
      get_jobtitle RETURNING VALUE(r_result) TYPE string,
      set_jobtitle IMPORTING i_jobtitle TYPE string,
      get_officelocation RETURNING VALUE(r_result) TYPE string,
      set_officelocation IMPORTING i_officelocation TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      fullName       TYPE string,
      jobTitle       TYPE string,
      officeLocation TYPE string.
ENDCLASS.



CLASS z_employee_adapter IMPLEMENTATION.

  METHOD get_fullname.
    r_result = me->fullname.
  ENDMETHOD.

  METHOD set_fullname.
    me->fullname = i_fullname.
  ENDMETHOD.

  METHOD get_jobtitle.
    r_result = me->jobtitle.
  ENDMETHOD.

  METHOD set_jobtitle.
    me->jobtitle = i_jobtitle.
  ENDMETHOD.

  METHOD get_officelocation.
    r_result = me->officelocation.
  ENDMETHOD.

  METHOD set_officelocation.
    me->officelocation = i_officelocation.
  ENDMETHOD.

ENDCLASS.
