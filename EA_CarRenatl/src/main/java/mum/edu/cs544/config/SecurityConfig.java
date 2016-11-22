package mum.edu.cs544.config;


import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
class SecurityConfig extends WebSecurityConfigurerAdapter {

   

    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.authorizeRequests()
        .antMatchers("/", "/public/**").permitAll()
        .antMatchers("/users/**").permitAll()
        .anyRequest().permitAll()
        .and()
        .formLogin()
        .loginPage("/login")
        .failureUrl("/login?error")
        .usernameParameter("username")
        .permitAll()
        .successForwardUrl("/").permitAll()
        .and()
        .logout()
        .logoutUrl("/logout")
        .deleteCookies("remember-me")
        .logoutSuccessUrl("/")
        .permitAll()
        .and()
        .rememberMe();
    	/*http
    	.authorizeRequests()
    	.antMatchers("/").access("hasRole('USER')")
    	.antMatchers("/**").permitAll()
    	.and()
    	.formLogin()
    	.loginPage("/login")
    	.failureUrl("/login?error=true");
    	*/
    }

 
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	auth.jdbcAuthentication()
		.usersByUsernameQuery(
				"select username,password,enabled from account where username=? ")
		.authoritiesByUsernameQuery(
				"select  username, hasRole authorities from account where username =?");
	}


}