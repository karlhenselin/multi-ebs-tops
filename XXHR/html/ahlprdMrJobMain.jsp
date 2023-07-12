<%--
+==========================================================================+
|     Copyright (c) 2000 Oracle Corporation, Redwood Shores, CA, USA       |
|                        All rights reserved.                              |
+==========================================================================+
|  FILENAME                                                                |
|    ahlprdMrJobMain.jsp                                                   |
|                                                                          |
|  DESCRIPTION                                                             |
|    Main Page for MR Jobs UI.                                             |
|                                                                          |
|  NOTES                                                                   |
|                                                                          |
|  DEPENDENCIES                                                            |
|                                                                          |
|  HISTORY                                                                 |
|    14-July-2003 Arvind Rupakula Created.                                |
|                                                                          |
|  $Header: ahlprdMrJobMain.jsp 120.2 2006/07/15 00:55:32 sracha noship $                                                               |
+==========================================================================+
--%>
<%@ include file="jtfincl.jsp" %>
<%@ include file="ahlContextIncl.jsp" %>
<%@ include file="csifStartReqIncl.jsp" %>
<HTML LANG="<%=oracle.apps.jtf.util.HtmlUtil.getHtmlLanguageCode()%>">
<HEAD>
<%@ page import='oracle.apps.ahl.cm.AhlcmAppConst' %>

<!------ Include Product specific context JSP ------>

<%
    csiPageContext.setPermissionName( "Super" ) ;
    csiPageContext.setJspName( "ahlprdMrJobMain.jsp" ) ;
    csiPageContext.setFormName( "MrJobsForm" ) ;
     csiPageContext.setAppName(AhlcmAppConst.APP_NAME);
    String formName = csiPageContext.getFormName();
    String jspName = csiPageContext.getJspName();
%>

<!------ Start the Request ------>
<%@ include file="jtfframeworkincl.jsp" %>
<%
 AHL_BROWSER_TITLE_PRMT = "AHL_PRD_VIEW_MR_JOBS";
%>

<!------ Exception block - BegiN ------>
<%@ include file="csifExceptionHandleBegin.jsp" %>

<!------ Set the Title for the Page ------>
<%@ include file="ahlBrowserTitleIncl.jsp"%>

<%@ include file="jtffwstylesheet.jsp" %>
</head>

<!------ Body and Menu rendering - BegiN ------>
<%@include file="csifBodyBeginIncl.jsp" %>
<%@include file="ahlMenuIncl.jsp" %>

<!------ Process the page ------>
<form method="post" name="<%=formName%>" action="<%=oracle.apps.jtf.base.session.ServletSessionManager.getURL(jspName)%>">

<!------ Include the Display page to render and process the contents. ------>
<%@ include file="ahlprdMrJobDisplay.jsp" %>

<!------ Include the HiddenFields Page to render the hidden fields for JTF,CSIF ------>
<%@ include file="csifHiddenFieldsIncl.jsp" %>
</form>
<!------ Body and Menu rendering - eNd ------>
<%@ include file="csifBodyEndIncl.jsp" %>
</html>

<!------ Exception block - End ------>
<%@ include file="csifExceptionHandleEnd.jsp" %>

<!------ End the Request ------>
<%@ include file="csifEndReqIncl.jsp" %>



































