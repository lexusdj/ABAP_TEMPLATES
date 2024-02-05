interface ZIF_GIT_REPORT_ALV_FACTORY
  public .


  interfaces ZIF_GIT_REPORT .

*  interfaces ZIF_REPORT .
  data M_ALV_FACT type ref to CL_SALV_TABLE .
  data M_OUTPUT_TABLE type ref to DATA .
  data M_CONTAINER type ref to CL_GUI_CONTAINER .
  data M_CUSTOM_CONTAINER type ref to CL_GUI_CUSTOM_CONTAINER .

  methods ON_ADDED_FUNCTION
    for event ADDED_FUNCTION of CL_SALV_EVENTS .
  methods ON_AFTER_SALV_FUNCTION
    for event ADDED_FUNCTION of CL_SALV_EVENTS .
  methods ON_BEFORE_SALV_FUNCTION
    for event BEFORE_SALV_FUNCTION of CL_SALV_EVENTS .
  methods ON_END_OF_PAGE
    for event END_OF_PAGE of CL_SALV_EVENTS .
  methods ON_TOP_OF_PAGE
    for event TOP_OF_PAGE of CL_SALV_EVENTS .
endinterface.
