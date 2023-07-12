CREATE OR REPLACE PACKAGE xxar_bipub_rep_pkg AS
-----------------------------------------------------------------------------------------------------          
--
--            NAME:   XXAR_BIPUB_REP_PKG
--            TYPE:   Package Specification
-- ORIGINAL AUTHOR:   Brian Badenhorst
--            DATE:   25/07/2012 
--
--     DESCRIPTION:
--
--        This package specification is to define the public pl/sql procedures and functions for
--        BI Publisher Reports.
--
--
--  CHANGE HISTORY:
--
--     VERSION  DATE          AUTHOR              LABEL     DESCRIPTION
--     -------  -----------   ----------------    --------  --------------------------------------------
--     1.0      25/07/2012    Brian Badenhorst    N/A       Initial Version
-----------------------------------------------------------------------------------------------------

                       
   PROCEDURE generate_xml(p_errbuf  OUT VARCHAR2
                         ,p_retcode OUT NUMBER);

END xxar_bipub_rep_pkg;
/
