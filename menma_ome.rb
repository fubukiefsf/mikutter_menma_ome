# -*- coding: utf-8 -*-

Plugin.create(:menma_ome) do
	command(
		:haruiconsaba,
		name: "メンマさんをお祝いする",
		visible: false,
		condition: lambda{|opt| true},
		role: :window
	 ) do |opt|
		Thread.new{
			Post.primary_service.update(:message => "メンマさん(@staring_inferno)御誕生日おめでとうございます！フォロワー外の皆さんもこのツイートをコピーしてお祝いしましょう。 ")
		}
	end
end
