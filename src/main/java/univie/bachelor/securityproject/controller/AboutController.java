package univie.bachelor.securityproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about() { return "about"; }

    @RequestMapping(value = "/aboutRO", method = RequestMethod.GET)
    public String aboutRO() {
        return "aboutRO";
    }

    @RequestMapping(value = "/aboutDE", method = RequestMethod.GET)
    public String aboutDE() {
        return "aboutDE";
    }

}
