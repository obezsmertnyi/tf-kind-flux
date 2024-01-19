## Встановлення Flux в Kubernetes кластер розгорнутий локально за допомогою kind.

Попередньо згенеруйте GitHub токен з доступами до репозитарію.
За замовчуванням для синхронізації буде використовуватись репозитарій flux-gitops.

### Змінюємо контекcт
```sh
k config set-context --current --namespace=demo
```

### Замінюємо secret
```sh
kubectl create secret generic kbot --from-literal=token=$TELE_TOKEN --dry-run=client -o yaml | kubectl apply -f -
```

### Перевіряемо доступність
```sh
k get po
flux get all -A
flux check --pre
flux logs -f 
```
