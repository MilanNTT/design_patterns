CLASS z_blogpost DEFINITION
  PUBLIC
  INHERITING FROM z_post
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES:
          ty_tags   TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    METHODS: get_author RETURNING VALUE(r_result) TYPE string,
      set_author IMPORTING i_author TYPE string,
      get_tags RETURNING VALUE(r_result) TYPE ty_tags,
      set_tags IMPORTING i_tags TYPE ty_tags.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: author TYPE string,
          tags   TYPE STANDARD TABLE OF string.
ENDCLASS.



CLASS z_blogpost IMPLEMENTATION.
  METHOD get_author.
    r_result = me->author.
  ENDMETHOD.

  METHOD set_author.
    me->author = i_author.
  ENDMETHOD.

  METHOD get_tags.
    r_result = me->tags.
  ENDMETHOD.

  METHOD set_tags.
    me->tags = i_tags.
  ENDMETHOD.

ENDCLASS.
