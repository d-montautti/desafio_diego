with
    source_salesreason as(
        select
            cast(salesreasonid as int) as id_motivo
            , cast(name as string) as motivo
            , cast(reasontype as  string) as tipo_motivo
            --, modifieddate
        from {{ source('aw', 'salesreason') }}
    )

select *
from source_salesreason