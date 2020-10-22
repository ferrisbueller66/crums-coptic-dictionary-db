# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_032424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dialectical_forms", force: :cascade do |t|
    t.bigint "dialect_id"
    t.string "lexeme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dialect_id"], name: "index_dialectical_forms_on_dialect_id"
  end

  create_table "dialects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "chapter_id"
    t.integer "starting_page"
    t.string "lemma"
    t.string "pos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chapter_id"], name: "index_entries_on_chapter_id"
  end

  create_table "entry_connections", id: false, force: :cascade do |t|
    t.integer "entry_a_id", null: false
    t.integer "entry_b_id", null: false
  end

  create_table "entry_dialects", force: :cascade do |t|
    t.bigint "entry_id"
    t.bigint "dialectical_form_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dialectical_form_id"], name: "index_entry_dialects_on_dialectical_form_id"
    t.index ["entry_id"], name: "index_entry_dialects_on_entry_id"
  end

  create_table "meaning_references", force: :cascade do |t|
    t.bigint "meaning_id"
    t.bigint "reference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meaning_id"], name: "index_meaning_references_on_meaning_id"
    t.index ["reference_id"], name: "index_meaning_references_on_reference_id"
  end

  create_table "meanings", force: :cascade do |t|
    t.bigint "entry_id"
    t.string "lexical_entry"
    t.string "translation_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_meanings_on_entry_id"
  end

  create_table "references", force: :cascade do |t|
    t.bigint "dialect_id"
    t.string "source"
    t.integer "volume_book"
    t.integer "line_verse"
    t.string "text_excerpt"
    t.string "translation"
    t.string "notes"
    t.string "greek_equivalent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dialect_id"], name: "index_references_on_dialect_id"
  end

  add_foreign_key "dialectical_forms", "dialects"
  add_foreign_key "entries", "chapters"
  add_foreign_key "entry_dialects", "dialectical_forms"
  add_foreign_key "entry_dialects", "entries"
  add_foreign_key "meaning_references", "\"references\"", column: "reference_id"
  add_foreign_key "meaning_references", "meanings"
  add_foreign_key "meanings", "entries"
  add_foreign_key "references", "dialects"
end
