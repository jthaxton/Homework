# Tables below are tentative and subject to change.
# Furthermore, I have included applicable table relationships and indices.
# These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.text "email", null: false
    t.text "username", null: false
    t.text "session_token", null: false
    t.text "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  add_index :users, :username
  add_index :users, :session_token
  add_index :users, :email
  has_many :pictures
  has_many :follows



  create_table "pictures", force: :cascade do |t|
    t.text "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  belongs_to :user

  create_table "follows", force: :cascade do |t|
    t.text "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  belongs_to :user
