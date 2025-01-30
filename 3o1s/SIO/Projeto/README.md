# sio_2425_project - Suplementary season

<br>

# Group members
- Luis Sousa 108583
- Nuno Carvalho 97783
- Isaac Santiago 104327

<br>

# Setup Projeto

Todas as funções já se encontram como scripts executáveis.
<br>

Ao iniciar o repository.py, duas pastas serão criadas automaticamente, "data" e "documents". Certos comandos irão incluir os seus dados nestas pastas

        python3 repository.py

Num novo terminal, confirmar se o REP_ADDRESS é o mesmo fornecido na informação do repository.py

        export REP_ADDRESS="localhost:(port)"
        echo $REP_ADDRESS


<br>

# Comandos Disponíveis
A seguinte lista mostra como executar cada uma destas funções:



- Gerar um par de chaves (privada e pública) para um sujeito e guardar as mesmas num arquivo e criptografar a chave privada com uma password.


        ./rep_subject_credentials <password> <credentials file> 

- Descriptografar um arquivo criptografado usando os metadados de criptografia fornecidos e exibir o conteúdo no stdout

        ./rep_decrypt_file <encrypted file> <encryption metadata>

-     exemplo de uso, usar o encrypted file pretendido e o documents.json (usar caminho o caminho correto, no nosso caso, para o decumento encriptado usar o file_handle), segue um exemplo:

        ./rep_decrypt_file.py documents/encrypted_files/3yTvBt71Ms8-yPJrASvRNQ== data/documents.json


- Criar uma organização e a sua chave pública, fornecendo o nome, email e nome de utilizador de ...

        ./rep_create_org <organization> <username> <name> <email> <public key file>

- Listar as organizações existentes

        ./rep_list_orgs

- Criar a sessão para um utilizador (previamente configurado no sistema) dentro de uma organização (previamente configurada no sistema). Pode apenas haver uma sessão criada de cada vez

        ./rep_create_session <organization> <username> <password> <credentials file> <session file>

- Obter um ficheiro cifrado a partir do repositório fornecendo o seu "file_handle", se um segundo argumento for criado uma nova pasta "get_file" será criada e o argumento será colocado com a sua informação

        ./rep_get_file <file handle> [file]

- Listar todos os sujeitos criados

        ./rep_list_subjects <session file> [username]

- Listar todos os documentos criados (pesquisa por data não funcional se for incluida a flag "-d")

        ./rep_list_docs <session file> [-s username] [-d nt/ot/et date]

- Criar um novo sujeito

        ./rep_add_subject <session file> <username> <name> <email> <credentials file>

- Suspender um sujeito

        ./rep_suspend_subject <session file> <username>

- Ativar um sujeito

        ./rep_activate_subject <session file> <username>

- Adicionar um documento usando um ficheiro existente
 
        ./rep_add_doc <session file> <document name> <file>

- Obter os metadados de um documento

        ./rep_get_doc_metadata <session file> <document name>

- Obter o ficheiro de um documento, se um terceiro argumento for fornecido, uma nova pasta "get_doc_file" será criada e o argumento será colocado com a sua informação

        ./rep_get_doc_file <session file> <document name> [file]

- Apagar a metadata(file_handler) de um documento

        ./rep_delete_doc <session file> <document name> 

- Assumir um cargo dentro da sessão

        ./rep_assume_role <session file> <role>

- Remover o cargo

        ./rep_drop_role <session file> <role>

- Listar todos os cargos disponíveis

        ./rep_list_roles <session file> <role>

- Listar todos os sujeitos com um cargo específico dentro da organização com sessão criada

        ./rep_list_role_subjects <session file> <role>

- Lista todos os cargos de um sujeito da organização com sessão criada

        ./rep_list_subject_roles <session file> <username>

- Listar as permissões de um cargo da organização com sessão criada

        ./rep_list_role_permissions <session file> <role>


- Listar cargos da organização com sessão criada que têm uma permissão dada e listar cargos que têm uma permissão dada por documento

        ./rep_list_permission_roles <session file> <permission>

- Adicionar um cargo à organização com sessão iniciada. Requer a permissão ROLE_NEW

        ./rep_add_role <session file> <role>



- Mudar (suspender ou reativar) o estado de um cargo numa organização com sessão criada. Requer as Permissões ROLE_DOWN e ROLE_UP, repsetivamente

        ./rep_rep_suspend_role <session file> <role>
        ./rep_reactivate_role <session file> <role>

- Mudar as propriedades (adicionar/remover um sujeito e adicionar/remover uma oermissão, respetivamente) de um cargo na organização com sessão iniciada. Requer a permissão ROLE_MOD

        ./rep_add_permission <session file> <role> <username>
        ./rep_remove_permission <session file> <role> <username>
        ./rep_add_permission <session file> <role> <permission>
        ./rep_remove_permission <session file> <role> <permission>

- Alterar o ACL de um documento, adicionando ou removendo uma permissão de um dado cargo. Requer a permissão DOC_ACL

        ./rep_acl_doc <session file> <document name> [+/-] <role> <permission>


<br>

# Comandos Extra

- Apagar um ficheiro do repositorio

        ./rep_delete_doc_from_rep <session file> <document>

- Confirmar que a decriptação foi bem sucessida

        ./rep_compare_files.py <file name>

<br>

# Notas

Foram incluidos nesta entrega dois scripts, o script "COMANDOS" que usamos para testar comandos, pode ser consultado em caso de duvidas (é preciso adaptar o ./rep_decrypt_file.py de maneira a usar o ficheiro cifrado correto) e o script "CLEAR" para apagar todos os dados gerados (correr antes de correr o repository,py) para ao fazer novos testes ter o repositório pronto para dados novos do 0.
<br>

Os deletes estao comentados no script para testar certos aspetos

Ao usar o filtro para pesquisa no rep_list_docs por data, não utilizar a flag "-d"

<br>


