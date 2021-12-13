*&---------------------------------------------------------------------*
*& Report  ZBASIC_REPORT_TEMPLATE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zdemogit_rept_alvgrid.


PARAMETERS: p_test TYPE xfeld.

CLASS lcl_alv_grid DEFINITION DEFERRED.

CLASS lcl_report DEFINITION ABSTRACT FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES: zif_report,
      zif_report_alvgrid.
    METHODS: execute.
*    CLASS-METHODS class_constructor.
  PRIVATE SECTION.
    DATA alv TYPE REF TO lcl_alv_grid.
ENDCLASS.

CLASS lcl_report IMPLEMENTATION.
*  METHOD class_constructor.
*    CREATE OBJECT alv.
*  ENDMETHOD.
  METHOD zif_report~initialization.
  ENDMETHOD.
  METHOD zif_report~start_of_selection.
*    alv->zif_report_alvgrid~get_data_to_display(  ).
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

  METHOD zif_report_alvgrid~on_after_refresh.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_after_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_before_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_button_click.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_context_menu_request.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_data_changed.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_data_changed_finished.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_delayed_callback.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_double_click.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_drop_external_files.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_end_of_list.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_hotspot_click.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_left_click_design.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_left_click_run.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_menu_button.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_move_control.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_ondrag.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_ondrop.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_ondropcomplete.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_ondropgetflavor.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_onf1.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_onf4.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_print_end_of_list.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_print_end_of_page.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_print_top_of_list.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_print_top_of_page.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_right_click.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_size_control.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_subtotal_text.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_toolbar.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_top_of_page.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~get_data_to_display.
    SELECT vbeln, posnr
    FROM vbap
    INTO TABLE @DATA(lt_data)
    UP TO 100 ROWS.
  ENDMETHOD.

  METHOD execute.
    FIELD-SYMBOLS : <table> TYPE ANY  TABLE.

    ASSIGN zif_report_alvgrid~m_output_table->* TO <table> .

    zif_report_alvgrid~m_alv_grid->set_table_for_first_display(
*      EXPORTING
*        i_buffer_active               =     " Buffering Active
*        i_bypassing_buffer            =     " Switch Off Buffer
*        i_consistency_check           =     " Starting Consistency Check for Interface Error Recognition
*        i_structure_name              =     " Internal Output Table Structure Name
*        is_variant                    =     " Layout
*        i_save                        =     " Save Layout
*        i_default                     = 'X'    " Default Display Variant
*        is_layout                     =     " Layout
*        is_print                      =     " Print Control
*        it_special_groups             =     " Field Groups
*        it_toolbar_excluding          =     " Excluded Toolbar Standard Functions
*        it_hyperlink                  =     " Hyperlinks
*        it_alv_graphics               =     " Table of Structure DTC_S_TC
*        it_except_qinfo               =     " Table for Exception Quickinfo
*        ir_salv_adapter               =     " Interface ALV Adapter
      CHANGING
        it_outtab                     = <table>    " Output Table
*        it_fieldcatalog               =     " Field Catalog
*        it_sort                       =     " Sort Criteria
*        it_filter                     =     " Filter Criteria
      EXCEPTIONS
        invalid_parameter_combination = 1
        program_error                 = 2
        too_many_lines                = 3
        OTHERS                        = 4
    ).
    IF sy-subrc <> 0.
*     MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
*                WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
    ENDIF.
  ENDMETHOD.

  METHOD zif_report_alvgrid~get_fieldcatalog.

  ENDMETHOD.

ENDCLASS.

CLASS lcl_alv_grid DEFINITION ABSTRACT INHERITING FROM zcl_bc_alvgrid_template.
  PUBLIC SECTION.
    METHODS: zif_report_alvgrid~on_user_command REDEFINITION.
    METHODS: zif_report_alvgrid~on_after_refresh REDEFINITION.
ENDCLASS.

CLASS lcl_alv_grid IMPLEMENTATION.
  METHOD zif_report_alvgrid~on_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_after_refresh.

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
