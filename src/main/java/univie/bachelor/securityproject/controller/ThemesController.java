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
    @RequestMapping(value = "/typesOfAttacksDE", method = RequestMethod.GET)
    public String typesDE() { return "typesOfAttacksDE"; }
    @RequestMapping(value = "/typesOfAttacksRO", method = RequestMethod.GET)
    public String typesRO() { return "typesOfAttacksRO"; }

    @RequestMapping(value = "/phishing", method = RequestMethod.GET)
    public String phishing() { return "phishing"; }
    @RequestMapping(value = "/phishingDE", method = RequestMethod.GET)
    public String phishingDE() { return "phishingDE"; }
    @RequestMapping(value = "/phishingRO", method = RequestMethod.GET)
    public String phishingRO() { return "phishingRO"; }


    @RequestMapping(value = "/trojan_horse", method = RequestMethod.GET)
    public String trojan_horse() { return "trojan_horse"; }
    @RequestMapping(value = "/trojan_horseDE", method = RequestMethod.GET)
    public String trojan_horseDE() { return "trojan_horseDE"; }
    @RequestMapping(value = "/trojan_horseRO", method = RequestMethod.GET)
    public String trojan_horseRO() { return "trojan_horseRO"; }

    @RequestMapping(value = "/dos_ddos", method = RequestMethod.GET)
    public String dos_ddos() { return "dos_ddos"; }
    @RequestMapping(value = "/dos_ddosDE", method = RequestMethod.GET)
    public String dos_ddosDE() { return "dos_ddosDE"; }
    @RequestMapping(value = "/dos_ddosRO", method = RequestMethod.GET)
    public String dos_ddosRO() { return "dos_ddosRO"; }
}

