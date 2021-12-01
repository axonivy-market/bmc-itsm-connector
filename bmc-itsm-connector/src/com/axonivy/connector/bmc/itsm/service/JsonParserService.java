package com.axonivy.connector.bmc.itsm.service;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;

import ch.ivyteam.ivy.environment.Ivy;

public class JsonParserService {

	private static JsonParserService instance;

	private JsonParserService() {
	}

	public static JsonParserService getInstnce() {
		if (instance == null) {
			instance = new JsonParserService();
			return instance;
		}
		return instance;
	}

	public <T> List<T> parseJSONToType(String res, Class<T> cls) throws IOException {
		List<T> listType = new ArrayList<T>();
		try {
			JsonNode arrNode = new ObjectMapper().readTree(res).get("entries");
			if (arrNode.isArray()) {
				for (JsonNode objNode : arrNode) {
					ObjectMapper o = new ObjectMapper();
					o.setPropertyNamingStrategy(PropertyNamingStrategy.UPPER_CAMEL_CASE );
					T att = (T) o.readValue(objNode.get("values").toString(), cls);
					listType.add(att);
				}
			}
		} catch (Exception e) {
			Ivy.log().error("Unable to parse the response: " + e.getMessage());
			return listType;
		}

		return listType;
	}

	public <T> T parseJSONToSingleObject(String res, Class<T> cls) throws IOException {
		try {
			JsonNode node = new ObjectMapper().readTree(res).get("values");
			ObjectMapper o = new ObjectMapper();
			o.setPropertyNamingStrategy(PropertyNamingStrategy.UPPER_CAMEL_CASE );
			T obj = (T) o.readValue(node.toString(), cls);

			return obj;

		} catch (Exception e) {
			Ivy.log().error("Unable to parse the response: " + e.getMessage());

			return null;
		}
	}

	public JsonNode encodeToUTFJsonNode(String str) {
		String s = "";
		try {
			// byte[] b = str.getBytes(StandardCharsets.ISO_8859_1);
			s = str;// new String(b, StandardCharsets.UTF_8);
		} catch (Exception e) {
			Ivy.log().debug(e.getMessage());
		}
		ObjectMapper mapper = new ObjectMapper();
		JsonFactory factory = mapper.getFactory(); // since 2.1 use mapper.getFactory() instead
		JsonParser jp = null;
		JsonNode actualObj = null;
		try {
			jp = factory.createParser(s);
		} catch (IOException e) {
			Ivy.log().debug(e.getMessage());
		}
		try {
			actualObj = mapper.readTree(jp);
		} catch (JsonProcessingException e) {
			Ivy.log().debug(e.getMessage());
		} catch (IOException e) {
			Ivy.log().debug(e.getMessage());
		}
		return actualObj;
	}
}
