package ControllerClasses;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.WriteResult;

public class Register {

	
	private MongoClient mongoclient;
	private DBCollection coll;

	public Register(){
		 mongoclient=new MongoClient("localhost",27017);
			@SuppressWarnings("deprecation")
			DB db=mongoclient.getDB("logindetails");
			coll=db.getCollection("logindetails");
	}

	public String registerDetails(String name, String username, String password, String phoneno, int amount) {
		
		BasicDBObject whereQuery = new BasicDBObject();
//		ArrayList<BasicDBObject> obj = new ArrayList<BasicDBObject>();
//		
//		obj.add(new BasicDBObject("name",name));
//		obj.add(new BasicDBObject("username",username));
//		obj.add(new BasicDBObject("password",password));
//		obj.add(new BasicDBObject("phoneno",phoneno));
//		obj.add(new BasicDBObject("amount",amount));
//		
//		whereQuery.put("insert",obj);
		

		whereQuery.append("name", name);
		whereQuery.append("username", username);
		whereQuery.append("password", password);
		whereQuery.append("phoneno", phoneno);
		whereQuery.append("amount", amount);
		
		coll.insert(whereQuery);
		
		return "true";
	}
}
