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

ActiveRecord::Schema.define(version: 20141229215403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_documentos", force: true do |t|
    t.string   "nome",       limit: 150
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidato_experiencias", force: true do |t|
    t.integer  "candidato_id"
    t.string   "empresa_nome"
    t.integer  "cargo_id"
    t.text     "descricao_ativ"
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "inicio_mes"
    t.integer  "inicio_ano"
    t.integer  "final_mes"
    t.integer  "final_ano"
    t.integer  "atual"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_vaga_id"
  end

  create_table "candidato_formacaos", force: true do |t|
    t.integer  "candidato_id"
    t.integer  "formacao_id"
    t.integer  "curso_id"
    t.integer  "status"
    t.integer  "inicio_mes"
    t.integer  "inicio_ano"
    t.integer  "final_mes"
    t.integer  "final_ano"
    t.string   "instituicao"
    t.integer  "pais_id"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidato_idiomas", force: true do |t|
    t.integer  "candidato_id"
    t.integer  "idioma_id"
    t.integer  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidatos", force: true do |t|
    t.string   "nome",                   limit: 150
    t.integer  "sexo"
    t.string   "rg",                     limit: 20
    t.string   "uf",                     limit: 2
    t.string   "cpf",                    limit: 20
    t.date     "data_nascimento"
    t.integer  "idade"
    t.string   "nome_mae",               limit: 150
    t.string   "contato_cel",            limit: 20
    t.integer  "operadora_id"
    t.string   "contato_residencial",    limit: 50
    t.string   "email_01",               limit: 50
    t.string   "email_02",               limit: 50
    t.string   "email_03",               limit: 50
    t.string   "cep",                    limit: 10
    t.string   "endereco",               limit: 100
    t.string   "numero",                 limit: 50
    t.string   "complemento",            limit: 150
    t.string   "bairro",                 limit: 150
    t.string   "regiao",                 limit: 150
    t.integer  "state_id"
    t.integer  "city_id"
    t.integer  "pais"
    t.integer  "nacionalidade_id"
    t.boolean  "fumante"
    t.boolean  "pne"
    t.integer  "pne_tipo"
    t.integer  "png_grau"
    t.text     "pne_detalhe"
    t.integer  "estado_civil"
    t.boolean  "filhos"
    t.integer  "filhos_qtd"
    t.integer  "filhos_cacula"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cnh"
    t.boolean  "veiculo_proprio"
    t.decimal  "pretencao_salario_min",              precision: 15, scale: 2, default: 0.0
    t.decimal  "pretencao_salario_max",              precision: 15, scale: 2, default: 0.0
    t.integer  "filho_mes_ano"
    t.integer  "disponibilidade_inicio"
    t.decimal  "pretencao_salario",                  precision: 15, scale: 2, default: 0.0
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "contato_recado",         limit: 25
    t.string   "nome_recado",            limit: 150
    t.string   "gra_pare_recado",        limit: 150
  end

  create_table "candidatos_cargos", force: true do |t|
    t.integer  "candidato_id"
    t.integer  "cargo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidatos_dias_semanas", force: true do |t|
    t.integer  "candidato_id"
    t.integer  "dias_semana_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidatos_tipo_vagas", force: true do |t|
    t.integer  "candidato_id"
    t.integer  "tipo_vaga_id"
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

  create_table "cnhs", force: true do |t|
    t.string   "nome",       limit: 20
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cnhs_vagas", force: true do |t|
    t.integer  "cnh_id"
    t.integer  "vaga_id"
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

  create_table "dias_semanas_empresa_perfils", force: true do |t|
    t.integer  "empresa_perfil_id"
    t.integer  "dias_semana_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dias_semanas_vagas", force: true do |t|
    t.integer  "vaga_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dias_semana_id"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vale_transporte"
    t.decimal  "vale_transporte_valor",  precision: 15, scale: 2, default: 0.0
    t.integer  "vale_alimentacao"
    t.decimal  "vale_alimentacao_valor", precision: 15, scale: 2, default: 0.0
    t.text     "sobre"
  end

  create_table "empresas", force: true do |t|
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
    t.string   "cnpj",                limit: 20
    t.boolean  "resp_entrevista"
    t.string   "bairro",              limit: 100
    t.string   "entrev_bairro",       limit: 100
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "formacaos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas", force: true do |t|
    t.string   "nome",       limit: 150
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas_vagas", force: true do |t|
    t.integer  "vaga_id"
    t.integer  "idioma_id"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacionalidades", force: true do |t|
    t.string   "nome",       limit: 150
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "tipo_vagas", force: true do |t|
    t.string   "nome",       limit: 150
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", force: true do |t|
    t.string   "nome"
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
    t.integer  "turno_manha",              limit: 2
    t.integer  "turno_tarde",              limit: 2
    t.integer  "turno_noite",              limit: 2
    t.time     "turno_especifico_inicio"
    t.time     "turno_espeficico_final"
    t.integer  "experiencia_qtd"
    t.integer  "experiencia_mes_ano"
    t.integer  "cnh"
    t.boolean  "veiculo_proprio"
    t.boolean  "mostrar_salario"
    t.decimal  "salario_inicial",                    precision: 15, scale: 2, default: 0.0
    t.decimal  "salario_pos_exp",                    precision: 15, scale: 2, default: 0.0
    t.integer  "salario_por_hms"
    t.boolean  "salario_comissao"
    t.decimal  "salario_comissao_porcen",            precision: 15, scale: 2, default: 0.0
    t.boolean  "salario_bonif"
    t.boolean  "salario_premiacao"
    t.boolean  "nao_fumante"
    t.boolean  "candidatos_regiao"
    t.integer  "turno_id"
    t.integer  "tipo_vaga_id"
    t.integer  "divulga_salario"
  end

end
