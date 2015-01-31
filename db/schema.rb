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

ActiveRecord::Schema.define(version: 20150131162527) do

  create_table "answers", force: true do |t|
    t.text     "description"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "questions", force: true do |t|
    t.text     "prompt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions_quiz_runs", force: true do |t|
    t.integer "question_id"
    t.integer "quiz_run_id"
  end

  add_index "questions_quiz_runs", ["question_id"], name: "index_questions_quiz_runs_on_question_id"
  add_index "questions_quiz_runs", ["quiz_run_id"], name: "index_questions_quiz_runs_on_quiz_run_id"

  create_table "quiz_runs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "question_id"
    t.integer  "quiz_run_id"
    t.integer  "expected_answer_id"
    t.integer  "actual_answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "results", ["question_id"], name: "index_results_on_question_id"
  add_index "results", ["quiz_run_id"], name: "index_results_on_quiz_run_id"

end
