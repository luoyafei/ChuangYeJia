import java.sql.Connection;
import java.sql.SQLException;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.jdbc.Work;

import com.chuangyejia.bean.User;
import com.chuangyejia.factory.HibernateSessionFactory;

public class Test {

	public static void main(String[] args) {
		
		SessionFactory sf = HibernateSessionFactory.createSessionFactory();
		Session session = sf.getCurrentSession();

		session.beginTransaction();
		
		Query q = session.createQuery("from User u where u.userId = :userId");
		q.setString("userId", "12");
		int result = q.list().size();
		
		System.out.println(result);
		
		session.getTransaction().commit();
		
		System.out.println(result);
		
		
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
		
		Query q = session.createQuery("from User where userId = :userId");
		q.setString("userId", "12");
		long result = (Long)q.uniqueResult();
		
		session.getTransaction().commit();
		
		System.out.println(result);
	}


}
