package com.izzy.omikuji_form.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

  @RequestMapping("/")
  public String index() {
    return "index.jsp";
  }

  // Make a request mapping for the url /omikuji to render the main page showing
  // the Omikuji form.
  @RequestMapping("/omikuji")
  public String form() {
    return "index.jsp";
  }

  // Include a request mapping to handle processing the information from the form,
  // store the form input into session and redirect to the /omikuji/show route.
  @RequestMapping("/omikuji/submit")
  public String submit(
      // Need Both SESSION
      HttpSession session,
      // & @RequestParam INSIDE THE PARENTHESIS!
      @RequestParam("number") int number,
      @RequestParam("city") String city,
      @RequestParam("person") String person,
      @RequestParam("hobby") String hobby,
      @RequestParam("livthing") String livthing,
      @RequestParam("something") String something) {

    // System.out.println(number);

    session.setAttribute("number", number);
    session.setAttribute("city", city);
    session.setAttribute("person", person);
    session.setAttribute("hobby", hobby);
    session.setAttribute("livthing", livthing);
    session.setAttribute("something", something);

    return "redirect:/omikuji/show";
  }

  // Make a request mapping for the url /omikuji/show that renders a page with a
  // blue box with a message.
  @RequestMapping("/omikuji/show")
  public String show() {
    return "show.jsp";
  }

}
