# docker-knowledge log4j security issue(CVE-2021-44228) resolved version
The log4j jar file is replaced by [reload4j](https://github.com/qos-ch/reload4j) jar file. Then, the new war-file is created with reload4j jar file.

This is log4j-security-issue-free version of docker-knowledge.


# docker-knowledge
Docker file for knowledge

- This is Dockerfile that can build a docker image of [Knowledge](https://github.com/support-project/knowledge).


## What's Knowledge
- Free Knowledge Management System

- [Live Demo](https://support-project.org/knowledge/index)

- [Landing page](https://support-project.org/knowledge_info/index)


## Build yourself

Download war file.
https://app.box.com/s/26fhcw3c33u1gn7feon8po754ji6g07d

Run this command.

```
docker-compose up -d
```

