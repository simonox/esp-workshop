wifi.setmode(wifi.STATION);
wifi.sta.config("Attraktor","blafablafa");
gpio.mode(4, gpio.OUTPUT)
srv=net.createServer(net.TCP) 
srv:listen(80,function(conn) 
    conn:on("receive", function(client,request)
        local buf = "";
        local _, _, method, path, vars = string.find(request, "([A-Z]+) (.+)?(.+) HTTP");
        if(method == nil)then 
            _, _, method, path = string.find(request, "([A-Z]+) (.+) HTTP"); 
        end
        local _GET = {}
        if (vars ~= nil)then 
            for k, v in string.gmatch(vars, "(%w+)=(%w+)&*") do 
                _GET[k] = v 
            end 
        end
        buf = buf.."<h1> Hallo, ESP8266 Workshop-Teilnehmer Markus.</h1><form src=\"/\">Schalte LED an GPIO2 <select name=\"pin\" onchange=\"form.submit()\">";
        local _on,_off = "",""
        if(_GET.pin == "ON")then
              _on = " selected=true";
              gpio.write(4, gpio.HIGH);
        elseif(_GET.pin == "OFF")then
              _off = " selected=\"true\"";
              gpio.write(4, gpio.LOW);
        end
        buf = buf.."<option".._on..">ON</opton><option".._off..">OFF</option></select></form>";
        client:send(buf);
        client:close();
        collectgarbage();
    end)
end)
