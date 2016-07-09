package ua.vacoola.vkapi.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * User: gkislin
 * Date: 22.08.2014
 */

@Controller
public class RootController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String root() {
        return "redirect:index";
    }

/*    @RequestMapping(value = "/static/docs/", method = RequestMethod.GET)
    public String documentations() {
        return "redirect:classpath:/static/docs/api-guide.html";
    }*/

}

