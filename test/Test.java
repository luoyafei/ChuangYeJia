import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class Test {

	@org.junit.Test
	public void test() {
		new SchemaExport(new AnnotationConfiguration().configure()).create(true, true);
	}

}
