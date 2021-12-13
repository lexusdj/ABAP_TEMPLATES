interface ZIF_GIT_REPORT_ALV_FACTORY_V2
  public .


*  interfaces ZIF_REPORT .
  data M_ALV_FACT type ref to CL_SALV_TABLE .
  data M_OUTPUT_TABLE type ref to DATA .
  data M_ALV_FACT_EVT type ref to CL_SALV_EVENTS .
  data M_TB_FACT_EVT type ref to CL_SALV_EVENTS_TABLE .
  data M_CONTAINER type ref to CL_GUI_CONTAINER .
  data M_CUSTOM_CONTAINER type ref to CL_GUI_CUSTOM_CONTAINER .
  data M_SELECTIONS_ALV type ref to CL_SALV_SELECTIONS .
  data M_FUNCTIONS_ALV type ref to CL_SALV_FUNCTIONS_LIST .
  data M_SORTS_ALV type ref to CL_SALV_SORTS .
  data M_DISPLAY_ALV type ref to CL_SALV_DISPLAY_SETTINGS .
  data M_LAYOUT_ALV type ref to CL_SALV_LAYOUT .

  methods ON_ADDED_FUNCTION
    for event ADDED_FUNCTION of CL_SALV_EVENTS
    importing
      !E_SALV_FUNCTION .
  methods ON_AFTER_SALV_FUNCTION
    for event ADDED_FUNCTION of CL_SALV_EVENTS
    importing
      !E_SALV_FUNCTION .
  methods ON_BEFORE_SALV_FUNCTION
    for event BEFORE_SALV_FUNCTION of CL_SALV_EVENTS
    importing
      !E_SALV_FUNCTION .
  methods ON_END_OF_PAGE
    for event END_OF_PAGE of CL_SALV_EVENTS .
  methods ON_TOP_OF_PAGE
    for event TOP_OF_PAGE of CL_SALV_EVENTS .
  methods ON_DOUBLE_CLICK
    for event DOUBLE_CLICK of CL_SALV_EVENTS_TABLE
    importing
      !ROW
      !COLUMN .
  methods ON_LINK_CLICK
    for event LINK_CLICK of CL_SALV_EVENTS_TABLE
    importing
      !ROW
      !COLUMN .
  methods GET_DATA_TO_DISPLAY
    changing
      !CT_TABLE_DATA type TABLE .
endinterface.
