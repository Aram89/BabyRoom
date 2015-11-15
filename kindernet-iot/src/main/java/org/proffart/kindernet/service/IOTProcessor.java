package org.proffart.kindernet.service;

import org.apache.camel.Exchange;
import org.apache.camel.Message;
import org.apache.camel.Processor;

/**
 * @author Aram Kirakosyan.
 */
public class IOTProcessor implements Processor {

    @Override
    public void process(Exchange exchange) throws Exception {
        // Do some processing.
        Message message = exchange.getIn();
        message.setBody("Test");
        exchange.setIn(message);
        exchange.setOut(message);
    }
}
