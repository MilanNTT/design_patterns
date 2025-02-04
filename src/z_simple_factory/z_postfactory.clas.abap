CLASS z_postfactory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS:
      createPost
        IMPORTING typ         TYPE string
        RETURNING VALUE(post) TYPE REF TO z_post.
*        RAISING cx_static_check.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_postfactory IMPLEMENTATION.
  METHOD createpost.

    CASE typ.
      WHEN 'blog'.
        RETURN NEW z_blogpost( i_posttype = 'blog' ).
      WHEN 'news'.
        RETURN NEW z_newspost( i_posttype = 'news' ).
      WHEN 'Product'.
        RETURN NEW z_productpost( i_posttype = 'Product' ).
*      WHEN OTHERS.
*        RAISE EXCEPTION NEW cx_sy_arg_out_of_domain( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
