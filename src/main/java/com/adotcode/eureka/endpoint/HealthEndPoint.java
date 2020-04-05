package com.adotcode.eureka.endpoint;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 健康检测
 *
 * @author risfeng
 * @date 2020/03/22
 */
@RestController
@RequestMapping("/health")
public class HealthEndPoint {

  @GetMapping
  public String checkHealth() {
    long currentTimeMillis = System.currentTimeMillis();
    return String.format("[%s]Application Is Running...", currentTimeMillis);
  }

}
