REPORT zdemogit_rept_alv_tree .
PARAMETERS: p_test TYPE xfeld.

CLASS lcl_report DEFINITION ABSTRACT FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES : zif_report.", zif_report_alvtree.

*  PRIVATE SECTION.
*    DATA alv TYPE REF TO zif_report_alvtree.
ENDCLASS.

CLASS lcl_alvtree DEFINITION INHERITING FROM zcl_bc_alvgrid_template.
  PUBLIC SECTION.
    METHODS: zif_report_alvgrid~on_after_refresh REDEFINITION,
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
      zif_report_alvgrid~on_user_command REDEFINITION,
      zif_report_alvgrid~get_data_to_display REDEFINITION.

    METHODS constructor IMPORTING i_container_name TYPE char40 DEFAULT 'MY_CONTAINER' i_scree_alv TYPE sy-dynnr DEFAULT '9000'.
    METHODS: zif_report_alvgrid~get_fieldcatalog REDEFINITION.

ENDCLASS.

CLASS lcl_report IMPLEMENTATION.

  METHOD zif_report~initialization.
  ENDMETHOD.
  METHOD zif_report~start_of_selection.
  ENDMETHOD.
  METHOD zif_report~end_of_selection.
    "obsolete
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

CLASS lcl_alvtree IMPLEMENTATION.

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

  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).
*
*    IF  me->zif_report_alvgrid~m_alv_grid IS INITIAL.
*      IF me->zif_report_alvgrid~m_alv_container IS INITIAL.
*        CREATE OBJECT me->zif_report_alvgrid~m_alv_container
*          EXPORTING
**           parent                      =     " Parent container
*            container_name              = i_container_name  " Name of the Screen CustCtrl Name to Link Container To
**           style                       =     " Windows Style Attributes Applied to this Container
**           lifetime                    = LIFETIME_DEFAULT    " Lifetime
*            repid                       = sy-cprog    " Screen to Which this Container is Linked
*            dynnr                       = i_scree_alv    " Report To Which this Container is Linked
**           no_autodef_progid_dynnr     =     " Don't Autodefined Progid and Dynnr?
*          EXCEPTIONS
*            cntl_error                  = 1
*            cntl_system_error           = 2
*            create_error                = 3
*            lifetime_error              = 4
*            lifetime_dynpro_dynpro_link = 5
*            OTHERS                      = 6.
*        IF sy-subrc <> 0.
*          MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
*                     WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
*        ENDIF.
*      ENDIF.
*      CREATE OBJECT me->zif_report_alvgrid~m_alv_grid
*        EXPORTING
**         i_shellstyle      = 0    " Control Style
**         i_lifetime        =     " Lifetime
*          i_parent          = me->zif_report_alvgrid~m_alv_container    " Parent Container
**         i_appl_events     = SPACE    " Register Events as Application Events
**         i_parentdbg       =     " Internal, Do not Use
**         i_applogparent    =     " Container for Application Log
**         i_graphicsparent  =     " Container for Graphics
**         i_name            =     " Name
**         i_fcat_complete   = SPACE    " Boolean Variable (X=True, Space=False)
*        EXCEPTIONS
*          error_cntl_create = 1
*          error_cntl_init   = 2
*          error_cntl_link   = 3
*          error_dp_create   = 4
*          OTHERS            = 5.
*      IF sy-subrc <> 0.
*        MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno
*                   WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
*      ENDIF.
*    ENDIF.

  ENDMETHOD.

  METHOD zif_report_alvgrid~get_fieldcatalog.

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

  DATA(lr_alvtree) = NEW lcl_alvtree( ).

*  PERFORM report_start.

*END-OF-SELECTION. "obsolete
*  lcl_report=>zif_report~end_of_selection( ).


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





*&---------------------------------------------------------------------*
*&      Form  REPORT_START
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM report_start .
  BREAK-POINT.
ENDFORM.
