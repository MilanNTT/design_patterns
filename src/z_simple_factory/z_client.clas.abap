CLASS z_client DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_client IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: v_blog TYPE REF TO z_blogpost.
    DATA(post) = z_postfactory=>createpost( EXPORTING typ = 'blog' ).
    out->write( post->get_posttype( ) ).

*    IF post IS INSTANCE OF z_blogpost.
*      v_blog =  CAST z_blogpost( post ).
*      v_blog->set_author( i_author = 'Milan' ).
*      out->write( v_blog->get_author( ) ).
*    ENDIF.

  ENDMETHOD.
ENDCLASS.
