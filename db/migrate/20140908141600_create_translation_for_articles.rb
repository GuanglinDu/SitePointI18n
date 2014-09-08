class CreateTranslationForArticles < ActiveRecord::Migration
  def up
    Article.create_translation_table!({
                                          title: :string,
                                          body: :text,
                                          image_uid: :string}, {migrate_data: true})
  end

  def down
    Article.drop_translation_table! migrate_data: true
  end
end
