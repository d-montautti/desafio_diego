with
    product as (
        select *
        from {{ ref('rec_aw__produto') }}
    )

    , transformacoes as (
        select 
            row_number() over (order by id_produto) as pk_produto
            , product.id_produto
            , product.nome_produto    
        from product       
    )

select *
from transformacoes