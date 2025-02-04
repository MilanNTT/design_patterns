CLASS z_message_creator_fm DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      getMessage
        RETURNING VALUE(rr_message) TYPE REF TO z_message_fm,
      createMessage ABSTRACT
        RETURNING VALUE(rr_message) TYPE REF TO z_message_fm.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_message_creator_fm IMPLEMENTATION.
  METHOD getmessage.

    rr_message = createmessage( ).
*    rr_message->addDefaultHandler( ).
    rr_message->encrypt( ).

  ENDMETHOD.

ENDCLASS.
