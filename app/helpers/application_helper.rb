module ApplicationHelper
    def character_link(e_no)
        file_name = sprintf("%04d",e_no)
        link_to " 結果", "http://blacktea.sakura.ne.jp/mistofwar/RESULT/c"+file_name+".html", :target => "_blank"
    end
    
    def character_old_link(last_result_no, e_no, result_no, generate_no)
        if result_no < last_result_no
            file_name = sprintf("%04d", e_no)
            result_no_text = sprintf("%03d", result_no)
            generate_text  = generate_no > 0 ? "_" + sprintf("%d", generate_no) : ""
            link_to " 過去結果", "http://mistofwar.kitunebi.com/M_o_W_5/"+result_no_text+generate_text+"/RESULT/c"+file_name+".html", :target => "_blank"
        end
    end

end
