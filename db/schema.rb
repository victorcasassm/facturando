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

ActiveRecord::Schema.define(version: 20140914121529) do

  create_table "clientes", force: true do |t|
    t.integer  "numero"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "comentarios"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detalles", force: true do |t|
    t.string   "producto"
    t.float    "precio"
    t.float    "cantidad"
    t.integer  "factura_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalles", ["factura_id"], name: "index_detalles_on_factura_id"

  create_table "facturas", force: true do |t|
    t.datetime "fecha"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facturas", ["cliente_id"], name: "index_facturas_on_cliente_id"

  create_table "productos", force: true do |t|
    t.string   "nombre"
    t.float    "precio"
    t.float    "cantidad"
    t.string   "comentarios"
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
