CLASS z_productpost DEFINITION
  PUBLIC
  INHERITING FROM z_post
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_imageurl RETURNING VALUE(r_result) TYPE string,
      set_imageurl IMPORTING i_imageurl TYPE string,
      get_name RETURNING VALUE(r_result) TYPE string,
      set_name IMPORTING i_name TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: imageURL TYPE string,
          name     TYPE string.
ENDCLASS.



CLASS z_productpost IMPLEMENTATION.
  METHOD get_imageurl.
    r_result = me->imageurl.
  ENDMETHOD.

  METHOD set_imageurl.
    me->imageurl = i_imageurl.
  ENDMETHOD.

  METHOD get_name.
    r_result = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = i_name.
  ENDMETHOD.

ENDCLASS.
