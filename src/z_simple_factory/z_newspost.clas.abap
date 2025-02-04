CLASS z_newspost DEFINITION
  PUBLIC
  INHERITING FROM z_post
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_headline RETURNING value(r_result) TYPE string,
             set_headline IMPORTING i_headline TYPE string,
             get_localdate RETURNING value(r_result) TYPE cl_abap_context_info=>ty_system_date,
             set_localdate IMPORTING i_localdate TYPE cl_abap_context_info=>ty_system_date.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: headLine  TYPE string,
          localDate TYPE cl_abap_context_info=>ty_system_date.
ENDCLASS.



CLASS z_newspost IMPLEMENTATION.
  METHOD get_headline.
    r_result = me->headline.
  ENDMETHOD.

  METHOD set_headline.
    me->headline = i_headline.
  ENDMETHOD.

  METHOD get_localdate.
    r_result = me->localdate.
  ENDMETHOD.

  METHOD set_localdate.
    me->localdate = i_localdate.
  ENDMETHOD.

ENDCLASS.
