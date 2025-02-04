CLASS z_textmessage_creator_fm DEFINITION
  PUBLIC
  INHERITING FROM z_message_creator_fm
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: createmessage REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_textmessage_creator_fm IMPLEMENTATION.
  METHOD createmessage.
    RETURN NEW z_textmessage_fm( ).
  ENDMETHOD.

ENDCLASS.
