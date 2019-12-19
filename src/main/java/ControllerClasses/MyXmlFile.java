package ControllerClasses;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyXmlFile extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {

		return new Class[]{DoingConfig.class};
	}

	@Override
	protected String[] getServletMappings() {

		return new String[] {"/"};
	}

}
