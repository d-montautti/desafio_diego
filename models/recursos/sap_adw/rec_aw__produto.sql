with
    source_product as(
        select
            cast(productid as int) as id_produto
            --, productsubcategoryid
            --, productmodelid
            , cast(name as string) as nome_produto
            --, productnumber
            --, makeflag
            --, finishedgoodsflag
            --, color
            --, safetystocklevel
            --, reorderpoint
            --, standardcost
            --, listprice
            --, size
            --, sizeunitmeasurecode
            --, weightunitmeasurecode
            --, weight
            --, daystomanufacture
            --, productline
            --, class
            --, style
            --, sellstartdate
            --, sellenddate
            --, discontinueddate
            --, rowguid
            --, modifieddate
        from {{ source('aw', 'product') }}
    )

select *
from source_product