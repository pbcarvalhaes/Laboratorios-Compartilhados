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

ActiveRecord::Schema.define(version: 2019_10_26_010309) do

  create_table "admins", force: :cascade do |t|
    t.integer "nusp"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_admins_on_usuario_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.integer "nusp"
    t.string "departamento"
    t.integer "usuario_id"
    t.integer "laboratorio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratorio_id"], name: "index_alunos_on_laboratorio_id"
    t.index ["usuario_id"], name: "index_alunos_on_usuario_id"
  end

  create_table "docentes", force: :cascade do |t|
    t.integer "nusp"
    t.string "departamento"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_docentes_on_usuario_id"
  end

  create_table "equipamentos", force: :cascade do |t|
    t.string "nome"
    t.text "funcao"
    t.decimal "taxa"
    t.integer "laboratorio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratorio_id"], name: "index_equipamentos_on_laboratorio_id"
  end

  create_table "laboratorio_has_docentes", force: :cascade do |t|
    t.integer "laboratorio_id"
    t.integer "docente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["docente_id"], name: "index_laboratorio_has_docentes_on_docente_id"
    t.index ["laboratorio_id"], name: "index_laboratorio_has_docentes_on_laboratorio_id"
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "nome"
    t.string "localizacao"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.datetime "data"
    t.text "descricao"
    t.integer "usuario_id"
    t.integer "equipamento_id"
    t.integer "servico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipamento_id"], name: "index_pedidos_on_equipamento_id"
    t.index ["servico_id"], name: "index_pedidos_on_servico_id"
    t.index ["usuario_id"], name: "index_pedidos_on_usuario_id"
  end

  create_table "postagems", force: :cascade do |t|
    t.text "texto"
    t.integer "usuario_id"
    t.integer "laboratorio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratorio_id"], name: "index_postagems_on_laboratorio_id"
    t.index ["usuario_id"], name: "index_postagems_on_usuario_id"
  end

  create_table "representante_externos", force: :cascade do |t|
    t.integer "rg"
    t.string "unidade"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_representante_externos_on_usuario_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.text "funcao"
    t.decimal "taxa"
    t.integer "laboratorio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["laboratorio_id"], name: "index_servicos_on_laboratorio_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nome", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end