## terraform-docker

### Hands on

### Play With Docker (PWD)

* http://play-with-docker.com/

- Obs: Esse será o ambiente que utilizares para o lab necessário ter uma conta no Github ou Dockerhub.

### Instalando o terraform no Play With Docker
- Primeiro Passo: Rodar sequência de comandos a seguir no terminal do PWD para setup do Terraform.

```
wget https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip
unzip terraform_0.13.0_linux_amd64.zip
mv terraform /bin/
terraform
```

### Clonar o Repositório 
- Segundo Passo: Clonar repositório, utilizar a sequencia de comandos a seguir

```
git clone https://gitlab.com/cristianvitortrucco/terraform-docker

cd terraform-docker 

### Para Rodar de forma automática utilizando o script, o script elimina a necessidade de executar o primeiro passo!

sh init.sh

```

### Rodar o Terraform

- Inicializar o terraform e automaticamente irá baixar os plugins necessários.

```
terraform init
```

- Verificar com o comando a seguir o que o terraform irá provisionar, esse comando é uma previa.

```
terraform plan
```

- Após verificar a saida, o comando apply vai construir a infra estrutura declarada no arquivo main.tf

```
terraform apply
```
- Confirmar com "yes" para realizar o deploy.
