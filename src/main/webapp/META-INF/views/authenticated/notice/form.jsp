<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-url code="authenticated.notice.form.label.headerPicture" path="headerPicture"/>
	<acme:form-textbox code="authenticated.notice.form.label.title" path="title"/>
	<acme:form-moment code="authenticated.notice.form.label.deadline" path="deadline"/>
	<acme:form-url code="authenticated.notice.form.label.relatedNotices" path="relatedNotices"/>
	<acme:form-textarea code="authenticated.notice.form.label.body" path="body"/>
	
	<acme:form-checkbox code="authenticated.notice.form.label.accept" path="accept"/>
	
	<acme:form-submit test="${command == 'create'}" code="authenticated.notice.form.button.create" 
						action="/authenticated/notice/create"/>
	
	<acme:form-return code="authenticated.notice.form.button.return"/>
</acme:form>
