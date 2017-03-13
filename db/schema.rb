# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170309132121) do

  create_table "anforas", force: :cascade do |t|
    t.string   "anfora_y_cobre"
    t.string   "anfora_cobre"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "atributos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "tipo_atributo"
    t.string   "valor"
  end

  create_table "atributos_componentes", force: :cascade do |t|
    t.integer  "componente_id"
    t.integer  "atributo_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["atributo_id"], name: "index_atributos_componentes_on_atributo_id"
    t.index ["componente_id"], name: "index_atributos_componentes_on_componente_id"
  end

  create_table "burial_services", force: :cascade do |t|
    t.boolean  "capilla"
    t.boolean  "sala_de_velatorio"
    t.boolean  "liturgia"
    t.integer  "toldo"
    t.integer  "silla"
    t.boolean  "amplificacion"
    t.boolean  "diacono"
    t.integer  "coro"
    t.string   "cafeteria"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "componentes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "servicio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["servicio_id"], name: "index_componentes_on_servicio_id"
  end

  create_table "componentes_plans", force: :cascade do |t|
    t.integer  "componente_id"
    t.integer  "plan_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["componente_id"], name: "index_componentes_plans_on_componente_id"
    t.index ["plan_id"], name: "index_componentes_plans_on_plan_id"
  end

  create_table "components", force: :cascade do |t|
    t.integer  "urna_id"
    t.integer  "velatorio_id"
    t.integer  "traslado_id"
    t.integer  "servicio_de_cinerario_id"
    t.integer  "anfora_id"
    t.integer  "burial_service_id"
    t.integer  "espacio_id"
    t.integer  "construction_id"
    t.integer  "location_id"
    t.integer  "support_id"
    t.integer  "plan_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["anfora_id"], name: "index_components_on_anfora_id"
    t.index ["burial_service_id"], name: "index_components_on_burial_service_id"
    t.index ["construction_id"], name: "index_components_on_construction_id"
    t.index ["espacio_id"], name: "index_components_on_espacio_id"
    t.index ["location_id"], name: "index_components_on_location_id"
    t.index ["plan_id"], name: "index_components_on_plan_id"
    t.index ["servicio_de_cinerario_id"], name: "index_components_on_servicio_de_cinerario_id"
    t.index ["support_id"], name: "index_components_on_support_id"
    t.index ["traslado_id"], name: "index_components_on_traslado_id"
    t.index ["urna_id"], name: "index_components_on_urna_id"
    t.index ["velatorio_id"], name: "index_components_on_velatorio_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_comunas_on_region_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.boolean  "pago_a_plazo"
    t.boolean  "compra_anticipada"
    t.boolean  "titulo_de_dominio"
    t.boolean  "acepta_seguro_deceso"
    t.boolean  "seguro_de_degravamen"
    t.boolean  "seguro_cesantia"
    t.string   "convenio"
    t.boolean  "descuento_servicio_sepultacion"
    t.boolean  "pensiones"
    t.integer  "plan_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "formas_de_pago"
    t.index ["plan_id"], name: "index_conditions_on_plan_id"
  end

  create_table "constructions", force: :cascade do |t|
    t.string   "tipo"
    t.string   "material"
    t.string   "terminacion"
    t.boolean  "incluye_grabado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "directions", force: :cascade do |t|
    t.string   "calle"
    t.integer  "numero"
    t.string   "sector"
    t.integer  "empresa_id"
    t.integer  "comuna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comuna_id"], name: "index_directions_on_comuna_id"
    t.index ["empresa_id"], name: "index_directions_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "tipo_empresa_id"
    t.string   "rut"
    t.integer  "usuario_id"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.index ["tipo_empresa_id"], name: "index_empresas_on_tipo_empresa_id"
    t.index ["usuario_id"], name: "index_empresas_on_usuario_id"
  end

  create_table "espacios", force: :cascade do |t|
    t.integer  "urna_adulto"
    t.integer  "urna_parvulo"
    t.integer  "reduccion"
    t.integer  "Anfora"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "titulo"
    t.string   "nombre"
    t.integer  "componente_id"
    t.integer  "plan_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.index ["componente_id"], name: "index_images_on_componente_id"
    t.index ["plan_id"], name: "index_images_on_plan_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "lugar"
    t.boolean  "acceso_vehicular"
    t.string   "nombre_sector"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "plan_conditions", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "condition_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.integer  "precio"
    t.integer  "servicio_id"
    t.integer  "type_plan_id"
    t.integer  "tipo_cliente_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "empresa_id"
    t.integer  "condition_id"
    t.boolean  "state"            default: false
    t.boolean  "necesidad"        default: false
    t.index ["servicio_id"], name: "index_plans_on_servicio_id"
    t.index ["tipo_cliente_id"], name: "index_plans_on_tipo_cliente_id"
    t.index ["type_plan_id"], name: "index_plans_on_type_plan_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "rut"
    t.string   "email"
    t.integer  "telefonouno"
    t.integer  "telefonodos"
    t.integer  "plan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "mensaje"
    t.index ["plan_id"], name: "index_quotes_on_plan_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sedes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "empresa_id"
    t.string   "calle"
    t.integer  "numero"
    t.string   "sector"
    t.string   "ubicacion"
    t.integer  "comuna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comuna_id"], name: "index_sedes_on_comuna_id"
    t.index ["empresa_id"], name: "index_sedes_on_empresa_id"
  end

  create_table "servicio_de_cinerarios", force: :cascade do |t|
    t.boolean  "capilla"
    t.boolean  "sala_de_velatorio"
    t.boolean  "podium"
    t.boolean  "liturgia"
    t.boolean  "amplificacion"
    t.boolean  "diacono"
    t.integer  "coro"
    t.string   "cafeteria"
    t.boolean  "ceremonia_entre_cenizas"
    t.boolean  "anfora_incluida"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "tipo_empresa_id"
    t.index ["tipo_empresa_id"], name: "index_servicios_on_tipo_empresa_id"
  end

  create_table "supports", force: :cascade do |t|
    t.boolean  "cobro_mantencion"
    t.string   "tiempo_cobro"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "telefonos", force: :cascade do |t|
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sede_id"
    t.index ["sede_id"], name: "index_telefonos_on_sede_id"
  end

  create_table "tipo_atributos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_clientes", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_empresas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traslados", force: :cascade do |t|
    t.boolean  "carroza_de_instalacion"
    t.boolean  "carroza_funeral"
    t.boolean  "carroza_para_flores"
    t.integer  "vehiculo_acompanamiento"
    t.integer  "capacidad_pasajeros"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "type_plans", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urnas", force: :cascade do |t|
    t.string   "modelo"
    t.string   "medida"
    t.string   "material"
    t.string   "terminacion"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "apellido"
    t.integer  "role_id"
    t.integer  "permission_level",       default: 1
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_usuarios_on_role_id"
  end

  create_table "velatorios", force: :cascade do |t|
    t.string   "tramites_defuncion"
    t.boolean  "asesor_a_domicilio"
    t.boolean  "sala_de_velatorio"
    t.integer  "cirios"
    t.integer  "portacirios"
    t.integer  "cruz"
    t.integer  "flores_en_canasto"
    t.string   "flores_cubre_urna"
    t.string   "integer"
    t.integer  "libro_de_condolencias"
    t.boolean  "parroco"
    t.integer  "coro"
    t.integer  "aviso_prensa"
    t.integer  "tarjeta_agradecimiento"
    t.string   "cafeteria"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
