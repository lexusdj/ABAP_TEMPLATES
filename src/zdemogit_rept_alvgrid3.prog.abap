*&---------------------------------------------------------------------*
*& Report  ZBASIC_REPORT_ALVGRID2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zdemogit_rept_alvgrid3.

"Define Selection screen
PARAMETERS: p_test TYPE xfeld.

"define the global table display
TYPES: BEGIN OF ty_output,
*       <here your fields...>
         field TYPE c,
       END OF ty_output,
       ty_output_tt TYPE STANDARD TABLE OF ty_output.
" Table global
DATA t_output TYPE ty_output_tt.
"e.g
DATA: lt_output TYPE STANDARD TABLE OF vbap.


"Ok code for screen 9000
DATA g_okcode TYPE sy-ucomm.

CLASS lcl_alv_grid DEFINITION DEFERRED.

CLASS lcl_report DEFINITION ABSTRACT FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES: zif_report.
ENDCLASS.

CLASS lcl_alv_grid DEFINITION INHERITING FROM zcl_bc_alvgrid_template.
  PUBLIC SECTION.
    ALIASES: m_alv_grid FOR zif_report_alvgrid~m_alv_grid.

    METHODS constructor IMPORTING i_container_name TYPE char40 DEFAULT 'MY_CONTAINER' i_scree_alv TYPE sy-dynnr DEFAULT '9000'.
    METHODS: zif_report_alvgrid~get_fieldcatalog REDEFINITION,
      zif_report_alvgrid~on_user_command REDEFINITION,
      zif_report_alvgrid~on_after_refresh REDEFINITION,
      zif_report_alvgrid~on_after_user_command REDEFINITION,
      zif_report_alvgrid~on_before_user_command REDEFINITION,
      zif_report_alvgrid~on_button_click REDEFINITION,
      zif_report_alvgrid~on_context_menu_request REDEFINITION,
      zif_report_alvgrid~on_data_changed REDEFINITION,
      zif_report_alvgrid~on_data_changed_finished REDEFINITION,
      zif_report_alvgrid~on_delayed_callback REDEFINITION,
      zif_report_alvgrid~on_double_click REDEFINITION,
      zif_report_alvgrid~on_drop_external_files REDEFINITION,
      zif_report_alvgrid~on_end_of_list REDEFINITION,
      zif_report_alvgrid~on_hotspot_click REDEFINITION,
      zif_report_alvgrid~on_left_click_design REDEFINITION,
      zif_report_alvgrid~on_left_click_run REDEFINITION,
      zif_report_alvgrid~on_menu_button REDEFINITION,
      zif_report_alvgrid~on_move_control REDEFINITION,
      zif_report_alvgrid~on_ondrag REDEFINITION,
      zif_report_alvgrid~on_ondrop REDEFINITION,
      zif_report_alvgrid~on_ondropcomplete REDEFINITION,
      zif_report_alvgrid~on_ondropgetflavor REDEFINITION,
      zif_report_alvgrid~on_onf1 REDEFINITION,
      zif_report_alvgrid~on_onf4 REDEFINITION,
      zif_report_alvgrid~on_print_end_of_list REDEFINITION,
      zif_report_alvgrid~on_print_end_of_page REDEFINITION,
      zif_report_alvgrid~on_print_top_of_list REDEFINITION,
      zif_report_alvgrid~on_print_top_of_page REDEFINITION,
      zif_report_alvgrid~on_right_click REDEFINITION,
      zif_report_alvgrid~on_size_control REDEFINITION,
      zif_report_alvgrid~on_subtotal_text REDEFINITION,
      zif_report_alvgrid~on_toolbar REDEFINITION,
      zif_report_alvgrid~on_top_of_page REDEFINITION,
      zif_report_alvgrid~get_data_to_display REDEFINITION.
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
ENDCLASS.



CLASS lcl_alv_grid IMPLEMENTATION.
  METHOD zif_report_alvgrid~on_user_command.
    BREAK-POINT.
    WRITE /: 'User Command', e_ucomm.
  ENDMETHOD.

  METHOD zif_report_alvgrid~on_after_refresh.

  ENDMETHOD.
  METHOD zif_report_alvgrid~on_after_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_before_user_command.

  ENDMETHOD.

  METHOD zif_report_alvgrid~on_button_click.
    BREAK-POINT.
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
    DATA: ls_toolbar TYPE stb_button.
*... Normal Button
    CLEAR      ls_toolbar.
    ls_toolbar-function  = 'EnableStaticMenu'.
    ls_toolbar-icon      = space.
    ls_toolbar-butn_type = '0'.
    ls_toolbar-disabled  = space.
    ls_toolbar-text      = 'EnableStaticMenu'.
    ls_toolbar-quickinfo = space.
    ls_toolbar-checked   = space.
    APPEND ls_toolbar TO e_object->mt_toolbar.
  ENDMETHOD.

  METHOD zif_report_alvgrid~on_top_of_page.

  ENDMETHOD.

  METHOD zif_report_alvgrid~get_data_to_display.

    SELECT vbeln, posnr
    FROM vbap
    INTO CORRESPONDING FIELDS OF TABLE @ct_table_data
      "lt_output
    " @DATA(lt_data)
    UP TO 100 ROWS.
    " get reference table
    GET REFERENCE OF ct_table_data INTO zif_report_alvgrid~m_output_table.

  ENDMETHOD.

  METHOD constructor.
    super->constructor(
      i_container_name = 'MY_CONTAINER'
      i_scree_alv      = '9000' ).

    "EVENTS to register!
    "to Handel ALV event register
    SET HANDLER me->zif_report_alvgrid~on_user_command
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_before_user_command
                FOR   m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_after_user_command
                FOR m_alv_grid.
    "toolbar menu
    SET HANDLER me->zif_report_alvgrid~on_toolbar
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_double_click
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_hotspot_click
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_button_click
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_onf1
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_onf4
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_menu_button
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_data_changed
                FOR m_alv_grid.
    SET HANDLER me->zif_report_alvgrid~on_data_changed_finished
               FOR m_alv_grid.
  ENDMETHOD.

  METHOD zif_report_alvgrid~get_fieldcatalog.

*    DATA:
*      l_columns      TYPE REF TO cl_salv_columns_table,
*      l_aggregations TYPE REF TO cl_salv_aggregations.
*      l_salv_table   TYPE REF TO cl_salv_table.
    FIELD-SYMBOLS:
      <l_table>         TYPE STANDARD TABLE.

    ASSIGN zif_report_alvgrid~m_output_table->* TO <l_table> .
*...New ALV Instance ...............................................
    TRY.
        cl_salv_table=>factory(
          EXPORTING
            list_display = abap_false
          IMPORTING
            r_salv_table = DATA(l_salv_table)
          CHANGING
            t_table      = <l_table> ).
      CATCH cx_salv_msg.                                "#EC NO_HANDLER
    ENDTRY.
*    DATA(l_columns)  = l_salv_table->get_columns( ).
*    DATA(l_aggregations) = l_salv_table->get_aggregations( ).
    et_catalog =
      cl_salv_controller_metadata=>get_lvc_fieldcatalog(
        r_columns             = l_salv_table->get_columns( )
        r_aggregations        = l_salv_table->get_aggregations( ) ).

*Catalogo tipo DDIC LVC_T_FCAT
*Para convertior a tipo SLIS LVC_TRANSFER_TO_SLIS
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

*END-OF-SELECTION. Obsolete
*  lcl_report=>zif_report~end_of_selection( ).

AT SELECTION-SCREEN ON p_test.
  lcl_report=>zif_report~at_selection_screen_on( ).

*AT SELECTION-SCREEN ON END OF p_test.
*   lcl_report=>zif_report~at_selection_screen_on_end_of( ).

AT SELECTION-SCREEN ON HELP-REQUEST FOR p_test.
  lcl_report=>zif_report~atsel_scrn_on_help_request_for( ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR  p_test.
  lcl_report=>zif_report~atsel_scr_on_value_request_for( ).

*  AT SELECTION-SCREEN ON BLOCK
*   lcl_report=>zif_report~at_selection_screen_on_block( ).
*    AT SELECTION-SCREEN on RADIOBUTTON GROUP
*   lcl_report=>zif_report~atsel_scr_on_radiobutton_group( ).

START-OF-SELECTION.
  lcl_report=>zif_report~start_of_selection( ).

  DATA(lr_alvgrid) = NEW lcl_alv_grid(
*      i_container_name = 'MY_CONTAINER'
*      i_scree_alv      = '9000'
  ).




*  "EVENTS to register! done in constructor
*  "to Handel ALV event register
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_user_command
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_before_user_command
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_after_user_command
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  "toolbar menu
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_toolbar
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_double_click
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_hotspot_click
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_button_click
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_onf1
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_onf4
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_menu_button
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_data_changed
*              FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*  SET HANDLER lr_alvgrid->zif_report_alvgrid~on_data_changed_finished
*             FOR lr_alvgrid->zif_report_alvgrid~m_alv_grid.

  "the table shall be defined global in report so a correct referece to the table can be created
  lr_alvgrid->zif_report_alvgrid~get_data_to_display(
    CHANGING
      ct_table_data = lt_output ).
  " get field catalog (the table should be filled first)
  lr_alvgrid->zif_report_alvgrid~get_fieldcatalog(
     IMPORTING
       et_catalog = DATA(lt_fieldcatalog)
   ).

  FIELD-SYMBOLS : <table> TYPE ANY TABLE.
  ASSIGN lr_alvgrid->zif_report_alvgrid~m_output_table->* TO <table> .

  lr_alvgrid->zif_report_alvgrid~m_alv_grid->set_table_for_first_display(
*    EXPORTING
*      i_buffer_active               =     " Buffering Active
*      i_bypassing_buffer            =     " Switch Off Buffer
*      i_consistency_check           =     " Starting Consistency Check for Interface Error Recognition
*      i_structure_name              =  'VBAP'   " Internal Output Table Structure Name
*      is_variant                    =     " Layout
*      i_save                        =     " Save Layout
*      i_default                     = 'X'    " Default Display Variant
*      is_layout                     =     " Layout
*      is_print                      =     " Print Control
*      it_special_groups             =     " Field Groups
*      it_toolbar_excluding          =     " Excluded Toolbar Standard Functions
*      it_hyperlink                  =     " Hyperlinks
*      it_alv_graphics               =     " Table of Structure DTC_S_TC
*      it_except_qinfo               =     " Table for Exception Quickinfo
*      ir_salv_adapter               =     " Interface ALV Adapter
    CHANGING
      it_outtab                     =  <table>   " Output Table
      it_fieldcatalog               = lt_fieldcatalog    " Field Catalog
*      it_sort                       =     " Sort Criteria
*      it_filter                     =     " Filter Criteria
    EXCEPTIONS
      invalid_parameter_combination = 1
      program_error                 = 2
      too_many_lines                = 3
      OTHERS                        = 4
  ).
  IF sy-subrc <> 0.
    MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
               WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  ENDIF.

* screen for alv grid display
  CALL SCREEN 9000.
*&---------------------------------------------------------------------*
*&      Module  STATUS_9000  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_9000 OUTPUT.
  DATA lt_extab TYPE slis_t_extab .
*  SET PF-STATUS 'xxxxxxxx'.
  SET PF-STATUS 'STANDARD_FULLSCREEN' OF PROGRAM 'SAPLSLVC_FULLSCREEN'." EXCLUDING rt_extab[].
*  SET TITLEBAR 'xxx'.
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_9000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_9000 INPUT.
  PERFORM user_command.
ENDMODULE.
MODULE user_cmd_exit_9000 INPUT.
  PERFORM scr_9000_exit.
ENDMODULE.

FORM user_command.

  DATA: l_okcode    LIKE sy-ucomm,
        ls_selfield TYPE slis_selfield.

  l_okcode = g_okcode.
  CLEAR g_okcode.

  CASE l_okcode.
    WHEN zif_report_alvgrid=>con_exit OR zif_report_alvgrid=>con_back OR zif_report_alvgrid=>con_canc.
      g_okcode = l_okcode.
      PERFORM scr_9000_exit.

    WHEN OTHERS.

  ENDCASE.

ENDFORM.

FORM scr_9000_exit.
  DATA: l_okcode LIKE sy-ucomm.

  l_okcode = g_okcode.
  CLEAR g_okcode.

  CASE l_okcode.
    WHEN zif_report_alvgrid=>con_exit OR zif_report_alvgrid=>con_back OR zif_report_alvgrid=>con_canc.
      CALL METHOD lr_alvgrid->zif_report_alvgrid~m_alv_grid->free.
      CALL METHOD lr_alvgrid->zif_report_alvgrid~m_alv_container->free.

      CALL METHOD cl_gui_cfw=>flush.

      CLEAR lr_alvgrid->zif_report_alvgrid~m_alv_container.
      CLEAR lr_alvgrid->zif_report_alvgrid~m_alv_grid.
*      CLEAR gr_events_d0100.

      SET SCREEN 0.
      LEAVE SCREEN.
  ENDCASE.
ENDFORM.
