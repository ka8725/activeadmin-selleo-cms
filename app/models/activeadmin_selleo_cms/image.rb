module ActiveadminSelleoCms
  class Image < ActiveadminSelleoCms::Asset
    has_attached_file :data,
                      :url  => "/system/cms/images/:id/:style_:basename.:extension",
                      :path => ":rails_root/public/system/cms/images/:id/:style_:basename.:extension",
                      :styles => { :normal => "120x90>" },
                      :default_style => :normal

    validates_attachment_size :data, :less_than => 1.megabytes
    validates_attachment_presence :data

    attr_protected :id
  end
end
