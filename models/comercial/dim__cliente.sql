with
    person as (
        select *
        from {{ ref('rec_aw__pessoa') }}
    )
    
    , customer as (
        select *
        from {{ ref('rec_aw__cliente') }}
    )

    , uniao_tabelas as (
        select            
            customer.id_cliente
            , person.nome
            , person.sobrenome
        from customer
        left join person on customer.id_pessoa = person.id_entidade
    )

    , transformacoes as (
        select
            row_number() over (order by id_cliente) as pk_cliente
            , id_cliente
            , nome
            , sobrenome
            , concat(nome,' ', sobrenome) as nome_completo
        from uniao_tabelas
    )

select *
from transformacoes