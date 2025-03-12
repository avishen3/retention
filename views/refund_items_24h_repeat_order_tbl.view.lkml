view: refund_items_24h_repeat_order_tbl {
  sql_table_name: `omega-post-184817.CS_NEW.Refund_Items_24h_repeat_order_tbl` ;;

  dimension: agent_email_2_order {
    type: string
    sql: ${TABLE}.agent_email_2_order ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: brand_2_order {
    type: string
    sql: ${TABLE}.brand_2_order ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: category_2_order {
    type: string
    sql: ${TABLE}.category_2_order ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: email_2_order {
    type: string
    sql: ${TABLE}.email_2_order ;;
  }
  dimension: hours_from_order_to_refund {
    type: number
    sql: ${TABLE}.hours_from_order_to_refund ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: key_2_order {
    type: string
    sql: ${TABLE}.key_2_order ;;
  }
  dimension_group: max_first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.max_first_refund_ts ;;
  }
  dimension_group: min_first_refund_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.min_first_refund_ts ;;
  }
  dimension_group: order_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created ;;
  }
  dimension_group: order_created_2_order {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.order_created_2_order ;;
  }
  dimension: pre_delivery_full_refund_amount {
    type: number
    sql: ${TABLE}.pre_delivery_full_refund_amount ;;
  }
  dimension: refund_type {
    type: string
    sql: ${TABLE}.refund_type ;;
  }
  dimension: refund_type_2_order {
    type: string
    sql: ${TABLE}.refund_type_2_order ;;
  }
  dimension: short_id {
    type: string
    sql: ${TABLE}.short_id_a ;;
  }
  dimension: short_id_2_order {
    type: string
    sql: ${TABLE}.short_id_2_order ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_2_order {
    type: string
    sql: ${TABLE}.status_2_order ;;
  }
  dimension: total_items_in_catagory {
    type: number
    sql: ${TABLE}.Total_items_in_catagory ;;
  }
  dimension: total_items_in_catagory_2_order {
    type: number
    sql: ${TABLE}.Total_items_in_catagory_2_order ;;
  }
  measure: count {
    type: count
  }


  dimension: rp_agent_email {
    type: string
    sql: ${TABLE}.rp_agent_email ;;
  }


  measure: Total_Original_Orders {
    type: count_distinct
    sql: ${short_id} ;;
  }


  measure: Total_Seconed_Orders {
    type: count_distinct
    sql: ${short_id_2_order} ;;
  }

# date granularity#

  parameter: Date_Granularity {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    allowed_value: { value: "Year" }
  }


  dimension: Date_Granularity_date {
    label_from_parameter: Date_Granularity
    sql:
            CASE
             WHEN {% parameter Date_Granularity %} = 'Day' THEN cast(${order_created_date} as string)
             WHEN {% parameter Date_Granularity %} = 'Week' THEN cast(${order_created_week} as string)
             WHEN {% parameter Date_Granularity %} = 'Month' THEN cast(${order_created_month} as string)
             WHEN {% parameter Date_Granularity %} = 'Quarter' THEN cast(${order_created_quarter} as string)
             WHEN {% parameter Date_Granularity %} = 'Year' THEN cast(${order_created_year} as string)
            ELSE null
            END ;;
  }




  dimension: Agent_Grouping_by_Team_Lead_order2 {
    sql:
        CASE
    WHEN ${agent_email_2_order} IN (
        'argie.cayetano@residenthome.com',
        'charbel.mahinay@residenthome.com',
        'edeson.aboabo@residenthome.com',
        'heidi.suicano@residenthome.com',
        'irene.bahandi@residenthome.com',
        'janea@residenthome.com',
        'jessuelle.patrimonio@residenthome.com',
        'jimboy.corciega@residenthome.com',
        'joanc@residenthome.com',
        'john.balingit@residenthome.com',
        'jonn.torres@residenthome.com',
        'junrey.nocos@residenthome.com',
        'marlo.labrador@residenthome.com',
        'ray.sun@residenthome.com'
    ) THEN 'johnt@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'jessa.casido@residenthome.com',
      'shan.gajegan@residenthome.com',
      'christopher.tagnipis@residenthome.com',
      'rose.bangcat@residenthome.com',
      'rosemariec@residenthome.com',
      'mikaela.barrera@residenthome.com',
      'ej.samson@residenthome.com',
      'ginab@residenthome.com',
      'archie.osa@residenthome.com',
      'honeylen.landisa@residenthome.com',
      'lourdes.unajan@residenthome.com',
      'jerald.olasiman@residenthome.com',
      'thelma.laurena@residenthome.com',
      'xavierc@residenthome.com',
      'michelle.sandoval@residenthome.com'
      ) THEN 'robinp@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'arianei@residenthome.com',
      'cj.vios@residenthome.com',
      'crisannr@residenthome.com',
      'cynthia.nesnia@residenthome.com',
      'diannep@residenthome.com',
      'eva.violeta@residenthome.com',
      'fredalyn.demayo@residenthome.com',
      'jayson.caminos@residenthome.com',
      'jereeb@residenthome.com',
      'jerome.olarte@residenthome.com',
      'kimberly.garol@residenthome.com',
      'paul.tan@residenthome.com',
      'paul.valerio@residenthome.com',
      'rey.buagas@residenthome.com',
      'roselyn.laure@residenthome.com'
      ) THEN 'mariab@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'belmarie.zamora@residenthome.com',
      'genilyn.asenas@residenthome.com',
      'hazel.macamay@residenthome.com',
      'jose.inocente@residenthome.com',
      'jubille.ganaganag@residenthome.com',
      'mae.sasil@residenthome.com',
      'marites.agustin@residenthome.com',
      'nholrhi.distrito@residenthome.com',
      'reynold.marino@residenthome.com',
      'romenette.tambahoyot@residenthome.com',
      'shelamae.bohol@residenthome.com',
      'sherlane.secuya@residenthome.com',
      'wilmam@residenthome.com'
      ) THEN 'glecerio.jumawan@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'alliah.aliaviado@residenthome.com',
      'anthony.bueno@residenthome.com',
      'antoniette.camay@residenthome.com',
      'crystal.beron@residenthome.com',
      'diana.solibio@residenthome.com',
      'heinz.acson@residenthome.com',
      'jesselaine.siglos@residenthome.com',
      'johno@residenthome.com',
      'jopely@residenthome.com',
      'june.lucilla@residenthome.com',
      'mickel.noay@residenthome.com',
      'nhova.venenoso@residenthome.com',
      'rhodora.quinol@residenthome.com',
      'rosean.lambayan@residenthome.com',
      'wisdom.alama@residenthome.com'
      ) THEN 'melrose.baybay@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'aiva.abalos@residenthome.com',
      'alving@residenthome.com',
      'edmar.baylon@residenthome.com',
      'isaac.ignacio@residenthome.com',
      'josephineo@residenthome.com',
      'junbell.banatanto@residenthome.com',
      'krizha.abia@residenthome.com',
      'margaritab@residenthome.com',
      'marian.gragasin@residenthome.com',
      'melissac@residenthome.com',
      'oliver.tuayon@residenthome.com',
      'vincent.banlat@residenthome.com'
      ) THEN 'rizap@residenthome.com'

      WHEN ${agent_email_2_order} IN (
      'alexies@residenthome.com',
      'alina.amaya@residenthome.com',
      'anna@residenthome.com',
      'darwin.data@residenthome.com',
      'dino.balaga@residenthome.com',
      'irenee@residenthome.com',
      'jessa.amparado@residenthome.com',
      'jessica.montecillo@residenthome.com',
      'johann.aran@residenthome.com',
      'john.romano@residenthome.com',
      'john.tismo@residenthome.com',
      'kevin.elumba@residenthome.com',
      'kristine.ramos@residenthome.com',
      'sheena.marino@residenthome.com',
      'vica.verden@residenthome.com'
      ) THEN 'von.asioche@residenthome.com'

      ELSE NULL
      END
      ;;
  }



}
