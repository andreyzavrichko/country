spring:
  application:
    name: country
  datasource:
    url: 'jdbc:postgresql://localhost:5432/country'
    username: postgres
    password: secret
    hikari:
      connection-timeout: 20000
      minimum-idle: 10
      maximum-pool-size: 30
      idle-timeout: 10000
      max-lifetime: 1000
      auto-commit: true
    flyway:
      enabled: true
      baseline-on-migrate: true
      baseline-version: 0
      schemas: public
      locations: classpath:db/migration/country
      logging.level.org.flywaydb: DEBUG
  jpa:
    hibernate:
      ddl-auto: none
    properties:
      hibernate:
        jdbc:
          lob:
            non_contextual_creation: true
    database-platform: org.hibernate.dialect.PostgreSQLDialect
    show-sql: false
    open-in-view: false