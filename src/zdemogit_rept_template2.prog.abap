*&---------------------------------------------------------------------*
*& Report  ZBASIC_REPORT_TEMPLATE2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zdemogit_rept_template2.


PARAMETERS: p_test TYPE xfeld.

CLASS lcl_report DEFINITION FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES zif_git_report_v2.
    CLASS-DATA instance TYPE REF TO lcl_report.
    CLASS-METHODS class_constructor.
ENDCLASS.

CLASS lcl_report IMPLEMENTATION.
  METHOD class_constructor.
    CREATE OBJECT instance.
  ENDMETHOD.
  METHOD zif_git_report_v2~initialization.
  ENDMETHOD.
  METHOD zif_git_report_v2~start_of_selection.
  ENDMETHOD.
  METHOD zif_git_report_v2~end_of_selection.
  ENDMETHOD.
  METHOD zif_git_report_v2~load_of_program.
  ENDMETHOD.
  METHOD zif_git_report_v2~at_selection_screen_output.
  ENDMETHOD.
  METHOD zif_git_report_v2~at_selection_screen.
  ENDMETHOD.
  METHOD zif_git_report_v2~at_selection_screen_on.
  ENDMETHOD.
  METHOD zif_git_report_v2~at_selection_screen_on_end_of.
  ENDMETHOD.
  METHOD zif_git_report_v2~atsel_scrn_on_help_request_for.
  ENDMETHOD.
  METHOD zif_git_report_v2~atsel_scr_on_value_request_for.
  ENDMETHOD.
  METHOD zif_git_report_v2~at_selection_screen_on_block.
  ENDMETHOD.
  METHOD zif_git_report_v2~atsel_scr_on_radiobutton_group.
  ENDMETHOD.
ENDCLASS.

INITIALIZATION.
  lcl_report=>instance->zif_git_report_v2~initialization( ).

AT SELECTION-SCREEN OUTPUT.
  lcl_report=>instance->zif_git_report_v2~at_selection_screen_output( ).

AT SELECTION-SCREEN.
  lcl_report=>instance->zif_git_report_v2~at_selection_screen( ).

LOAD-OF-PROGRAM.
  lcl_report=>instance->zif_git_report_v2~load_of_program( ).

START-OF-SELECTION.
  lcl_report=>instance->zif_git_report_v2~start_of_selection( ).

END-OF-SELECTION.
  lcl_report=>instance->zif_git_report_v2~end_of_selection( ).

AT SELECTION-SCREEN ON p_test.
  lcl_report=>instance->zif_git_report_v2~at_selection_screen_on( ).

*AT SELECTION-SCREEN ON END OF p_test.
*  lcl_report=>instance->zif_git_report_v2~at_selection_screen_on_end_of( ).

AT SELECTION-SCREEN ON HELP-REQUEST FOR p_test.
  lcl_report=>instance->zif_git_report_v2~atsel_scrn_on_help_request_for( ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR  p_test.
  lcl_report=>instance->zif_git_report_v2~atsel_scr_on_value_request_for( ).

*  AT SELECTION-SCREEN ON BLOCK
*  lcl_report=>instance->zif_git_report_v2~at_selection_screen_on_block( ).
*    AT SELECTION-SCREEN on RADIOBUTTON GROUP
*  lcl_report=>instance->zif_git_report_v2~atsel_scr_on_radiobutton_group( ).
