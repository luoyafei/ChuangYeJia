import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.jdbc.Work;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import com.chuangyejia.bean.Startups;
import com.chuangyejia.bean.User;
import com.chuangyejia.factory.HibernateSessionFactory;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class Test {

	public static void main(String[] args) {
		
		//new SchemaExport(new AnnotationConfiguration().configure()).create(true, true);
	
		
		Session session = HibernateSessionFactory.createSessionFactory().openSession();
		session.beginTransaction();
		
		User user = (User)session.load(User.class, "402881fc5643d429015643d42cf10001");
		Query q = session.createQuery("from Startups s where s.startupsLeader.userId = :userId");
		q.setString("userId", user.getUserId());
		List<Startups> startups = (List<Startups>)q.list();
		Startups s = null;
		if(startups.size() > 0) {
			s = startups.get(0);
		}
		
		Set<User> users = (Set<User>)s.getCopartner();
		for(User u : users)
			System.out.println(u.toString());
		
		session.getTransaction().commit();
		session.close();
		
		
		
		/*SessionFactory sf = HibernateSessionFactory.createSessionFactory();
		Session session = sf.getCurrentSession();

		session.beginTransaction();
		
		Query q = session.createQuery("from User u where u.userId = :userId");
		q.setString("userId", "12");
		int result = q.list().size();
		
		System.out.println(result);
		
		session.getTransaction().commit();
		
		System.out.println(result);
		*/
		
	}
	
	@org.junit.Test
	public void test() {
		//new SchemaExport(new AnnotationConfiguration().configure()).create(true, true);
		SessionFactory sf = HibernateSessionFactory.createSessionFactory();
		Session session = sf.getCurrentSession();
		User u = new User();
		u.setUserNickName("罗哥");
		u.setUserPassword("luoyafei");
		u.setUserEmail("123@qq.com");
		session.beginTransaction();
		session.save(u);
		
		session.doWork(new Work() {
			
			@Override
			public void execute(Connection arg0) throws SQLException {
				// TODO Auto-generated method stub
				System.out.println(arg0);
			}
		});
		
		session.getTransaction().commit();
		
	}
	
	@org.junit.Test
	public void testNull() {
		
		SessionFactory sf = HibernateSessionFactory.createSessionFactory();
		Session session = sf.getCurrentSession();
		
		session.beginTransaction();
		session.getTransaction().commit();
		
	}

	
	@org.junit.Test
	public void testReg() {
		
		//boolean isNum = "-9".matches("[-]?[0-9]*");
		boolean flag = "1sdfsf2sfsdfsdf@3qq.db".matches("\\w+\\x40\\w+\\x2e\\w+");
		System.out.println(flag);
	}
	
	@org.junit.Test
	public void testString() {
		
		String backUrl = "/ChuangYeJa/ChuangYeJia/index.jsp";
		if(backUrl.contains("/ChuangYeJia") && backUrl.startsWith("/ChuangYeJia")) {
			System.out.println(backUrl.substring(12));
		} else
			System.out.println("error");
	}
	
	@org.junit.Test
	public void testGson() {
		Gson gson = new Gson();
		JsonObject go = new JsonObject();
		
		//String json = "{\"name\":\"罗亚飞\",\"id\":123456,\"time\":\"2013-4-13 12:36:54\"}";
		//Person p = gson.fromJson(json, Person.class);
		//GsonBuilder gb = new GsonBuilder();
		//JsonArray ja = new JsonArray();
		
		List<Person> ps = new ArrayList<Person>();
		Person p = new Person();
		p.setId(10);
		p.setName("sdfsdf");
		p.setTime(new Timestamp(System.currentTimeMillis()));
		ps.add(p);
		go.add("p", gson.toJsonTree(p));
		p.setId(11);
		p.setName("是快递放假了");
		p.setTime(new Timestamp(System.currentTimeMillis()));
		ps.add(p);
		go.add("p", gson.toJsonTree(p));
		
		System.out.println(gson.toJson(go));//技能
		
	}
	
	@org.junit.Test
	public void testOut() {
		
		Gson gson = new Gson();
		gson.toJson("hello", System.out);
	}
	
	@org.junit.Test
	public void testMethod() {
		
		Person p = new Person();
		setP(p);
		
		System.out.println(p.getName());
		
	}
	
	private void setP(Person p) {
		p.setName("罗亚");
	} 

	@org.junit.Test
	public void testNewTable() {
		
		//IUserService ius = ServiceFactory.createUserService();
		
		Session session = HibernateSessionFactory.createSessionFactory().openSession();
		session.beginTransaction();
		
		User user = (User)session.load(User.class, "402881fc5643d429015643d42cf10001");
		Query q = session.createQuery("from Startups s where s.startupsLeader.userId = :userId");
		q.setString("userId", user.getUserId());
		List<Startups> startups = (List<Startups>)q.list();
		Startups s = null;
		if(startups.size() > 0) {
			s = startups.get(0);
		}
		
		Set<User> users = (HashSet<User>)s.getCopartner();
		for(User u : users)
			System.out.println(u.toString());
		
		
		//Startups startups = (Startups)session.load(Startups.class, "402881fc5643ddcd015643ddd09f0001");
		
		//new SchemaExport(new AnnotationConfiguration().configure()).create(true, true);
		/*for(int i = 11; i < 20; i++) {
			User u = new User();
			u.setUserNickName("飞飞哥" + i + "号");
			u.setUserEmail("63512" + i + "@qq.com");
			u.setUserPassword("luo" + i);
			session.save(u);
			//ius.saveUser(u);
			startups.getCopartner().add(u);
		}*/
		/*Session session = HibernateSessionFactory.createSessionFactory().getCurrentSession();
		session.beginTransaction();
		
		
		Query query = session.createQuery("from User u where u.userId = :userId");
		query.setString("userId", "402881fc5643d429015643d42cf10001");
		
		List<User> users = (List<User>)query.list();
System.out.println(users.size());
		User user = users.get(0);
		
		Startups startups = new Startups();
		startups.setStartupsName("创业加");
		startups.setStartupsAddress("陕西西安");
		startups.setStartupsBrief("简介");
		
		startups.setStartupsLeader(user);
		
		session.save(startups);
		
		session.getTransaction().commit();
		*/
		
		
		session.getTransaction().commit();
		session.close();
		//boolean result = ius.saveUser(user);
		//System.out.println(result);
		
		
	}
	
}
