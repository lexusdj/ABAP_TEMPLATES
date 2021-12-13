interface ZIF_GIT_REPORT_ALVGRID
  public .


  constants CON_TRUE type CHAR1 value 'X' ##NO_TEXT.
  constants CON_OK type SY-UCOMM value 'OK' ##NO_TEXT.
  constants CON_EXIT type SY-UCOMM value '&F15' ##NO_TEXT. "'EXIT',
  constants CON_CANC type SY-UCOMM value '&F12' ##NO_TEXT. "'CANC',
  constants CON_BACK type SY-UCOMM value '&F03' ##NO_TEXT. " 'BACK'.
  " check values at 'STANDARD_FULLSCREEN' OF PROGRAM 'SAPLSLVC_FULLSCREEN'
  data M_ALV_GRID type ref to CL_GUI_ALV_GRID .
  data M_ALV_SPLITTER type ref to CL_GUI_SPLITTER_CONTAINER .
*  DATA m_alv_container TYPE REF TO cl_gui_container .
  data M_ALV_CONTAINER type ref to CL_GUI_CUSTOM_CONTAINER .
  data M_VARIANT type DISVARIANT .
  data M_FIELDCAT type LVC_T_FCAT .
  data M_LAYOUT type LVC_S_LAYO .
  data M_TOOLBAR type UI_FUNCTIONS .
  data M_SORT type LVC_T_SORT .
  data M_OUTPUT_TABLE type ref to DATA .
  data M_MESSAGE_LIST type ref to ZCL_BC_MESSAGE_LIST .

  methods ON_AFTER_REFRESH
    for event AFTER_REFRESH of CL_GUI_ALV_GRID .
  methods ON_AFTER_USER_COMMAND
    for event AFTER_USER_COMMAND of CL_GUI_ALV_GRID
    importing
      !E_UCOMM
      !E_SAVED
      !E_NOT_PROCESSED .
  methods ON_BEFORE_USER_COMMAND
    for event BEFORE_USER_COMMAND of CL_GUI_ALV_GRID
    importing
      !E_UCOMM .
  methods ON_BUTTON_CLICK
    for event BUTTON_CLICK of CL_GUI_ALV_GRID
    importing
      !ES_COL_ID
      !ES_ROW_NO .
*methods ON_CLICK_COL_HEADER for event CLICK_COL_HEADER of CL_GUI_ALV_GRID .
*methods ON_CLICK_ROW_COL for event CLICK_ROW_COL of CL_GUI_ALV_GRID .
*methods ON_CONTEXT_MENU for event CONTEXT_MENU of CL_GUI_ALV_GRID .
  methods ON_CONTEXT_MENU_REQUEST
    for event CONTEXT_MENU_REQUEST of CL_GUI_ALV_GRID
    importing
      !E_OBJECT .
*methods ON_CONTEXT_MENU_SELECTED for event CONTEXT_MENU_SELECTED of CL_GUI_ALV_GRID .
  methods ON_DATA_CHANGED
    for event DATA_CHANGED of CL_GUI_ALV_GRID
    importing
      !ER_DATA_CHANGED
      !E_ONF4
      !E_ONF4_BEFORE
      !E_ONF4_AFTER
      !E_UCOMM .
  methods ON_DATA_CHANGED_FINISHED
    for event DATA_CHANGED_FINISHED of CL_GUI_ALV_GRID
    importing
      !E_MODIFIED
      !ET_GOOD_CELLS .
*methods ON_DBLCLICK_ROW_COL for event DBLCLICK_ROW_COL of CL_GUI_ALV_GRID .
  methods ON_DELAYED_CALLBACK
    for event DELAYED_CALLBACK of CL_GUI_ALV_GRID .
*methods ON_DELAYED_CHANGE_SELECTION for event DELAYED_CHANGE_SELECTION of CL_GUI_ALV_GRID .
*methods ON_DELAYED_CHANGED_SEL_CALLBACK for event DELAYED_CHANGED_SEL_CALLBACK of CL_GUI_ALV_GRID .
*methods ON_DELAYED_MOVE_CURRENT_CELL for event DELAYED_MOVE_CURRENT_CELL of CL_GUI_ALV_GRID .
  methods ON_DOUBLE_CLICK
    for event DOUBLE_CLICK of CL_GUI_ALV_GRID
    importing
      !E_ROW
      !E_COLUMN
      !ES_ROW_NO .
*methods ON_DOUBLE_CLICK_COL_SEPARATOR for event DOUBLE_CLICK_COL_SEPARATOR of CL_GUI_ALV_GRID .
  methods ON_DROP_EXTERNAL_FILES
    for event DROP_EXTERNAL_FILES of CL_GUI_ALV_GRID
    importing
      !FILES .
  methods ON_END_OF_LIST
    for event END_OF_LIST of CL_GUI_ALV_GRID
    importing
      !E_DYNDOC_ID .
*methods ON_F1 for event F1 of CL_GUI_ALV_GRID .
  methods ON_HOTSPOT_CLICK
    for event HOTSPOT_CLICK of CL_GUI_ALV_GRID
    importing
      !E_ROW_ID
      !E_COLUMN_ID
      !ES_ROW_NO .
  methods ON_LEFT_CLICK_DESIGN
    for event LEFT_CLICK_DESIGN of CL_GUI_ALV_GRID .
  methods ON_LEFT_CLICK_RUN
    for event LEFT_CLICK_RUN of CL_GUI_ALV_GRID .
  methods ON_MENU_BUTTON
    for event MENU_BUTTON of CL_GUI_ALV_GRID
    importing
      !E_OBJECT
      !E_UCOMM .
  methods ON_MOVE_CONTROL
    for event MOVE_CONTROL of CL_GUI_ALV_GRID .
  methods ON_ONDRAG
    for event ONDRAG of CL_GUI_ALV_GRID
    importing
      !E_ROW
      !E_COLUMN
      !ES_ROW_NO
      !E_DRAGDROPOBJ .
  methods ON_ONDROP
    for event ONDROP of CL_GUI_ALV_GRID
    importing
      !E_ROW
      !E_COLUMN
      !ES_ROW_NO
      !E_DRAGDROPOBJ .
  methods ON_ONDROPCOMPLETE
    for event ONDROPCOMPLETE of CL_GUI_ALV_GRID
    importing
      !E_ROW
      !E_COLUMN
      !ES_ROW_NO
      !E_DRAGDROPOBJ .
  methods ON_ONDROPGETFLAVOR
    for event ONDROPGETFLAVOR of CL_GUI_ALV_GRID
    importing
      !E_ROW
      !E_COLUMN
      !ES_ROW_NO
      !E_DRAGDROPOBJ
      !E_FLAVORS .
  methods ON_ONF1
    for event ONF1 of CL_GUI_ALV_GRID
    importing
      !E_FIELDNAME
      !ES_ROW_NO
      !ER_EVENT_DATA .
  methods ON_ONF4
    for event ONF4 of CL_GUI_ALV_GRID
    importing
      !E_FIELDNAME
      !E_FIELDVALUE
      !ES_ROW_NO
      !ER_EVENT_DATA
      !ET_BAD_CELLS
      !E_DISPLAY .
  methods ON_PRINT_END_OF_LIST
    for event PRINT_END_OF_LIST of CL_GUI_ALV_GRID .
  methods ON_PRINT_END_OF_PAGE
    for event PRINT_END_OF_PAGE of CL_GUI_ALV_GRID .
  methods ON_PRINT_TOP_OF_LIST
    for event PRINT_TOP_OF_LIST of CL_GUI_ALV_GRID .
  methods ON_PRINT_TOP_OF_PAGE
    for event PRINT_TOP_OF_PAGE of CL_GUI_ALV_GRID
    importing
      !TABLE_INDEX .
  methods ON_RIGHT_CLICK
    for event RIGHT_CLICK of CL_GUI_ALV_GRID .
  methods ON_SIZE_CONTROL
    for event SIZE_CONTROL of CL_GUI_ALV_GRID .
  methods ON_SUBTOTAL_TEXT
    for event SUBTOTAL_TEXT of CL_GUI_ALV_GRID
    importing
      !ES_SUBTOTTXT_INFO
      !EP_SUBTOT_LINE
      !E_EVENT_DATA .
  methods ON_TOOLBAR
    for event TOOLBAR of CL_GUI_ALV_GRID
    importing
      !E_OBJECT
      !E_INTERACTIVE .
*methods ON_TOOLBAR_BUTTON_CLICK for event TOOLBAR_BUTTON_CLICK of CL_GUI_ALV_GRID .
*methods ON_TOOLBAR_MENU_SELECTED for event TOOLBAR_MENU_SELECTED of CL_GUI_ALV_GRID .
*methods ON_TOOLBAR_MENUBUTTON_CLICK for event TOOLBAR_MENUBUTTON_CLICK of CL_GUI_ALV_GRID .
  methods ON_TOP_OF_PAGE
    for event TOP_OF_PAGE of CL_GUI_ALV_GRID
    importing
      !E_DYNDOC_ID
      !TABLE_INDEX .
*methods ON_TOTAL_CLICK_ROW_COL for event TOTAL_CLICK_ROW_COL of CL_GUI_ALV_GRID .
  methods ON_USER_COMMAND
    for event USER_COMMAND of CL_GUI_ALV_GRID
    importing
      !E_UCOMM .
  methods GET_DATA_TO_DISPLAY
    changing
      !CT_TABLE_DATA type TABLE .
  methods GET_FIELDCATALOG
    exporting
      !ET_CATALOG type LVC_T_FCAT .
endinterface.
