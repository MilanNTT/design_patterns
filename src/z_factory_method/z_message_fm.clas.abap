CLASS z_message_fm DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      getContent
        RETURNING VALUE(ev_content) TYPE string,
      encrypt.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_message_fm IMPLEMENTATION.
  METHOD encrypt.

  ENDMETHOD.

  METHOD getcontent.

  ENDMETHOD.

ENDCLASS.
