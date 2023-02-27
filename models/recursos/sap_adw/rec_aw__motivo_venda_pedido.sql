with
    source_salesorderheadersalesreason as(
        select
            cast(salesorderid as int) as id_pedido
            , cast(salesreasonid as int) as id_motivo
            --, modifieddate
        from {{ source('aw', 'salesorderheadersalesreason') }}
    )

select *
from source_salesorderheadersalesreason