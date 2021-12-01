package com.axonivy.connector.bmc.itsm.auth;

import java.time.LocalDateTime;
import java.time.ZoneId;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.databind.JsonNode;

import ch.ivyteam.ivy.environment.Ivy;

public class BearerHelper { 
	/**
	 * calculations for the expiry
	 * 
	 * @param expiresIn
	 * @return
	 */
	public static long getTimeAsNumber(String expiresIn) {
		try {
			// taking 10 secs just to be on the safe side
			Long expiresInSeconds = Long.valueOf(expiresIn) - 10;
			LocalDateTime timeAsNumber = LocalDateTime.now().atZone(ZoneId.systemDefault()).toLocalDateTime()
					.plusSeconds(expiresInSeconds);

			return timeAsNumber.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

		} catch (Exception e) {
			return 0l;
		}
	}

	/**
	 * checks validity of the token
	 * 
	 * @param expiresOn
	 * @return boolean
	 */
	public static boolean isBearerTokenValid() {
		// checking if token is stored in session
		String expiresOn = getBearerTokenExpiry();

		if (expiresOn != null && expiresOn.isEmpty()) {
			return false;
		}
		// calculating time
		try {
			Long setTimeToExpire = Long.valueOf(expiresOn);
			if (setTimeToExpire == 0) {
				return false;
			}
			LocalDateTime timeAsNumber = LocalDateTime.now().atZone(ZoneId.systemDefault()).toLocalDateTime();
			Long timeNow = timeAsNumber.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();

			return timeNow < setTimeToExpire;

		} catch (Exception e) {
			return false;
		}
	}

	/**
	 * Stores info to users session
	 * 
	 * @param samlToken
	 */
	public static void storeTokenInUserSession(String bearerToken) {
		Ivy.session().setAttribute("BearerToken_" + Ivy.session().getSessionUser().getName(),
				bearerToken);
	}

	/**
	 * Stores info to users session
	 * 
	 * @param expiresOn
	 */
	public static void storeTokenValidityInUserSession(String expiresOn) {
		Ivy.session().setAttribute("BearerToken_Expires_After_" + Ivy.session().getSessionUser().getName(),
				getTimeAsNumber(expiresOn));
	}

	/**
	 * Process Response to get access token
	 * 
	 * @param response
	 * @return
	 */
	public static String prepareTokenFromResponseToBearer(String response) {
		try {
			String bearerToken = response;
			//bearerToken = bearerToken.replaceAll("-", "+");
			//StringBuilder builder = new StringBuilder();
			//builder.append("Bearer ");
			//builder.append(bearerToken);

			return bearerToken;
		} catch (Exception e) {
			Ivy.log().error("Something went wrong on processing the bearer token:" + e);
			return StringUtils.EMPTY;
		}
	}

	/**
	 * process response
	 * 
	 * @param response
	 * @return
	 */
	public static String prepareTokenExpiryInfo(JsonNode response) {
		try {
			String expiresOn = response.get("expires_in").asText();
			return expiresOn;
		} catch (Exception e) {
			Ivy.log().error("Something went wrong on obtaining the bearer token expiry info:" + e);
			return StringUtils.EMPTY;
		}
	}

	/**
	 * gets expiry info from session
	 * 
	 * @return
	 */
	private static String getBearerTokenExpiry() {
		try {
			return Ivy.session()
					.getAttribute("BearerToken_Expires_After_" + Ivy.session().getSessionUser().getName())
					.toString();
		} catch (Exception e) {
			Ivy.log().info("Unable to obtain validity from session: " + e);
			return StringUtils.EMPTY;
		}

	} 
}
