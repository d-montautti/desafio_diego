with
    source_salesorderheader as(
        select
            cast(salesorderid as int) as id_pedido
            , cast(customerid as int) as id_cliente
            --, salespersonid
            , cast(territoryid as int) as id_territorio
            --, billtoaddressid
            --, shiptoaddressid
            --, shipmethodid
            , cast(creditcardid as int) as id_cartao
            --, currencyrateid
            , cast(orderdate as datetime) as data_pedido
            --, duedate
            --, shipdate
            --, revisionnumber
            , cast(status as int) as status_pedido
            --, onlineorderflag
            --, purchaseordernumber
            --, accountnumber
            --, creditcardapprovalcode
            --, subtotal
            --, taxamt
            --, freight
            , totaldue as valor_total
            --, comment
            --, rowguid
            --, modifieddate
        from {{ source('aw', 'salesorderheader') }}
    )

select*
from source_salesorderheader