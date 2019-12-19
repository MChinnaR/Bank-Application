package ControllerClasses;

import javax.management.Query;

import com.mongodb.client.model.Updates;	

public class ChangePassword {

	private Object mongoOps;

	public void changePassword(String phoneno, String password) {
		
		
		// MvcService.coll.updateOne(Filters.eq("phoneno",phoneno), Updates.set("password",password));     

		
	        
		/*BasicDBObject whereQuery = new BasicDBObject();
		ArrayList<BasicDBObject> obj = new ArrayList<BasicDBObject>();
		
		obj.add(new BasicDBObject("phoneno",phoneno));	
		obj.add(new BasicDBObject("password",password));
		
		whereQuery.put("update",obj);
		

		whereQuery.append("phoneno", phoneno);
		whereQuery.append("password",password);
		
		//DBCursor cursor=MvcService.coll.update(whereQuery, whereQuery);
		//System.out.println(cursor);
		if(cursor.hasNext()) {
			//System.out.println(cursor.next());
			DBObject dbObj=cursor.next();
			//amount=Integer.parseInt(dbObj.get("amount").toString()); 
			//System.out.println(amount);
			return true;
		}
		return false;*/
		
	}


}
