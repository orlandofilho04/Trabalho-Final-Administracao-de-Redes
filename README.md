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
- Docker 24.0.5
- Imagem ISO do Ubuntu Server 20.04 LTS já na pasta "/root/.vagrant.d/boxes"
- Imagens Docker dos serviços a serem utilizadas: DHCP, DNS, Web, FTP e NFS. "Web: https://hub.docker.com/_/httpd", "NFS: https://hub.docker.com/r/openebs/nfs-server-alpine", "DNS: https://hub.docker.com/r/coredns/coredns", "FTP: https://hub.docker.com/r/ustclug/ftp", "DHCP: https://hub.docker.com/r/linuxkit/dhcpcd"

## Topologia

## Segmentação de Sub-Redes

## Instruções de Uso

1. Clone o repositório do Github.
2. Acesse-o pelo terminal a pasta onde o projeto foi clonado e execute o comando "vagrant up" para iniciar a criação das VMs.
3. Verifique os status de cada VM com o comando "vagrant status" e veja se estão criadas ou não.
4. Após verificar os status de cada VM, digite "vagrant ssh" junto com o nome da VM (servicos-vm) para iniciar o shell de cada uma.
5. Por fim, desligue as VMs digitando o comando "vagrant halt", e caso queira apaga-las, digite o comando "vagrant destroy".

## Descrição de Rede

1. servicos-vm
   - IP Privado Estático (192.168.33.10)
   - DNS
     - 8.8.8.8

## Provisionamento

Os scripts de provisionamento de cada VM está localizado na parte SHELL no próprio arquivo "vagrantfile". Cada script executa as configurações e a instalação dos serviços necessários para cada VM funcionar conforme sua função.

1. servicos-v
   - Criação de cada container contendo o serviço:

## Configuração dos Serviços

1. DHCP: O serviço DHCP estará ouvindo na porta 67 UDP.
2. DNS: O serviço DNS estará ouvindo na porta 53 TCP/UDP.
3. Servidor Web: O servidor web estará acessível na porta 80 TCP.
4. Servidor FTP: O servidor FTP estará acessível na porta 21 TCP.
5. Servidor NFS: O servidor NFS estará acessível na porta 2049 TCP/UDP.

## Funcionamento

O arquivo `Vagrantfile` está configurado para criar uma máquina virtual Ubuntu e provisionar contêineres Docker para cada serviço.

## Resultados dos Testes
