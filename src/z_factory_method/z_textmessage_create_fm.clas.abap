CLASS z_textmessage_create_fm DEFINITION
  PUBLIC
  INHERITING FROM z_message_creator_fm
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: createmessage REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_textmessage_create_fm IMPLEMENTATION.
  METHOD createmessage.
    rr_message = NEW z_textmessage_fm( ).
  ENDMETHOD.

ENDCLASS.
