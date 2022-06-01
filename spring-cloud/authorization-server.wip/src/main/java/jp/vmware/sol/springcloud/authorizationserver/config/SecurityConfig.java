package jp.vmware.sol.springcloud.authorizationserver.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    UserDetailsService userDetailsService(PasswordEncoder passwordEncoder) {
        return new InMemoryUserDetailsManager(
                org.springframework.security.core.userdetails.User
                        .withUsername("vmware")
                        .password(passwordEncoder.encode("password"))
                        .roles("USER")
                        .build()
        );
    }

//    @Bean
//    public SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
//        return http.authorizeRequests()
//                .antMatchers("/actuator/**").permitAll()
//                .mvcMatchers(".well-known/jwks.json").permitAll()
//                .anyRequest().authenticated()
//                .and()
////                .httpBasic()
////                .and()
//                .formLogin(Customizer.withDefaults())
//                //.csrf().ignoringRequestMatchers(request -> "/introspect".equals(request.getRequestURI()))
//                .csrf()
//                .disable()
//                .build();
//    }
}
