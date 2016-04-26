package de.flatspection.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.web.WebAppConfiguration;

import de.flatspection.FlatSpectionApplication;

import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = FlatSpectionApplication.class)
@WebAppConfiguration
public class FlatSpectionApplicationTests {

	@Test
	public void contextLoads() {
	}

}
