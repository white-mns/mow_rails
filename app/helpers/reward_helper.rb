module RewardHelper
    def blocks_text(items)
        if !items then return end
        blocks = ""
        items.each do |item|
            blocks += sprintf("%d", item.block_no) + "、"
        end
        blocks.chop
    end

end
