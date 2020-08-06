
<%--
- list.jsp
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

<acme:list>
	<acme:list-column code="authenticated.challenge.list.label.title" path="title" width="33%"/>
	<acme:list-column code="authenticated.challenge.list.label.deadline" path="deadline" width="33%"/>
	<acme:list-column code="authenticated.challenge.list.label.expertReward" path="expertReward" width="11%"/>
	<acme:list-column code="authenticated.challenge.list.label.averageReward" path="averageReward" width="11%"/>
	<acme:list-column code="authenticated.challenge.list.label.rookieReward" path="rookieReward" width="11%"/>
</acme:list>


