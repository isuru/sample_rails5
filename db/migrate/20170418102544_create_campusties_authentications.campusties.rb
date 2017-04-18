# This migration comes from campusties (originally 20170417124601)
class CreateCampustiesAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :campusties_authentications do |t|

	  t.string :oauth_signature
      t.text   :lti_request_object

      t.references :campusties_organization, foreign_key: true

      t.timestamps
    end
  end
end
