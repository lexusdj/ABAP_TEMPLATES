*&---------------------------------------------------------------------*
*& Report  ZBASIC_REPORT_TEMPLATE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zdemogit_rept_alv_factory.


PARAMETERS: p_test TYPE xfeld.

CLASS lcl_report DEFINITION ABSTRACT FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES: zif_report, zif_report_alv_factory.
ENDCLASS.

CLASS lcl_report IMPLEMENTATION.

  METHOD zif_report~initialization.
  ENDMETHOD.
  METHOD zif_report~start_of_selection.
  ENDMETHOD.
  METHOD zif_report~end_of_selection.
  ENDMETHOD.
  METHOD zif_report~load_of_program.
  ENDMETHOD.
  METHOD zif_report~at_selection_screen_output.
  ENDMETHOD.
  METHOD zif_report~at_selection_screen.
  ENDMETHOD.
  METHOD zif_report~at_selection_screen_on.
  ENDMETHOD.
  METHOD zif_report~at_selection_screen_on_end_of.
  ENDMETHOD.
  METHOD zif_report~atsel_scrn_on_help_request_for.
  ENDMETHOD.
  METHOD zif_report~atsel_scr_on_value_request_for.
  ENDMETHOD.
  METHOD zif_report~at_selection_screen_on_block.
  ENDMETHOD.
  METHOD zif_report~atsel_scr_on_radiobutton_group.
  ENDMETHOD.
  METHOD zif_report_alv_factory~on_added_function.

  ENDMETHOD.

  METHOD zif_report_alv_factory~on_after_salv_function.

  ENDMETHOD.

  METHOD zif_report_alv_factory~on_before_salv_function.

  ENDMETHOD.

  METHOD zif_report_alv_factory~on_end_of_page.

  ENDMETHOD.

  METHOD zif_report_alv_factory~on_top_of_page.

  ENDMETHOD.

ENDCLASS.

INITIALIZATION.
  lcl_report=>zif_report~initialization( ).

AT SELECTION-SCREEN OUTPUT.
  lcl_report=>zif_report~at_selection_screen_output( ).

AT SELECTION-SCREEN.
  lcl_report=>zif_report~at_selection_screen( ).

LOAD-OF-PROGRAM.
  lcl_report=>zif_report~load_of_program( ).

START-OF-SELECTION.
  lcl_report=>zif_report~start_of_selection( ).

END-OF-SELECTION.
  lcl_report=>zif_report~end_of_selection( ).

AT SELECTION-SCREEN ON p_test.
  lcl_report=>zif_report~at_selection_screen_on( ).

*AT SELECTION-SCREEN ON END OF p_test.
*  lcl_report=>zif_report~at_selection_screen_on_end_of( ).

AT SELECTION-SCREEN ON HELP-REQUEST FOR p_test.
  lcl_report=>zif_report~atsel_scrn_on_help_request_for( ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR  p_test.
  lcl_report=>zif_report~atsel_scr_on_value_request_for( ).

*  AT SELECTION-SCREEN ON BLOCK
*  lcl_report=>zif_report~at_selection_screen_on_block( ).
*    AT SELECTION-SCREEN on RADIOBUTTON GROUP
*  lcl_report=>zif_report~atsel_scr_on_radiobutton_group( ).
