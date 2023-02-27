with
    source_salesorderdetail as(
        select
            cast(salesorderid as int) id_pedido
            --, salesorderdetailid
            , cast(productid as int) as id_produto
            --, castspecialofferid
            --, carriertrackingnumber
            , cast(orderqty as int) as quantidade
            , unitprice as preco_unitario
            , unitpricediscount as desconto_unitario
            --, rowguid
            --, modifieddate
        from {{ source('aw', 'salesorderdetail') }}
    )

select *
from source_salesorderdetail