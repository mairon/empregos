# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140919144113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_documentos", force: true do |t|
    t.string   "nome",       limit: 150
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "nome"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name",           limit: 50
    t.integer  "state_id"
    t.integer  "dimob"
    t.integer  "plots_iptu"
    t.decimal  "discount_quote",            precision: 15, scale: 2, default: 0.0
    t.time     "deleted_at"
    t.integer  "user_created",                                       default: 0
    t.integer  "unit_created",                                       default: 0
    t.integer  "user_updated",                                       default: 0
    t.integer  "unit_updated",                                       default: 0
    t.integer  "user_deleted",                                       default: 0
    t.integer  "unit_deleted",                                       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "convenios", force: true do |t|
    t.string   "nome"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "convenios_empresa_perfils", force: true do |t|
    t.integer  "empresa_perfil_id"
    t.integer  "convenio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", force: true do |t|
    t.string   "nome"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dias_semanas", force: true do |t|
    t.string   "nome",       limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dias_semanas_vagas", force: true do |t|
    t.integer  "vaga_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentos", force: true do |t|
    t.string   "nome"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentos_empresa_perfils", force: true do |t|
    t.integer  "empresa_perfil_id"
    t.integer  "documento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresa_perfils", force: true do |t|
    t.integer  "empresa_id"
    t.boolean  "trab_sabado"
    t.boolean  "trab_domingo_feriados"
    t.boolean  "trans_vale_transporte"
    t.boolean  "trans_ajuda"
    t.boolean  "trans_combinar"
    t.boolean  "ali_vale_refeicao"
    t.boolean  "ali_refeitorio_proprio"
    t.boolean  "ali_ajuda"
    t.boolean  "ali_combinar"
    t.decimal  "trans_vale_valor",       precision: 15, scale: 2, default: 0.0
    t.decimal  "trans_ajuda_valor",      precision: 15, scale: 2, default: 0.0
    t.decimal  "ali_vale_valor",         precision: 15, scale: 2, default: 0.0
    t.decimal  "ali_ajuda_valor",        precision: 15, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "cnpj",                limit: 15
    t.integer  "ramo_id"
    t.string   "razao_social",        limit: 100
    t.string   "nome_fantasia",       limit: 100
    t.string   "cep",                 limit: 50
    t.string   "endereco",            limit: 100
    t.string   "numero",              limit: 10
    t.string   "entrev_numero",       limit: 10
    t.string   "complemento",         limit: 200
    t.string   "regiao",              limit: 150
    t.integer  "state_id"
    t.integer  "city_id"
    t.text     "referencia"
    t.string   "fone01",              limit: 20
    t.string   "ramal01",             limit: 5
    t.string   "fone02",              limit: 20
    t.string   "ramal02",             limit: 5
    t.string   "fone03",              limit: 20
    t.string   "ramal03",             limit: 5
    t.string   "responsavel",         limit: 50
    t.string   "fone_resp",           limit: 20
    t.string   "email_receb",         limit: 50
    t.string   "site",                limit: 150
    t.integer  "unidade"
    t.integer  "endero_entrevista"
    t.string   "entrev_cep",          limit: 50
    t.string   "entrev_endereco",     limit: 100
    t.string   "entrev_complemento",  limit: 200
    t.string   "entrev_regiao",       limit: 150
    t.integer  "entrev_state_id"
    t.integer  "entrev_city_id"
    t.text     "entrev_referencia"
    t.text     "entrev_responsavel"
    t.string   "entrev_fone_resp",    limit: 20
    t.string   "entev_ramal_resp",    limit: 5
    t.string   "ramal_resp",          limit: 50
    t.string   "entrev_email",        limit: 50
    t.string   "entrev_emai2",        limit: 50
    t.boolean  "receb_noticia_sms"
    t.boolean  "receb_noticia_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "ramos", force: true do |t|
    t.string   "nome",       limit: 100
    t.boolean  "status"
    t.string   "codigo",     limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "acronym",      limit: 2
    t.string   "name",         limit: 50
    t.time     "deleted_at"
    t.integer  "user_created",            default: 0
    t.integer  "unit_created",            default: 0
    t.integer  "user_updated",            default: 0
    t.integer  "unit_updated",            default: 0
    t.integer  "user_deleted",            default: 0
    t.integer  "unit_deleted",            default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "cpfcnpj"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  create_table "vagas", force: true do |t|
    t.integer  "tipo_vaga"
    t.integer  "comercial_tipo"
    t.integer  "periodo"
    t.integer  "empresa_id"
    t.integer  "cargo_id"
    t.integer  "numero_vagas"
    t.integer  "sexo"
    t.boolean  "pne"
    t.integer  "estado_civil"
    t.integer  "outros_detalhes_candito"
    t.integer  "escolaridade"
    t.string   "area_tecnologo"
    t.string   "area_superior"
    t.integer  "status_escolaridade"
    t.integer  "cursando_periodo"
    t.integer  "experiencia"
    t.text     "conhecimentos_desejaveis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "curso_id"
    t.integer  "estagio_cursando"
    t.integer  "periodo_trabalho"
    t.integer  "carga_horaria"
  end

end
