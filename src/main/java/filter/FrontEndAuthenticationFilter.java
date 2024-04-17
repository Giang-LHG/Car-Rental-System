//package filter;
//
//
//import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import java.io.IOException;
//
//@WebFilter(filterName = "FrontEndAuthenticationFilter" , value = "/*")
//public class FrontEndAuthenticationFilter implements Filter {
//
//    private static final String[] loginNotRequiredURLs = {
//            "/auth", "/css", "/js", "/media", "/user"
//    };
//
//    @Override
//    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws ServletException, IOException {
//        HttpServletRequest request = (HttpServletRequest) req;
//        HttpServletResponse response = (HttpServletResponse) res;
//
//        String path = request.getRequestURI().substring(request.getContextPath().length());
//
//        HttpSession session = request.getSession(false);
//
//        boolean isLoggedIn = (session != null && session.getAttribute("user") != null);
//
//        String loginURI = request.getContextPath() + "/auth?action=login";
//        boolean isLoginRequest = request.getRequestURI().equals(loginURI);
//        boolean isLoginPage = request.getRequestURI().endsWith("login");
//
//        if (isLoggedIn && (isLoginRequest || isLoginPage)) {
//            // the user is already logged in, and he's trying to log in again
//            // then forward to the homepage
//            request.getRequestDispatcher("/").forward(req, res);
//
//        } else if (!isLoggedIn && !isLoginNotRequired(request)) {
//            // the user is not logged in, and the requested page requires
//            // authentication, then forward to the login page
//            String loginPage = "/auth?action=login";
//            RequestDispatcher dispatcher = request.getRequestDispatcher(loginPage);
//            dispatcher.forward(req, res);
//        } else {
//            // for other requested pages that do not require authentication
//            // or the user is already logged in, continue to the destination
//            chain.doFilter(req, res);
//        }
//
//    }
//
//    private boolean isLoginNotRequired(HttpServletRequest request) {
//        String requestURL = request.getRequestURL().toString();
//
//        if (requestURL.endsWith("/")) {
//            return true;
//        }
//
//        for (String loginNotRequiredURL : loginNotRequiredURLs) {
//            if (requestURL.contains(loginNotRequiredURL)) {
//                return true;
//            }
//        }
//
//        return false;
//    }
//}