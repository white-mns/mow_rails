module ApplicationHelper
    def page_title
        title = "霧戦争5期データ小屋"
        title = @page_title + " | " + title if @page_title
        title
    end

    def p_name_text(e_no, p_name)
        e_no_text = "(" + sprintf("%d",e_no) + ")"
        if p_name then
            p_name.name.html_safe + e_no_text
        else
            e_no_text
        end
    end

    def character_link(e_no)
        if e_no <= 0 then return end

        file_name = sprintf("%04d",e_no)
        link_to " 結果", "http://blacktea.sakura.ne.jp/mistofwar/RESULT/c"+file_name+".html", :target => "_blank"
    end
    
    def character_old_link(last_result_no, e_no, result_no, generate_no)
        if e_no <= 0 then return end
        if result_no ==  last_result_no then return end

        file_name = sprintf("%04d", e_no)
        result_no_text = sprintf("%03d", result_no)
        generate_text  = generate_no > 0 ? "_" + sprintf("%d", generate_no) : ""
        link_to " 過去結果", "http://mistofwar.kitunebi.com/M_o_W_5/"+result_no_text+generate_text+"/RESULT/c"+file_name+".html", :target => "_blank"
    end

    def all_assembly_text(assembly)
        if !assembly then
            return
        end

        assembly_text = ""

        assembly.each do |parts|
          assembly_text += parts.orig_name_name.name + "、" if parts.orig_name_name
        end

        assembly_text.chop()
    end
end
