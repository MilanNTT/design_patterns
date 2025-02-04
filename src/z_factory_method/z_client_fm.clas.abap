CLASS z_client_fm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS:
      printMessage
        IMPORTING ir_messageCreator TYPE REF TO z_message_creator_fm
        RETURNING VALUE(rv_content) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_client_fm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( printmessage( NEW z_jsonmessage_creator_fm( ) ) ).
    out->write( printmessage( NEW z_textmessage_creator_fm( ) ) ).
  ENDMETHOD.

  METHOD printmessage.
    DATA(lr_message) = ir_messagecreator->getmessage( ).
    rv_content = lr_message->getcontent( ).
  ENDMETHOD.

ENDCLASS.
