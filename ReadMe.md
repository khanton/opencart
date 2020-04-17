=== OpenCart test and development set

1. Clone repo 

```
git clone git@github.com:khanton/opencart.git
```

2. Download and install desired version of opencart.

| Version List| Comment
|ocStore-3| ocStore version 3 from https://ocstore.com |
|ocStore-2| ocStore version 3 from https://ocstore.com |
|opencart-3| Vanilla OpenCart 3 from https://opencart.com |
|opencart-2| Vanilla OpenCart 3 from https://opencart.com |

```
./install.sh ocStore-3
```

3. Start contaiter set.
```
docker-compose up -d
```