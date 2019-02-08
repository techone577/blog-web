package com.blogging.blogweb;

import com.blogging.blogweb.netty.NettyClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class BlogWebApplication {

	private static final Logger LOG = LoggerFactory.getLogger(BlogWebApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(BlogWebApplication.class, args);

		try {
			NettyClient.connect();
		} catch (Exception e) {
			LOG.info("连接netty服务器失败...");
		}
		LOG.info("netty启动结束...");
	}

}

