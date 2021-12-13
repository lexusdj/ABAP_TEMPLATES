*&---------------------------------------------------------------------*
*& Report  ZBASIC_REPORT_ALVGRID2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT zdemogit_rept_alvgrid2.

PARAMETERS: p_test TYPE xfeld.

DATA lt_output TYPE STANDARD TABLE OF  vbap.

CLASS lcl_alv_grid DEFINITION DEFERRED.

CLASS lcl_report DEFINITION   FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES: zif_report_v2. ", zif_report_alvgrid.

    CLASS-DATA instance TYPE REF TO lcl_report.
    CLASS-METHODS class_constructor.
    METHODS: execute.

  PRIVATE SECTION.
    DATA alv TYPE REF TO lcl_alv_grid.
ENDCLASS.

CLASS lcl_alv_grid DEFINITION INHERITING FROM zcl_bc_alvgrid_template.
  PUBLIC SECTION.
    METHODS: zif_report_alvgrid~on_user_command REDEFINITION,
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
    METHODS: zif_report_alvgrid~get_fieldcatalog REDEFINITION.
ENDCLASS.

CLASS lcl_report IMPLEMENTATION.
  METHOD class_constructor.
    CREATE OBJECT instance.
  ENDMETHOD.
  METHOD zif_report_v2~initialization.
    IF alv IS INITIAL.
      CREATE OBJECT alv.
    ENDIF.
    GET REFERENCE OF lt_output INTO alv->zif_report_alvgrid~m_output_table.

  ENDMETHOD.
  METHOD zif_report_v2~start_of_selection.
    alv->zif_report_alvgrid~get_data_to_display(
      CHANGING
        ct_table_data = lt_output
    ).
  ENDMETHOD.
  METHOD zif_report_v2~end_of_selection.
    execute( ).
  ENDMETHOD.

  METHOD zif_report_v2~load_of_program.
  ENDMETHOD.
  METHOD zif_report_v2~at_selection_screen_output.
  ENDMETHOD.
  METHOD zif_report_v2~at_selection_screen.
  ENDMETHOD.
  METHOD zif_report_v2~at_selection_screen_on.
  ENDMETHOD.
  METHOD zif_report_v2~at_selection_screen_on_end_of.
  ENDMETHOD.
  METHOD zif_report_v2~atsel_scrn_on_help_request_for.
  ENDMETHOD.
  METHOD zif_report_v2~atsel_scr_on_value_request_for.
  ENDMETHOD.
  METHOD zif_report_v2~at_selection_screen_on_block.
  ENDMETHOD.
  METHOD zif_report_v2~atsel_scr_on_radiobutton_group.
  ENDMETHOD.

*  METHOD zif_report_alvgrid~on_after_refresh.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_after_user_command.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_before_user_command.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_button_click.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_context_menu_request.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_data_changed.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_data_changed_finished.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_delayed_callback.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_double_click.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_drop_external_files.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_end_of_list.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_hotspot_click.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_left_click_design.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_left_click_run.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_menu_button.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_move_control.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_ondrag.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_ondrop.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_ondropcomplete.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_ondropgetflavor.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_onf1.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_onf4.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_print_end_of_list.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_print_end_of_page.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_print_top_of_list.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_print_top_of_page.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_right_click.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_size_control.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_subtotal_text.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_toolbar.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_top_of_page.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~on_user_command.
*
*  ENDMETHOD.
*
*  METHOD zif_report_alvgrid~get_data_to_display.
*    SELECT vbeln, posnr
*    FROM vbap
*    INTO TABLE @DATA(lt_data)
*    UP TO 100 ROWS.
*    GET REFERENCE OF lt_data INTO zif_report_alvgrid~m_output_table.
*  ENDMETHOD.

  METHOD execute.
    FIELD-SYMBOLS : <table> TYPE ANY TABLE.

    ASSIGN alv->zif_report_alvgrid~m_output_table->* TO <table> .
    CHECK sy-subrc  = 0.
    IF alv->zif_report_alvgrid~m_alv_grid IS INITIAL.
      IF alv->zif_report_alvgrid~m_alv_container IS INITIAL.
        CREATE OBJECT alv->zif_report_alvgrid~m_alv_container
          EXPORTING
*           parent                      =     " Parent container
            container_name              = 'MYCONTAINER'    " Name of the Screen CustCtrl Name to Link Container To
*           style                       =     " Windows Style Attributes Applied to this Container
*           lifetime                    = LIFETIME_DEFAULT    " Lifetime
            repid                       = sy-cprog    " Screen to Which this Container is Linked
            dynnr                       = '9000'    " Report To Which this Container is Linked
*           no_autodef_progid_dynnr     =     " Don't Autodefined Progid and Dynnr?
          EXCEPTIONS
            cntl_error                  = 1
            cntl_system_error           = 2
            create_error                = 3
            lifetime_error              = 4
            lifetime_dynpro_dynpro_link = 5
            OTHERS                      = 6.
        IF sy-subrc <> 0.
          MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                     WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
        ENDIF.
      ENDIF.
      CREATE OBJECT alv->zif_report_alvgrid~m_alv_grid
        EXPORTING
*         i_shellstyle      = 0    " Control Style
*         i_lifetime        =     " Lifetime
          i_parent          = alv->zif_report_alvgrid~m_alv_container    " Parent Container
*         i_appl_events     = SPACE    " Register Events as Application Events
*         i_parentdbg       =     " Internal, Do not Use
*         i_applogparent    =     " Container for Application Log
*         i_graphicsparent  =     " Container for Graphics
*         i_name            =     " Name
*         i_fcat_complete   = SPACE    " Boolean Variable (X=True, Space=False)
        EXCEPTIONS
          error_cntl_create = 1
          error_cntl_init   = 2
          error_cntl_link   = 3
          error_dp_create   = 4
          OTHERS            = 5.
      IF sy-subrc <> 0.
        MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
                   WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
      ENDIF.
    ENDIF.

    CHECK alv->zif_report_alvgrid~m_alv_grid IS NOT INITIAL.
    " for ABAP DDIC structures/tables
    DATA gt_fcat   TYPE TABLE OF lvc_s_fcat.
    CALL FUNCTION 'LVC_FIELDCATALOG_MERGE'
      EXPORTING
        i_structure_name       = 'VBAP'
      CHANGING
        ct_fieldcat            = gt_fcat[]
      EXCEPTIONS
        inconsistent_interface = 1
        program_error          = 2
        OTHERS                 = 3.

    IF sy-subrc NE 0.
      RETURN.
    ENDIF.

    "Or Local tables, strucs
    TRY.
        cl_salv_table=>factory(
        EXPORTING
        list_display = abap_false
         IMPORTING
    r_salv_table   = DATA(salv_table)
      CHANGING
         t_table        = <table>   ).
        CHECK salv_table IS BOUND.
*        DATA(rt_fcat) = cl_salv_controller_metadata=>get_slis_fieldcatalog(
        DATA(rt_fcat) = cl_salv_controller_metadata=>get_lvc_fieldcatalog(
                   r_columns      = salv_table->get_columns( ) " ALV Filter
                   r_aggregations = salv_table->get_aggregations( ) " ALV Aggregations
           ).

      CATCH cx_root.
    ENDTRY.

    alv->zif_report_alvgrid~m_alv_grid->set_table_for_first_display(
      EXPORTING
*        i_buffer_active               =     " Buffering Active
*        i_bypassing_buffer            =     " Switch Off Buffer
*        i_consistency_check           =     " Starting Consistency Check for Interface Error Recognition
        i_structure_name              =  'VBAP'   " Internal Output Table Structure Name
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
*       it_fieldcatalog               = gt_fcat or fill  i_structure_name parameter  " Field Catalog
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

* screen for alv grid display
    CALL SCREEN 9000.

  ENDMETHOD.

ENDCLASS.



CLASS lcl_alv_grid IMPLEMENTATION.
  METHOD zif_report_alvgrid~on_user_command.

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

  METHOD zif_report_alvgrid~get_data_to_display.

    FIELD-SYMBOLS : <table> TYPE ANY TABLE.

    SELECT vbeln, posnr
    FROM vbap
    INTO CORRESPONDING FIELDS OF TABLE @lt_output
    " @DATA(lt_data)
    UP TO 100 ROWS.

*    GET REFERENCE OF lt_data INTO zif_report_alvgrid~m_output_table.

*    ASSIGN zif_report_alvgrid~m_output_table->* TO <table> .
  ENDMETHOD.

  METHOD zif_report_alvgrid~get_fieldcatalog.

  ENDMETHOD.

ENDCLASS.

INITIALIZATION.
  lcl_report=>instance->zif_report_v2~initialization( ).

AT SELECTION-SCREEN OUTPUT.
  lcl_report=>instance->zif_report_v2~at_selection_screen_output( ).

AT SELECTION-SCREEN.
  lcl_report=>instance->zif_report_v2~at_selection_screen( ).

LOAD-OF-PROGRAM.
  lcl_report=>instance->zif_report_v2~load_of_program( ).

START-OF-SELECTION.
  lcl_report=>instance->zif_report_v2~start_of_selection( ).

END-OF-SELECTION.
  lcl_report=>instance->zif_report_v2~end_of_selection( ).

AT SELECTION-SCREEN ON p_test.
  lcl_report=>instance->zif_report_v2~at_selection_screen_on( ).

*AT SELECTION-SCREEN ON END OF p_test.
*   lcl_report=>instance->zif_report_v2~at_selection_screen_on_end_of( ).

AT SELECTION-SCREEN ON HELP-REQUEST FOR p_test.
  lcl_report=>instance->zif_report_v2~atsel_scrn_on_help_request_for( ).

AT SELECTION-SCREEN ON VALUE-REQUEST FOR  p_test.
  lcl_report=>instance->zif_report_v2~atsel_scr_on_value_request_for( ).

*  AT SELECTION-SCREEN ON BLOCK
*   lcl_report=>instance->zif_report_v2~at_selection_screen_on_block( ).
*    AT SELECTION-SCREEN on RADIOBUTTON GROUP
*   lcl_report=>instance->zif_report_v2~atsel_scr_on_radiobutton_group( ).
