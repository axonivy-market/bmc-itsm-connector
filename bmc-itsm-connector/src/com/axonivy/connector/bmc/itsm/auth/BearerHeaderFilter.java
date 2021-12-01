package com.axonivy.connector.bmc.itsm.auth;

import java.io.IOException;

import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.call.SubProcessCall;

public class BearerHeaderFilter implements ClientRequestFilter {

	/**
	 * Adds header to the rest client 
	 */
	@Override
	public void filter(ClientRequestContext requestContext) throws IOException {
		if(requestContext.getUri().toString().contains("jwt/login")) {
			return;
		}
		
		//check if there is valid token
		if(!BearerHelper.isBearerTokenValid()) {
			//calls sub-process to obtain bearer token and process it
			Ivy.log().debug("Obtaining new bearer token for user: " + Ivy.session().getSessionUser().getName());
			SubProcessCall.withPath("BmcItsm/Login").withStartName("processBearerToken").call();
		}
		Ivy.log().debug("Obtaining new bearer token for user: " + Ivy.session().getAttribute("BearerToken_" + Ivy.session().getSessionUser().getName()));
		//adds Authorization header with its value to the configured rest client
		requestContext.getHeaders().add("Authorization", Ivy.session().getAttribute("BearerToken_" + Ivy.session().getSessionUser().getName()));
	}	

}

