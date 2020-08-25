<%--
- form.jsp
-
- Copyright (c) 2019 Aureliano Piqueras, based on Rafael Corchuelo's DP Starter project.
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
	<acme:form-textarea code="administrator.banner.form.label.picture" path="picture" />
	<acme:form-textbox code="administrator.banner.form.label.slogan" path="slogan"/>
	<acme:form-textarea code="administrator.banner.form.label.url" path="url" />
	
	<acme:form-panel code="administrator.banner.form.label.creditCard">
	<acme:form-textbox code="administrator.banner.form.label.holder" path="holder" />
	<acme:form-textbox code="administrator.banner.form.label.number" path="number" />
	<acme:form-textbox code="administrator.banner.form.label.brand" path="brand" />
	<acme:form-textbox code="administrator.banner.form.label.expirationDate" path="expirationDate" />
	<acme:form-textbox code="administrator.banner.form.label.cvv" path="cvv" />
	</acme:form-panel>
	
	<acme:form-submit test="${command == 'show'}" code="administrator.banner.form.button.update" 
						action="/administrator/banner/update"/>
	<acme:form-submit test="${command == 'show'}" code="administrator.banner.form.button.delete" 
						action="/administrator/banner/delete"/>
	<acme:form-submit test="${command == 'create'}" code="administrator.banner.form.button.create" 
						action="/administrator/banner/create"/>
	<acme:form-submit test="${command == 'update'}" code="administrator.banner.form.button.update" 
						action="/administrator/banner/update"/>
	<acme:form-submit test="${command == 'delete'}" code="administrator.banner.form.button.delete" 
						action="/administrator/banner/delete"/>
	
  	<acme:form-return code="administrator.banner.form.button.return"/>
</acme:form>
