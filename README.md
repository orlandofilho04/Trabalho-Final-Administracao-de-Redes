## Trabalho Final de Administração de Redes de Computadores

Neste projeto, você se concentrará em projetar, implantar e gerenciar uma rede empresarial usando tecnologia Linux, com ênfase em serviços como DHCP, DNS, Web, FTP, NFS e virtualização com Vagrant e Docker.

## Estrutura do Projeto

- shared_folder
- vagrantfile
- README.md

## Pré-requisitos

- Considerar sistema de criação Linux Mint 21.2
- Vagrant 2.2.19
- VirtualBox 6.1
- Imagem ISO do Ubuntu Server 20.04 LTS já na pasta "/root/.vagrant.d/boxes"

## Instruções de Uso

1. Clone o repositório do Github.
2. Acesse-o pelo terminal a pasta onde o projeto foi clonado e execute o comando "vagrant up" para iniciar a criação das VMs.
3. Verifique os status de cada VM com o comando "vagrant status" e veja se estão criadas ou não.
4. Após verificar os status de cada VM, digite "vagrant ssh" junto com o nome da VM (gateway-vm, sevidor-web-vm ou servidor-bd-vm) para iniciar o shell de cada uma.
5. Por fim, desligue as VMs digitando o comando "vagrant halt", e caso queira apaga-las, digite o comando "vagrant destroy".

## Configuração de Rede

1. servicos-vm
   - IP Privado Estático (192.168.33.10)
   - DNS
     - 8.8.8.8
   - Atribuição do IP privado estático (192.168.56.14) como Gateway padrão da rede.
     1.1. dhcphost -

## Provisionamento

Os scripts de provisionamento de cada VM está localizado na parte SHELL no próprio arquivo "vagrantfile". Cada script executa as configurações e a instalação dos serviços necessários para cada VM funcionar conforme sua função. Estão dispostos no arquivo "vagrantfile", pois em sala de aula, me falou para fazer assim.

1. servicos-v
   - Criação de cada container contendo o serviço:

## Acesso à Internet

Por meio da conexão à internet recebida por bridge ao DHCP da gateway-vm, a interface de rede interna da gateway-vm recebe essa conexão e atribui ela ao seu IP privado estático, que por sua vez está na mesma faixa dos IPs das VMs sevidor-web-vm e servidor-bd-vm, cada uma dessas VMs estão configuradas com IP da gateway-vm atuando como Gateway padrão da rede, assim as VMs sevidor-web-vm e servidor-bd-vm dependem da gateway-vm para terem acesso à internet.
