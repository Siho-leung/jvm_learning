import io.siho.spring.Cat;
import io.siho.spring.Dog;
import io.siho.spring.UtilConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class Spring03Test {

    @Autowired
    private Dog dog;

    @Autowired
    private Cat cat;

    /**
     * 测试通过xml配置，实现spring bean装配
     */
    @Test
    public void test01(){
        System.out.println(dog.toString());
    }

    /**
     * 测试通过component组件，实现spring bead装配
     */
    @Test
    public void test02(){
        System.out.println(cat.toString());
    }

    /**
     * 测试通过配置类，实现spring bean装配
     */
    @Test
    public void test03(){
        ApplicationContext ctx = new AnnotationConfigApplicationContext(UtilConfig.class);
        Cat cat1 = (Cat) ctx.getBean("getCat");
        System.out.println(cat1.toString());
    }



}
