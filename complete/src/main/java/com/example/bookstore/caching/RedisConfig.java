package com.example.bookstore.caching;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Bean;

import org.springframework.beans.factory.annotation.Value;

import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisStaticMasterReplicaConfiguration;

import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;

import io.lettuce.core.ReadFrom;

import org.springframework.data.redis.connection.lettuce.LettuceClientConfiguration;

import java.time.Duration;
import org.springframework.data.redis.cache.RedisCacheConfiguration;

@Configuration
public class RedisConfig {

    @Value("${spring.redis.primary-endpoint}")
    private String primaryEndpoint;
    
    @Value("${spring.redis.replicas-endpoint}")
    private String replicasEndpoint;    

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.ssl}")
    private boolean ssl;

    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        final RedisStaticMasterReplicaConfiguration redisStaticMasterReplicaConfiguration = 
                new RedisStaticMasterReplicaConfiguration(primaryEndpoint, port);
        redisStaticMasterReplicaConfiguration.addNode(replicasEndpoint, port);

        final LettuceClientConfiguration.LettuceClientConfigurationBuilder lettuceClientConfigurationBuilder =
                LettuceClientConfiguration.builder();

        lettuceClientConfigurationBuilder.readFrom(ReadFrom.REPLICA_PREFERRED);            

        if (ssl) {
            lettuceClientConfigurationBuilder.useSsl().disablePeerVerification();
        }

        final LettuceClientConfiguration lettuceClientConfiguration = lettuceClientConfigurationBuilder.build();

        return new LettuceConnectionFactory(redisStaticMasterReplicaConfiguration, lettuceClientConfiguration);
    }   

    @Bean
    public RedisCacheConfiguration defaultRedisCacheConfiguration() {
        return RedisCacheConfiguration.defaultCacheConfig()
                .disableCachingNullValues()
                .entryTtl(Duration.ofHours(1L));
    }
    
}