package org.proffart.kindernet.route;

import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;

import java.util.Set;

/**
 * @author Aram Kirakosyan.
 */
@Component
public class IOTRoute extends RouteBuilder{


    @Override
    public void configure() throws Exception {
        Set
        from("consumeIOTMessage").beanRef("processor", "process").
                to("publishNotification");
    }
}
