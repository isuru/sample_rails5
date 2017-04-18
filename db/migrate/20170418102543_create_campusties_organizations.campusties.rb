# This migration comes from campusties (originally 20170417123848)
class CreateCampustiesOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :campusties_organizations do |t|
  	
  	    t.string   :name
        t.string   :logo
        t.string   :email
        t.string   :address
        t.string   :phone
        t.string   :status
        t.string   :authetication_type        
        t.string   :slug
        t.string   :vc_service_url
        t.string   :vc_api_key
        t.string   :vc_api_secret
        t.string   :twitter
        t.string   :facebook
        t.string   :instagram
        t.string   :rss
        t.integer  :created_by
        t.integer  :modified_by
        t.datetime :created_at
        t.datetime :updated_at
	
      t.timestamps
    end
    add_index :campusties_organizations,  :name,  :unique => true

  end
end
