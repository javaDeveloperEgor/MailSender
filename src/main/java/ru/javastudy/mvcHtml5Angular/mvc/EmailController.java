package ru.javastudy.mvcHtml5Angular.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.HashMap;
import java.util.Map;


@Controller
public class EmailController {

    @Autowired
    EmailService emailService;

    @RequestMapping(value = "/email/send", method = RequestMethod.POST)
    public ModelAndView email(@ModelAttribute("emailModel") EmailModel emailModel) {
        System.out.println("EmailController email is called");
        Map<String, Object> model = new HashMap<>();
        model.put(EmailService.FROM, "developeregor@mvc.app");
        model.put("subject", "Hello " + emailModel.getName() + "!");
        model.put("to", emailModel.getEmail());
        model.put("userName", "egor");
        model.put("message", emailModel.getMessage());
        boolean result = emailService.sendEmail("registered.vm", model);
        return new ModelAndView("redirect:/email.html", "resultSending", result);
    }


}
