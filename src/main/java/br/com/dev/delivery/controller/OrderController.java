package br.com.dev.delivery.controller;

import br.com.dev.delivery.dto.OrderDto;
import br.com.dev.delivery.dto.OrderResponseDto;
import br.com.dev.delivery.impl.OrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
@CrossOrigin("*")
public class OrderController {

    @Autowired
    private OrderServiceImpl orderServiceImpl;

    @PostMapping
    public ResponseEntity<OrderResponseDto> finalizeOrder(@RequestBody OrderDto orderDto) {
        OrderResponseDto response = orderServiceImpl.processOrder(orderDto);
        return ResponseEntity.ok(response);
    }

}
