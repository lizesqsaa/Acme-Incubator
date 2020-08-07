<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
    <acme:form-textbox code="administrator.tool.form.label.title" path="title" />    
	<acme:form-textbox code="administrator.tool.form.label.inventorName" path="inventorName" />
	<acme:form-textbox code="administrator.tool.form.label.sector" path="sector" />
	<acme:form-textarea code="administrator.tool.form.label.description" path="description" />
	<acme:form-textbox code="administrator.tool.form.label.website" path="website" />
	<acme:form-textbox code="administrator.tool.form.label.email" path="email" />
	<acme:form-checkbox code="administrator.tool.form.label.isOpenSource" path="isOpenSource" />
	<acme:form-textbox code="administrator.tool.form.label.starsNumber" path="starsNumber" />
	
	
	<acme:form-submit test="${command == 'show'}"
	code="administrator.investor.form.button.update"
	action="/administrator/investor/update"/>
	<acme:form-submit test="${command == 'show'}"
	code="administrator.investor.form.button.delete"
	action="/administrator/investor/delete"/>
	<acme:form-submit test="${command == 'create'}"
	code="administrator.investor.form.button.create"
	action="/administrator/investor/create"/>
	<acme:form-submit test="${command == 'update'}"
	code="administrator.investor.form.button.update"
	action="/administrator/investor/update"/>
	<acme:form-submit test="${command == 'delete'}"
	code="administrator.investor.form.button.delete"
	action="/administrator/investor/delete"/>
	<acme:form-return
	code="authenticated.investor.form.button.return"/>
</acme:form>