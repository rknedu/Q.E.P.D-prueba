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

ActiveRecord::Schema.define(version: 20170201192954) do

  create_table "caracteristicas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "componentes", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "caracteristica_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["caracteristica_id"], name: "index_componentes_on_caracteristica_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_comunas_on_region_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "solucion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.string   "ubicacion"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_conditions", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "condition_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.integer  "precio"
    t.integer  "publication_id"
    t.integer  "servicio_id"
    t.integer  "type_plan_id"
    t.integer  "tipo_cliente_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["publication_id"], name: "index_plans_on_publication_id"
    t.index ["servicio_id"], name: "index_plans_on_servicio_id"
    t.index ["tipo_cliente_id"], name: "index_plans_on_tipo_cliente_id"
    t.index ["type_plan_id"], name: "index_plans_on_type_plan_id"
  end

  create_table "publications", force: :cascade do |t|
    t.date     "fecha"
    t.string   "estado"
    t.integer  "usuario_id"
    t.integer  "type_publication_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["type_publication_id"], name: "index_publications_on_type_publication_id"
    t.index ["usuario_id"], name: "index_publications_on_usuario_id"
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

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "componente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["componente_id"], name: "index_servicios_on_componente_id"
  end

  create_table "telefonos", force: :cascade do |t|
    t.integer  "numero"
    t.integer  "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_telefonos_on_empresa_id"
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

  create_table "type_plans", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_publications", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "pernission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "apellido"
    t.integer  "role_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_usuarios_on_role_id"
  end

end
