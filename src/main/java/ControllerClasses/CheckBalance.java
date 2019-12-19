package ControllerClasses;

import java.util.ArrayList;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class CheckBalance {

	
	static int amount;

	public boolean checkBalance(Object phoneno) {

		BasicDBObject whereQuery = new BasicDBObject();
//		ArrayList<BasicDBObject> obj = new ArrayList<BasicDBObject>();
//		
//		obj.add(new BasicDBObject("phoneno",phoneno));
//		
//		whereQuery.put("",obj);
		

		whereQuery.append("phoneno", phoneno);
		
		
		DBCursor cursor=MvcService.coll.find(whereQuery);
		//System.out.println(cursor);
		if(cursor.hasNext()) {
			//System.out.println(cursor.next());
			DBObject dbObj=cursor.next();
			amount=Integer.parseInt(dbObj.get("amount").toString()); 
			System.out.println(amount);
			return true;
		}
		return false;
		
	}

}
