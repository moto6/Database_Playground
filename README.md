# Database Playground
- 데이터베이스는 킹핀

## 2021 : SQL-First-Step-Tutor
- SQL 첫걸음(아사이아츠시/한빛미디어) 책 학습


#### 1 개발환경 구축
```
### VSCODE 
- MYSQL 익스텐선(500k 짜리) 설치(JUN HAN)
- 커넥션 추가해서 돌리기
- localhost 인식 못함 127.0.0.1 로 해야됨
### DBeaver
- 디-비버 크로스플랫폼이라 좋은듯
- 그냥저냥 무난하게 돌아감
###
```


    




## 2024 ES 배우기
- https://www.elastic.co/kr/blog/getting-started-with-the-elastic-stack-and-docker-compose << 여기 참조함


### 실수하기 쉬운 부분 : 인증서 
```text
docker cp

elasticstack_docker-es01-1:/usr/share/elasticsearch/config/certs/ca/ca.crt /kr/tmp/.

인증서가 다운로드되면 curl 명령을 실행하여 Elasticsearch 노드를 쿼리합니다.

curl --cacert /kr/tmp/ca.crt -u elastic:changeme https://localhost:9200

>> 위는 원문



-----
---


docker cp database_playground-es01-1:/usr/share/elasticsearch/config/certs/ca/ca.crt .
curl --cacert ./setup/ca.crt -u elastic:changeme https://localhost:9200
>> 이건 내가한거


- 이게 도커파일시스템 /usr/share/elasticsearch/config/certs/ca/ca.crt 경로에 있는걸 가져와서 써야함

```


## 트러블슈팅
```
명령어
$ curl --cacert ./setup/ca.crt -u elastic:changeme https://localhost:9200


## 요런 에러 나오는 경우
{
    "error": {
        "root_cause": [
            {
                "type": "security_exception",
                "reason": "unable to authenticate user [elastic] for REST request [/]",
                "header": {
                    "WWW-Authenticate": [
                        "Basic realm=\"security\" charset=\"UTF-8\"",
                        "Bearer realm=\"security\"",
                        "ApiKey"
                    ]
                }
            }
        ],
        "type": "security_exception",
        "reason": "unable to authenticate user [elastic] for REST request [/]",
        "header": {
            "WWW-Authenticate": [
                "Basic realm=\"security\" charset=\"UTF-8\"",
                "Bearer realm=\"security\"",
                "ApiKey"
            ]
        }
    },
    "status": 401
}


## 원인 : 비번 계정 틀려서
## 솔루션 : 비번 계정 맞춰서 쏘기
```


```shell
curl --cacert ./setup/ca.crt -u elastic:elastic https://localhost:9200

curl --cacert ./setup/ca.crt -u elastic:elastic https://localhost:9200

{
  "name" : "es01",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "2zj1-euLRuGKuL9q8Iq2_A",
  "version" : {
    "number" : "8.7.1",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "f229ed3f893a515d590d0f39b05f68913e2d9b53",
    "build_date" : "2023-04-27T04:33:42.127815583Z",
    "build_snapshot" : false,
    "lucene_version" : "9.5.0",
    "minimum_wire_compatibility_version" : "7.17.0",
    "minimum_index_compatibility_version" : "7.0.0"
  },
  "tagline" : "You Know, for Search"
}

```



## 2부 :
- https://www.elastic.co/kr/blog/getting-started-with-the-elastic-stack-and-docker-compose-part-2
