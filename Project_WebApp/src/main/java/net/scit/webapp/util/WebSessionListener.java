package net.scit.webapp.util;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.FrameworkServlet;

import net.scit.webapp.dao.AppRepository;

/**
 * Application Lifecycle Listener implementation class WebSessionListener
 *
 */
public class WebSessionListener implements HttpSessionListener, HttpSessionAttributeListener {

	
	public static WebSessionListener sessionListener = null;
	
    public WebSessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0)  { 
         System.out.println("생성됐어요");
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event)  { 
         System.out.println("삭제됐어요");
         HttpSession session = event.getSession();
         WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext( session.getServletContext(), FrameworkServlet.SERVLET_CONTEXT_PREFIX + "appServlet" );
         AppRepository repo = (AppRepository)context.getBean("AppRepository");
         
         String userid = (String)session.getAttribute("loginId");
         repo.sessionDelete(userid);
         
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
    	
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    }
	
    
}
