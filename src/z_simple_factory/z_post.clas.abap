CLASS z_post DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      Constructor IMPORTING i_postType TYPE string,
      get_id RETURNING VALUE(r_result) TYPE uuid,
      set_id IMPORTING i_id TYPE uuid,
      get_title RETURNING VALUE(r_result) TYPE string,
      set_title IMPORTING i_title TYPE string,
      get_content RETURNING VALUE(r_result) TYPE string,
      set_content IMPORTING i_content TYPE string,
      get_createdon RETURNING VALUE(r_result) TYPE timestamp,
      set_createdon IMPORTING i_createdon TYPE timestamp,
      get_publishedon RETURNING VALUE(r_result) TYPE timestamp,
      set_publishedon IMPORTING i_publishedon TYPE timestamp,
      get_posttype RETURNING VALUE(r_result) TYPE string,
      set_posttype IMPORTING i_posttype TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: id          TYPE uuid,
          postType    TYPE string,
          title       TYPE string,
          content     TYPE string,
          createdOn   TYPE timestamp,
          publishedOn TYPE timestamp.
ENDCLASS.



CLASS z_post IMPLEMENTATION.
  METHOD get_id.
    r_result = me->id.
  ENDMETHOD.

  METHOD set_id.
    me->id = i_id.
  ENDMETHOD.

  METHOD get_title.
    r_result = me->title.
  ENDMETHOD.

  METHOD set_title.
    me->title = i_title.
  ENDMETHOD.

  METHOD get_content.
    r_result = me->content.
  ENDMETHOD.

  METHOD set_content.
    me->content = i_content.
  ENDMETHOD.

  METHOD get_createdon.
    r_result = me->createdon.
  ENDMETHOD.

  METHOD set_createdon.
    me->createdon = i_createdon.
  ENDMETHOD.

  METHOD get_publishedon.
    r_result = me->publishedon.
  ENDMETHOD.

  METHOD set_publishedon.
    me->publishedon = i_publishedon.
  ENDMETHOD.

  METHOD get_posttype.
    r_result = me->posttype.
  ENDMETHOD.

  METHOD set_posttype.
    me->posttype = i_posttype.
  ENDMETHOD.

  METHOD constructor.
    me->posttype = i_posttype.
  ENDMETHOD.

ENDCLASS.
