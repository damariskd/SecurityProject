package univie.bachelor.securityproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ThemesController {
    @RequestMapping(value = "/malware", method = RequestMethod.GET)
    public String malware() { return "malware"; }
    @RequestMapping(value = "/malwareDE", method = RequestMethod.GET)
    public String malwareDE() { return "malwareDE"; }
    @RequestMapping(value = "/malwareRO", method = RequestMethod.GET)
    public String malwareRO() { return "malwareRO"; }
    @RequestMapping(value = "/typesOfAttacks", method = RequestMethod.GET)
    public String types() { return "typesOfAttacks"; }
    @RequestMapping(value = "/typesDE", method = RequestMethod.GET)
    public String typesDE() { return "typesOfAttacksDE"; }
    @RequestMapping(value = "/typesRO", method = RequestMethod.GET)
    public String typesRO() { return "typesOfAttacksRO"; }
}
