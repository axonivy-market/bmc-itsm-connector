package com.axonivy.connector.bmc.itsm.auth;

import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

public class BearerFeature implements Feature {

	/**
	 * Configure feature to be added to the rest client context
	 */
	@Override
	public boolean configure(FeatureContext context) {
		//register our filter to be executed while processing requests
		context.register(BearerHeaderFilter.class);
		
		return true; 
	}
	
}
