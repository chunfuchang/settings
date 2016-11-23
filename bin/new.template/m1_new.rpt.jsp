<%-- balanceSheet.rpt.jsp

	Purpose:

	Description:

	History:
		{date}, Created by {user}

Copyright (C) {year} Potix Corporation. All Rights Reserved.
--%>
<%@ taglib uri="/WEB-INF/tld/sat/core.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/sat/report.tld" prefix="r" %>

<c:doc source="param">
	<r:report template="xxx.jasper" 
		dataSource="=dataSource('xxxDataSource')"
		docType="xxx">
	</r:report>
</c:doc>

<%out.clear();%><%-- drop any jsp output; no space after --%>