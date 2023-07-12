<%--
+==========================================================================+
|     Copyright (c) 2003 Oracle Corporation, Redwood Shores, CA, USA       |
|                        All rights reserved.                              |
+==========================================================================+
|  FILENAME                                                                |
|    ahlppWOHierarchyMain.jsp                                              |
|                                                                          |
|  DESCRIPTION                                                             |
|    Main Page for Work Order Hierarchy                                    |
|                                                                          |
|  NOTES                                                                   |
|                                                                          |
|  DEPENDENCIES                                                            |
|                                                                          |
|  HISTORY                                                                 |
|    29-Aug-2003 Siva P Devaki Created.                                    |
|                                                                          |
|  $Header: ahlppWOHierarchyMain.jsp 120.3 2006/07/15 00:53:29 sracha noship $                                                             |
+==========================================================================+
--%>

<!------ Setup the HTML Block ------>

<%@ include file="jtfincl.jsp" %>
<%@ include file="ahlContextIncl.jsp" %>
<%@ include file="csifStartReqIncl.jsp" %>
<HTML LANG="<%=oracle.apps.jtf.util.HtmlUtil.getHtmlLanguageCode()%>">
<HEAD>

    <!------ Include Product (AHL) specific context JSP ------>

    <%
      // Set the permissions for this page.
      csiPageContext.setPermissionName("SupPer");

      // Set the application name for this page.
      csiPageContext.setAppName(appName);

      // Set the page and form name.
      String jspName = "ahlppWOHierarchyMain.jsp";
      String formName = "ahlppWOHierarchyForm";

      csiPageContext.setJspName(jspName);
      csiPageContext.setFormName(formName);

    %>

    <!------ Start the Request ------>
    <%@ include file="jtfframeworkincl.jsp" %>

    <%
      // Set the prompt for the Browser Title.
      AHL_BROWSER_TITLE_PRMT = "AHL_PP_WO_HIERARCHY_TITLE";
    %>

    <!------ Exception block - Begin ------>
    <%@ include file="csifExceptionHandleBegin.jsp" %>

    <!------ Set the Browser Title for the Page ------>
    <%@ include file="ahlBrowserTitleIncl.jsp"%>

    <!------ Include the CSS page ------>
    <%@ include file="jtffwstylesheet.jsp" %>

  </HEAD>

  <!------ Body rendering - Begin ------>
  <%@include file="csifBodyBeginIncl.jsp" %>
    <!------ Render the Application Menu ------>
    <%@ include file="ahlMenuIncl.jsp" %>

    <!------ Process the page ------>
    <form method="post" name="<%=formName%>" action="<%=oracle.apps.jtf.base.session.ServletSessionManager.getURL(jspName)%>">

      <!------ Include the Display page to render and process the contents. ------>
      <%@ include file="ahlppWOHierarchyDisplay.jsp" %>

      <!------ Include the HiddenFields Page to render the hidden fields for JTF,CSIF ------>
      <%@ include file="csifHiddenFieldsIncl.jsp" %>
    </form>

  <!------ Body rendering - End ------>
  <%@ include file="csifBodyEndIncl.jsp" %>

</HTML>

<!------ Exception block - End ------>
<%@ include file="csifExceptionHandleEnd.jsp" %>

<!------ End the Request ------>
<%@ include file="csifEndReqIncl.jsp" %>











