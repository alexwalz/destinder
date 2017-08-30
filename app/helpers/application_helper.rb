module ApplicationHelper

    def materialize_class_for flash_type
        { success: "notification is-success", error: "notification is-danger", alert: "notification is-info", notice: "notification is-warning" }[flash_type.to_sym] || flash_type.to_s
    end

    def flash_messages(opts = {})
        flash.each do |msg_type, message|
            if message != true 
                message.length > 0
                concat(content_tag(:div, message, class: "#{materialize_class_for(msg_type)}") do
                concat content_tag(:button, '', class: "delete", data: { dismiss: 'alert' })
                concat "     #{message}"
                end) if message.length > 0
             end
        end
        nil
    end

    def calculate_badges(stats, user)
         badges = []

         #variables
         elo = stats["Character Stats"]["ELO"]["ELO"]
         total_kills = stats["Character Stats"]["Kills"].to_f
         total_deaths = stats["Character Stats"]["Deaths"].to_f
         wins = stats["Character Stats"]["games_won"].to_f
         losses = stats["Character Stats"]["games_lost"].to_f
         win_rate = stats["Character Stats"]["Win Rate"].to_f
         pulse_rifle_kills = stats["Character Stats"]["Kill Stats"]["Pulse Rifle"].to_f
         hand_cannon_kills = stats["Character Stats"]["Kill Stats"]["Hand Cannon"].to_f
         scout_rifle_kills = stats["Character Stats"]["Kill Stats"]["Scout Rifle"].to_f
         auto_rifle_kills = stats["Character Stats"]["Kill Stats"]["Auto Rifle"].to_f
         fusion_rifle_kills = stats["Character Stats"]["Kill Stats"]["Fusion Rifle"].to_f
         sniper_rifle_kills = stats["Character Stats"]["Kill Stats"]["Sniper"].to_f
         rocket_launcher_kills = stats["Character Stats"]["Kill Stats"]["Rocket Launcher"].to_f
         machine_gun_kills = stats["Character Stats"]["Kill Stats"]["Machine Gun"].to_f
         sidearm_kills = stats["Character Stats"]["Kill Stats"]["Side Arm"].to_f
         shotgun_kills = stats["Character Stats"]["Kill Stats"]["Shotgun"].to_f
         ability_kills =  stats["Character Stats"]["Kill Stats"]["Ability"].to_f
         melee_kills = stats["Character Stats"]["Kill Stats"]["Melee"].to_f
         revives_performed = stats["Character Stats"]["Kill Stats"]["Revives Performed"].to_f
         revives_received = stats["Character Stats"]["Kill Stats"]["Revives Received"].to_f
         total_revives = revives_performed + revives_received
         avg_kill_distance = stats["Character Stats"]["Kill Stats"]["Average Kill Distance"].to_f
         avg_life_span = stats["Character Stats"]["Kill Stats"]["Average Life Span"].to_f
         super_kills = stats["Character Stats"]["Kill Stats"]["Super"].to_f
         grenade_kills = stats["Character Stats"]["Kill Stats"]["Grenades"].to_f
         precision_kills = stats["Character Stats"]["Kill Stats"]["Precision Kills"].to_f
        

         if !user.nil?
            #streamer

            #elo master

            #beloved if rep > 90%

            #despised id rep < 30%

            #fight forever if spree is > 10
         end

         #weapon type badges
         if (sniper_rifle_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Sniper",
                "badge_description" => "40%+ of total kills with a Sniper Rifle",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         if (pulse_rifle_kills / total_kills).round(2) >= 0.30
            puts "test"
            badges << {
                "badge_name" => "Pulse",
                "badge_description" => "40%+ of total kills with a Pulse Rifle",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         if (scout_rifle_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Scout",
                "badge_description" => "40%+ of total kills with a Scout Rifle",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end
         if (hand_cannon_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Hand Cannon",
                "badge_description" => "40%+ of total kills with a Hand Cannon",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end
         if (fusion_rifle_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Fusion",
                "badge_description" => "40%+ of total kills with a Fusion Rifle",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         if (auto_rifle_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Auto",
                "badge_description" => "40%+ of total kills with an Auto Rifle",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         if (sidearm_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Sidearm",
                "badge_description" => "40%+ of total kills with a Sidearm",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         if (shotgun_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Shotgun",
                "badge_description" => "40%+ of total kills with a Shotgun",
                "badge_icon" => '<i class="fa fa-crosshairs" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;"></i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end


         #medic if revives performed is more than 2x received
         if (revives_performed >= (revives_received * 2))
            badges << {
                "badge_name" => "Medic",
                "badge_description" => "Performed more than 2x revives than received",
                "badge_icon" => '<i class="material-icons" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;">attach_money</i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         #survivor if average life span > 2mins

         
         #ability kills more than 20% of total kills
         if (ability_kills / total_kills).round(2) >= 0.20
            badges << {
                "badge_name" => "Ability",
                "badge_description" => "20%+ of total kills with abilities",
                "badge_icon" => '<i class="material-icons" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;">attach_money</i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         #marksman if precicion kills are more than 35% of total kills
         if (precision_kills / total_kills).round(2) >= 0.40
            badges << {
                "badge_name" => "Marksman",
                "badge_description" => "40%+ of total kills are precision kills",
                "badge_icon" => '<i class="material-icons" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;">attach_money</i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         #camper if avg kill distance > 25
         if (avg_kill_distance) >= 25
            badges << {
                "badge_name" => "Camper",
                "badge_description" => "Kill Distance is greater than 25m",
                "badge_icon" => '<i class="material-icons" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;">attach_money</i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
         end

         #rusher if kill distance < 20
         if avg_kill_distance <= 20
            badges << {
                "badge_name" => "Rusher",
                "badge_description" => "Kill Distance is less than 20m",
                "badge_icon" => '<i class="material-icons" style="float: left; font-size: 14px; line-height: 23px; padding-right: 4px; margin-left: -6px;">attach_money</i>',
                "badge_color" => 'color: #CEAE33; border: 1px #CEAE33 solid;'
            }
            
         end
         badges
    end
    
end
