package ControllerClasses;

import java.util.ArrayList;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class MvcService {
	
	MongoClient mongoclient;
	static DBCollection coll;
	static String phoneno;
	public MvcService(){
		 mongoclient=new MongoClient("localhost",27017);
			@SuppressWarnings("deprecation")
			DB db=mongoclient.getDB("logindetails");
			coll=db.getCollection("logindetails");
	}
	public boolean login(String name, String password) {

			
			BasicDBObject whereQuery = new BasicDBObject();
			ArrayList<BasicDBObject> obj = new ArrayList<BasicDBObject>();
			
			obj.add(new BasicDBObject("name",name));
			obj.add(new BasicDBObject("password",password));
			
			whereQuery.put("$and",obj);
			
	
			whereQuery.append("name", name);
			whereQuery.append("password", password);
			
			
			DBCursor cursor=coll.find(whereQuery);
			//System.out.println(cursor);
			if(cursor.hasNext()) {
				//System.out.println(cursor.next());
				DBObject dbObj=cursor.next();
				phoneno=dbObj.get("phoneno").toString(); 
				System.out.println(phoneno);
				return true;
			}
			return false;
	}
}