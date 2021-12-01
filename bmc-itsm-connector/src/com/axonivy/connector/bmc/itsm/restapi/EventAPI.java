package com.axonivy.connector.bmc.itsm.restapi;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.model.value.SignalCode;

@Path("event")
public class EventAPI {

	@POST
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.TEXT_PLAIN)
	@RolesAllowed("Integrations")
	@Path("worklogAdded")
	public Response worklogAdded(String worklogAdded) throws Exception {
		Ivy.wf().signals().send(new SignalCode("WorklogAdded"), worklogAdded);
		return Response.status(200).build();
	}
	
	@POST
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.TEXT_PLAIN)
	@RolesAllowed("Integrations")
	@Path("incidentUpdated")
	public Response incidentUpdated(String incidentUpdated) throws Exception {
		Ivy.wf().signals().send(new SignalCode("IncidentUpdated"), incidentUpdated);
		return Response.status(200).build();
	}
}
