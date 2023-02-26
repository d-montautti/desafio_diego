with
    source_creditcard as(
        select
            cast(creditcardid as int) as id_cartao
            , cast(cardtype as string) as tipo_cartao
            --, cardnumber
            --, expmonth
            --, expyear
            --, modifieddate
        from {{ source('aw', 'creditcard') }}
    )

select *
from source_creditcard