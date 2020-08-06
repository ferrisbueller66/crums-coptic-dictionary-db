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

ActiveRecord::Schema.define(version: 2020_07_27_044053) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "language"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "notes"
    t.integer "book_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "lexeme"
    t.string "dialects"
    t.string "pos"
    t.string "gloss"
    t.string "notes"
    t.string "reference"
    t.integer "page_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["page_id"], name: "index_entries_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "src_img"
    t.integer "pagination"
    t.integer "chapter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chapter_id"], name: "index_pages_on_chapter_id"
  end

  add_foreign_key "chapters", "books"
  add_foreign_key "entries", "pages"
  add_foreign_key "pages", "chapters"
end
