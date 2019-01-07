package univie.bachelor.securityproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
    @RequestMapping(value = "/indexDE", method = RequestMethod.GET)
    public String indexDE() {
        return "indexDE";
    }
    @RequestMapping(value = "/indexRO", method = RequestMethod.GET)
    public String indexRO() {
        return "indexRO";
    }

    @RequestMapping(value = "/indexTest", method = RequestMethod.GET)
    public String indexTest() {
        return "indexTest";
    }

    @RequestMapping(value = "/indexSearch", method = RequestMethod.GET)
    public String indexSearch() {
        return "indexSearch";
    }
}

