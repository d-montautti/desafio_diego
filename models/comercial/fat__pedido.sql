with
    cabecalho as (
        select *
        from {{ ref('rec_aw__cabecalho_pedido') }}
    )

    , detalhes as (
        select *
        from {{ ref('rec_aw__detalhes_pedido') }}
    )

    , uniao_tabelas as (
        select
            row_number() over (order by id_cliente) as pk_pedido
            , cabecalho.id_pedido
            , cabecalho.id_cliente
            , detalhes.id_produto            
            , cabecalho.id_territorio      
            , cabecalho.id_cartao 
            , cabecalho.data_pedido        
            , cabecalho.status_pedido       
            , cabecalho.valor_total
            , detalhes.quantidade
            , detalhes.preco_unitario
            , detalhes.desconto_unitario
        from cabecalho
        left join detalhes on cabecalho.id_pedido = detalhes.id_pedido
    )

select *
from uniao_tabelas