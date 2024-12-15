package action_script
{
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.external.ExternalInterface;
   import flash.ui.Keyboard;
   
   public class CharaSele
   {
      
      private static const ButtonMax:int = 2;
      
      public static const PlayerNumFri:int = 2;
      
      public static const PlayerNumEnm:int = 3;
      
      public static const PlayerMax:int = 1 + PlayerNumFri + PlayerNumEnm;
      
      public static const SkillMax:int = 8;
      
      public static const CharaVarIndexNum:int = 32;
      
      //////////
	  //public static const CharacterMax:int = 256;;
	  public static const CharacterMax:int = 850;
	  //////////
      
      public static const CustomListMax:int = 512;
      
      public static const CharacterTableData:int = 17;
      
      public static const CharacterTableMax:int = 512;
      
      public static var VarTypeCode:int = 0;
      
      public static var VarTypeMid:int = 1;
      
      public static var VarTypeModelPreset:int = 2;
      
      public static var VarTypeUnlockIndex:int = 3;
      
      public static var VarTypeFlag_GK2:int = 4;
      
      public static var VarTypeVoiceIdList:int = 5;
      
      public static var VarTypeDlcKeyFlag:int = 6;
      
      public static var VarTypeDlcKeyFlag2:int = 7;
      
      public static var VarTypeCustomCostume:int = 8;
      
      public static var VarTypeAvatarSlotID:int = 9;
      
      public static var VarTypeAfterTU9Order:int = 10;
      
      public static var VarTypeCustomCostumeEx:int = 11;
      
      public static var VarTypeFlag_CGK:int = 12;
      
      public static var VarTypeCharaSingleUnlockFlag:int = 13;
      
      public static var VarTypeCharaSingleUnlockFlag2:int = 14;
      
      public static var VarTypeNum:int = 15;
      
      public static var InvalidCode:String = "";
      
      public static var AvatarCode:String = "HUM";
      
      public static const ReceiveType_FlagUseCancel:int = 0;
      
      public static const ReceiveType_PlayerFriNum:int = 1;
      
      public static const ReceiveType_PlayerEnmNum:int = 2;
      
      public static const ReceiveType_PartyNpcNum:int = 3;
      
      public static const ReceiveType_FlagSelectAvatar:int = 4;
      
      public static const ReceiveType_FlagLocalBattle:int = 5;
      
      public static const ReceiveType_Flag2pController:int = 6;
      
      public static const ReceiveType_Str2pController:int = 7;
      
      public static const ReceiveType_Time:int = 8;
      
      public static const ReceiveType_CharaNameStr:int = 9;
      
      public static const ReceiveType_NameOption_GK2:int = 10;
      
      public static const ReceiveType_NameOption_CGK:int = 11;
      
      public static const ReceiveType_NameOption_LvText:int = 12;
      
      public static const ReceiveType_NameOption_LvNum:int = 13;
      
      public static const ReceiveType_VariationNameStr:int = 14;
      
      public static const ReceiveType_TarismanHeaderStr:int = 15;
      
      public static const ReceiveType_TarismanNameStr:int = 16;
      
      public static const ReceiveType_ImageStrStart:int = 17;
      
      public static const ReceiveType_ImageStrEnd:int = ReceiveType_ImageStrStart + CharacterMax - 1;
      
      public static const ReceiveType_UnlockVarStart:int = ReceiveType_ImageStrEnd + 1;
      
      public static const ReceiveType_UnlockVarEnd:int = ReceiveType_UnlockVarStart + CharaVarIndexNum * CharacterMax - 1;
      
      public static const ReceiveType_KeyStrL1:int = ReceiveType_UnlockVarEnd + 1;
      
      public static const ReceiveType_KeyStrR1:int = ReceiveType_KeyStrL1 + 1;
      
      public static const ReceiveType_KeyStrL2:int = ReceiveType_KeyStrR1 + 1;
      
      public static const ReceiveType_KeyStrR2:int = ReceiveType_KeyStrL2 + 1;
      
      public static const ReceiveType_KeyStrRU:int = ReceiveType_KeyStrR2 + 1;
      
      public static const ReceiveType_KeyStrRD:int = ReceiveType_KeyStrRU + 1;
      
      public static const ReceiveType_KeyStrRL:int = ReceiveType_KeyStrRD + 1;
      
      public static const ReceiveType_KeyStrRR:int = ReceiveType_KeyStrRL + 1;
      
      public static const ReceiveType_KeyStrSingleLS:int = ReceiveType_KeyStrRR + 1;
      
      public static const ReceiveType_KeyStrSingleRS:int = ReceiveType_KeyStrSingleLS + 1;
      
      public static const ReceiveType_KeyStrSingleU:int = ReceiveType_KeyStrSingleRS + 1;
      
      public static const ReceiveType_KeyStrSingleD:int = ReceiveType_KeyStrSingleU + 1;
      
      public static const ReceiveType_KeyStrSingleL:int = ReceiveType_KeyStrSingleD + 1;
      
      public static const ReceiveType_KeyStrSingleR:int = ReceiveType_KeyStrSingleL + 1;
      
      public static const ReceiveType_SkillNameStrStart:int = ReceiveType_KeyStrSingleR + 1;
      
      public static const ReceiveType_SkillNameStrEnd:int = ReceiveType_SkillNameStrStart + SkillMax - 1;
      
      public static const ReceiveType_ImageStrNpcStart:int = ReceiveType_SkillNameStrEnd + 1;
      
      public static const ReceiveType_ImageStrNpcEnd:int = ReceiveType_ImageStrNpcStart + PlayerNumFri - 1;
      
      public static const ReceiveType_CharaSelectedStart:int = ReceiveType_ImageStrNpcEnd + 1;
      
      public static const ReceiveType_CharaSelectedEnd:int = ReceiveType_CharaSelectedStart + CharacterMax - 1;
      
      public static const ReceiveType_CharaVariationStart:int = ReceiveType_CharaSelectedEnd + 1;
      
      public static const ReceiveType_CharaVariationEnd:int = ReceiveType_CharaVariationStart + CharaVarIndexNum - 1;
      
      public static const ReceiveType_DLCUnlockFlag:int = ReceiveType_CharaVariationEnd + 1;
      
      public static const ReceiveType_DLCUnlockFlag2:int = ReceiveType_DLCUnlockFlag + 1;
      
      public static const ReceiveType_CharaSingleUnlock:int = ReceiveType_DLCUnlockFlag2 + 1;
      
      public static const ReceiveType_CharaSingleUnlock2:int = ReceiveType_CharaSingleUnlock + 1;
      
      public static const ReceiveType_JoyConSingleFlag:int = ReceiveType_CharaSingleUnlock2 + 1;
      
      public static const ReceiveType_WaitLoadNum:int = ReceiveType_JoyConSingleFlag;
      
      public static const ReceiveType_CostumeNum:int = ReceiveType_JoyConSingleFlag + 1;
      
      public static const ReceiveType_CharacterTableStart:int = ReceiveType_CostumeNum + 1;
      
      public static const ReceiveType_CostumeID:int = ReceiveType_CharacterTableStart;
      
      public static const ReceiveType_CID:int = ReceiveType_CostumeID + 1;
      
      public static const ReceiveType_MID:int = ReceiveType_CID + 1;
      
      public static const ReceiveType_PID:int = ReceiveType_MID + 1;
      
      public static const ReceiveType_UnlockNum:int = ReceiveType_PID + 1;
      
      public static const ReceiveType_Gokuaku:int = ReceiveType_UnlockNum + 1;
      
      public static const ReceiveType_SelectVoice1:int = ReceiveType_Gokuaku + 1;
      
      public static const ReceiveType_SelectVoice2:int = ReceiveType_SelectVoice1 + 1;
      
      public static const ReceiveType_DlcKey:int = ReceiveType_SelectVoice2 + 1;
      
      public static const ReceiveType_DlcKey2:int = ReceiveType_DlcKey + 1;
      
      public static const ReceiveType_CustomCostume:int = ReceiveType_DlcKey2 + 1;
      
      public static const ReceiveType_AvatarSlotID:int = ReceiveType_CustomCostume + 1;
      
      public static const ReceiveType_AfterTU9Order:int = ReceiveType_AvatarSlotID + 1;
      
      public static const ReceiveType_CustomCostumeEx:int = ReceiveType_AfterTU9Order + 1;
      
      public static const ReceiveType_ChouGokuaku:int = ReceiveType_CustomCostumeEx + 1;
      
      public static const ReceiveType_CharaSingleUnlockKey:int = ReceiveType_ChouGokuaku + 1;
      
      public static const ReceiveType_CharaSingleUnlockKey2:int = ReceiveType_CharaSingleUnlockKey + 1;
      
      public static const ReceiveType_CharacterTableEnd:int = ReceiveType_CharacterTableStart + CharacterTableMax * CharacterTableData;
      
      public static const ReceiveType_UseCustomList:int = ReceiveType_CharacterTableEnd + 1;
      
      public static const ReceiveType_CustomListNum:int = ReceiveType_UseCustomList + 1;
      
      public static const ReceiveType_CustomList_CID_Start:int = ReceiveType_CustomListNum + 1;
      
      public static const ReceiveType_CustomList_CID_End:int = ReceiveType_CustomList_CID_Start + CustomListMax - 1;
      
      public static const ReceiveType_CustomList_MID_Start:int = ReceiveType_CustomList_CID_End + 1;
      
      public static const ReceiveType_CustomList_MID_End:int = ReceiveType_CustomList_MID_Start + CustomListMax - 1;
      
      public static const ReceiveType_CustomList_PID_Start:int = ReceiveType_CustomList_MID_End + 1;
      
      public static const ReceiveType_CustomList_PID_End:int = ReceiveType_CustomList_PID_Start + CustomListMax - 1;
      
      public static const ReceiveType_CustomList_PartnerJudge_Start:int = ReceiveType_CustomList_PID_End + 1;
      
      public static const ReceiveType_CustomList_PartnerJudge_End:int = ReceiveType_CustomList_PartnerJudge_Start + CustomListMax - 1;
      
      public static const ReceiveType_Num:int = ReceiveType_CustomList_PartnerJudge_End + 1;
      
      private static const SendType_SelectCode:int = 0;
      
      private static const SendType_SelectVariation:int = 1;
      
      private static const SendType_SelectCustomFlag:int = 2;
      
      private static const SendType_SelectMid:int = 3;
      
      private static const SendType_SelectModelPreset:int = 4;
      
      private static const SendType_CurrentPlayerIndex:int = 5;
      
      private static const SendType_RequestCharaInfo:int = 6;
      
      private static const SendType_RequestImageStr:int = 7;
      
      private static const SendType_RequestNewInfo:int = 8;
      
      private static const SendType_RequestUnlock:int = 9;
      
      private static const SendType_RequestDecide:int = 10;
      
      private static const SendType_RequestSetFlagSkill:int = 11;
      
      private static const SendType_SelectUnlockIndex:int = 12;
      
      private static const SendType_RequestPlayVoice:int = 13;
      
      private static const SendType_SelectListIndex:int = 14;
      
      private static const SendType_RequestCountDownSe:int = 15;
      
      private static const SendType_EnableOptionBGM:int = 16;
      
      private static const SendType_AvatarSlotID:int = 17;
      
      private static const IndexNumRow:int = 3;
      
      private static const IndexNumColumn:int = 7;
      
      private static const IndexNumCharaNewIcon:int = 26;
      
      private static const IndexNumCharaVariationNewIcon:int = 20;
      
      private static const PlayerIndexOwn:int = 0;
      
      private static const PlayerIndexFriStart:int = PlayerIndexOwn + 1;
      
      private static const PlayerIndexFriEnd:int = PlayerIndexFriStart + PlayerNumFri - 1;
      
      private static const PlayerIndexEnmStart:int = PlayerIndexFriEnd + 1;
      
      private static const PlayerIndexEnmEnd:int = PlayerIndexEnmStart + PlayerNumEnm - 1;
      
      private static const PlayerTeamTypeOwn:int = 0;
      
      private static const PlayerTeamTypeFri:int = 1;
      
      private static const PlayerTeamTypeEnm:int = 2;
      
      private static const PlayerTeamTypeInvalid:int = -1;
      
      private static var SelectInfoTypeListIndex:int = 0;
      
      private static var SelectInfoTypeVarIndex:int = 1;
      
      private static var SelectInfoTypeNum:int = 2;
      
      public static var CharaListShiftCount:Array = new Array();
       
      
      private var m_callback:Callback = null;
      
      private var m_timeline:MovieClip = null;
      
      private var m_timer:CountDownTimer = null;
      
      private var m_current_player_index:int;
      
      private var m_current_select_index:int;
      
      private var m_select_info:Array;
      
      private var m_select_row:int;
      
      private var m_select_column:int;
      
      private var m_select_column_start:int;
      
      private var m_select_icon_row:int;
      
      private var m_select_icon_column:int;
      
      private var m_select_var:int;
      
      private var m_flag_skill:Boolean;
      
      private var m_chara_face:Array;
      
      private var m_chara_face_npc:Array;
      
      private var m_flag_unlock:Array;
      
      private var m_flag_change_disp:Boolean;
      
      private var m_count_change_disp:int;
      
      private var m_flag_change_player:Boolean;
      
      private var m_flag_change_page:Boolean;
      
      private var m_flag_decide:Boolean;
      
      private var m_flag_exit:Boolean;
      
      private var m_skill_str_width_default:Number;
      
      private var m_skill_str_scalex_default:Number;
      
      private var m_icon_show_wait:Array;
      
      private var m_chara_list:Array;
      
      private var m_chara_list_num:int = 0;
      
      private var m_chara_num_column:int = 0;
      
      private var m_pre_time:int = 99;
      
      private var m_selected_index_list:Array;
      
      private var m_flag_customlist = false;
      
      private var isKeyboardControllerActive:Boolean;
      
      public function CharaSele()
      {
         super();
         trace("[CHARASELE] CharaSele()");
         this.m_callback = new Callback(ReceiveType_Num);
         this.m_timeline = null;
         this.m_timer = new CountDownTimer();
         this.m_current_player_index = 0;
         this.m_current_select_index = 0;
         this.m_select_info = new Array(PlayerMax);
         this.m_selected_index_list = new Array(PlayerMax);
         var i:int = 0;
         var j:int = 0;
         i = 0;
         while(this.m_select_info.length > i)
         {
            this.m_select_info[i] = new Array(SelectInfoTypeNum);
            this.m_select_info[i][SelectInfoTypeListIndex] = 0;
            this.m_select_info[i][SelectInfoTypeVarIndex] = 0;
            i++;
         }
         i = 0;
         while(this.m_selected_index_list.length > i)
         {
            this.m_selected_index_list[i] = -1;
            i++;
         }
         this.m_select_row = 0;
         this.m_select_column = 0;
         this.m_select_column_start = 0;
         this.m_select_icon_row = -1;
         this.m_select_icon_column = -1;
         this.m_select_var = 0;
         this.m_flag_skill = false;
         this.m_flag_change_disp = true;
         this.m_count_change_disp = 0;
         this.m_flag_change_player = false;
         this.m_flag_change_page = false;
         this.m_flag_decide = false;
         this.m_flag_exit = false;
         this.m_skill_str_width_default = 0;
         this.m_skill_str_scalex_default = 1;
         this.m_icon_show_wait = new Array(IndexNumCharaVariationNewIcon);
         i = 0;
         while(i < this.m_icon_show_wait.length)
         {
            this.m_icon_show_wait[i] = 0;
            i++;
         }
         this.m_chara_list = null;
         this.m_chara_list_num = 0;
         this.m_chara_num_column = 0;
         i = 0;
         while(i < CharacterMax)
         {
            this.m_callback.AddCallbackSetUserDataInt(ReceiveType_CharaSelectedStart + i,0);
            i++;
         }
         i = 0;
         while(i < CharaVarIndexNum)
         {
            this.m_callback.AddCallbackSetUserDataInt(ReceiveType_CharaVariationStart + i,0);
            i++;
         }
         try
         {
            ExternalInterface.addCallback("ForcingCancel",this.pushKeyCancel);
            ExternalInterface.addCallback("RefreshIcons",this.ResetIcons);
            return;
         }
         catch(e:Error)
         {
            trace("[CHARASELE] ForcingCancel EXCEPTION");
            return;
         }
      }
      
      public function Initialize(param1:MovieClip) : void
      {
         this.m_timeline = param1;
         this.m_timeline.visible = false;
         this.m_timeline.cha_frame.visible = false;
         this.m_timeline.cha_skill.visible = false;
         this.m_timeline.cha_select.visible = false;
         this.m_timeline.cha_parameter.visible = false;
         this.m_timeline.cha_arrow.visible = false;
         this.m_timeline.cha_select_cur.visible = false;
         this.m_timeline.press2P.visible = false;
         this.m_timer.Initialize(this.m_timeline.timer.nest._CMN_M_B_mc_timer,null);
         this.m_current_player_index = 0;
         this.m_select_row = 0;
         this.m_select_column = 0;
         this.m_select_column_start = 0;
         this.m_select_var = 0;
         this.m_select_icon_row = -1;
         this.m_select_icon_column = -1;
         this.m_flag_skill = false;
         this.m_flag_change_disp = true;
         this.m_count_change_disp = 0;
         this.m_flag_change_player = false;
         this.m_flag_change_page = false;
         this.m_flag_decide = false;
         this.m_skill_str_width_default = this.m_timeline.cha_skill.inact_skill.skill01.sys_skill.width;
         this.m_skill_str_scalex_default = this.m_timeline.cha_skill.inact_skill.skill01.sys_skill.scaleX;
         this.m_pre_time = 99;
         this.m_chara_list = null;
         this.m_chara_list_num = 0;
         this.m_chara_num_column = 0;
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.waitCharaInfo);
      }
      
      private function waitCharaInfo(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:* = undefined;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Array = null;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = false;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         if(!this.m_callback)
         {
            return;
         }
         if(!this.m_callback.GetUserDataValidFlag(ReceiveType_DLCUnlockFlag))
         {
            return;
         }
         if(!this.m_callback.GetUserDataValidFlag(ReceiveType_DLCUnlockFlag2))
         {
            return;
         }
         if(!this.m_callback.GetUserDataValidFlag(ReceiveType_UseCustomList))
         {
            return;
         }
         var _loc5_:int = this.m_callback.GetUserDataInt(ReceiveType_UseCustomList);
         if(_loc5_)
         {
            this.m_flag_customlist = true;
            if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CustomListNum))
            {
               return;
            }
            _loc6_ = this.m_callback.GetUserDataInt(ReceiveType_CustomListNum);
            _loc2_ = 0;
            while(_loc2_ < _loc6_)
            {
               if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CustomList_CID_Start + _loc2_))
               {
                  return;
               }
               if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CustomList_MID_Start + _loc2_))
               {
                  return;
               }
               if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CustomList_PID_Start + _loc2_))
               {
                  return;
               }
               if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CustomList_PartnerJudge_Start + _loc2_))
               {
                  return;
               }
               _loc2_++;
            }
            _loc7_ = this.m_callback.GetUserDataInt(ReceiveType_DLCUnlockFlag);
            _loc8_ = this.m_callback.GetUserDataInt(ReceiveType_DLCUnlockFlag2);
            _loc9_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlock);
            _loc10_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlock2);
            if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CostumeNum))
            {
               return;
            }
            _loc11_ = this.m_callback.GetUserDataInt(ReceiveType_CostumeNum);
            _loc12_ = ReceiveType_CharacterTableStart;
            while(_loc12_ < ReceiveType_CharacterTableStart + _loc11_ * CharacterTableData)
            {
               if(!this.m_callback.GetUserDataValidFlag(_loc12_))
               {
                  return;
               }
               _loc12_++;
            }
            this.m_chara_list = this.recieveList(_loc7_,_loc8_,_loc9_,_loc10_);
            if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CharacterTableEnd + 1))
            {
               return;
            }
            _loc13_ = new Array();
            _loc2_ = 0;
            while(_loc2_ < _loc6_)
            {
               _loc15_ = this.m_callback.GetUserDataString(ReceiveType_CustomList_CID_Start + _loc2_);
               _loc16_ = this.m_callback.GetUserDataInt(ReceiveType_CustomList_MID_Start + _loc2_);
               _loc17_ = this.m_callback.GetUserDataInt(ReceiveType_CustomList_PID_Start + _loc2_);
               _loc18_ = this.m_callback.GetUserDataInt(ReceiveType_CustomList_PartnerJudge_Start + _loc2_);
               _loc13_.push([_loc15_,_loc16_,_loc17_,_loc18_]);
               _loc2_++;
            }
            _loc2_ = 0;
            while(_loc2_ < this.m_chara_list.length)
            {
               _loc19_ = this.m_chara_list[_loc2_];
               _loc20_ = true;
               _loc3_ = 0;
               while(_loc3_ < _loc19_.length)
               {
                  _loc21_ = true;
                  _loc4_ = 0;
                  while(_loc4_ < _loc13_.length)
                  {
                     if(_loc19_[_loc3_][0] == _loc13_[_loc4_][0])
                     {
                        if(_loc13_[_loc4_][1] == -1 || _loc19_[_loc3_][1] == _loc13_[_loc4_][1])
                        {
                           if(_loc13_[_loc4_][2] == -1 || _loc19_[_loc3_][2] == _loc13_[_loc4_][2])
                           {
                              if(!(_loc13_[_loc4_][3] != 1 && _loc19_[_loc3_][VarTypeCustomCostume]))
                              {
                                 _loc21_ = false;
                                 _loc20_ = false;
                              }
                           }
                        }
                     }
                     _loc4_++;
                  }
                  if(_loc21_)
                  {
                     _loc19_.splice(_loc3_,1);
                     _loc3_--;
                  }
                  _loc3_++;
               }
               if(_loc20_)
               {
                  this.m_chara_list.splice(_loc2_,1);
                  _loc2_--;
               }
               _loc2_++;
            }
            _loc14_ = 3 - this.m_chara_list.length % 3;
            _loc2_ = 0;
            while(_loc14_ > _loc2_)
            {
               this.m_chara_list.concat([[["",0,0,0]]]);
               _loc2_++;
            }
         }
         else
         {
            _loc22_ = this.m_callback.GetUserDataInt(ReceiveType_DLCUnlockFlag);
            _loc23_ = this.m_callback.GetUserDataInt(ReceiveType_DLCUnlockFlag2);
            _loc24_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlock);
            _loc25_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlock2);
            if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CostumeNum))
            {
               return;
            }
            _loc26_ = this.m_callback.GetUserDataInt(ReceiveType_CostumeNum);
            _loc27_ = ReceiveType_CharacterTableStart;
            while(_loc27_ < ReceiveType_CharacterTableStart + _loc26_ * CharacterTableData)
            {
               if(!this.m_callback.GetUserDataValidFlag(_loc27_))
               {
                  return;
               }
               _loc27_++;
            }
            this.m_chara_list = this.recieveList(_loc22_,_loc23_,_loc24_,_loc25_);
            if(!this.m_callback.GetUserDataValidFlag(ReceiveType_CharacterTableEnd + 1))
            {
               return;
            }
         }
         this.m_chara_list_num = this.m_chara_list.length;
         this.m_chara_num_column = (this.m_chara_list_num - 1) / IndexNumRow + 1;
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitCharaInfo);
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.requestUnlock);
      }
      
      private function recieveList(param1:int, param2:int, param3:int, param4:int) : Array
      {
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Array = null;
         var _loc13_:Array = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Array = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:Array = null;
         var _loc31_:Boolean = false;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = this.m_callback.GetUserDataInt(ReceiveType_CostumeNum);
		 
		 //////////
		 var map_cc:Array = new Array();
		 var main_cac_index:int = -1; // Added int 1.10
		 var dummy_goks:Array = new Array(); // Added in 1.10
		 var other_cacs:Array = new Array(); // Added in 1.10
		 //////////
		 
         _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            _loc12_ = new Array();
            while(true)
            {
               _loc13_ = new Array();
               _loc14_ = this.m_callback.GetUserDataString(ReceiveType_CID + _loc7_ * CharacterTableData);
               _loc15_ = this.m_callback.GetUserDataInt(ReceiveType_MID + _loc7_ * CharacterTableData);
               _loc16_ = this.m_callback.GetUserDataInt(ReceiveType_PID + _loc7_ * CharacterTableData);
               _loc17_ = this.m_callback.GetUserDataInt(ReceiveType_UnlockNum + _loc7_ * CharacterTableData);
               _loc18_ = this.m_callback.GetUserDataInt(ReceiveType_Gokuaku + _loc7_ * CharacterTableData);
               _loc19_ = new Array();
               _loc19_.push(this.m_callback.GetUserDataInt(ReceiveType_SelectVoice1 + _loc7_ * CharacterTableData));
               _loc19_.push(this.m_callback.GetUserDataInt(ReceiveType_SelectVoice2 + _loc7_ * CharacterTableData));
               _loc20_ = this.m_callback.GetUserDataInt(ReceiveType_DlcKey + _loc7_ * CharacterTableData);
               _loc21_ = this.m_callback.GetUserDataInt(ReceiveType_DlcKey2 + _loc7_ * CharacterTableData);
               _loc22_ = this.m_callback.GetUserDataInt(ReceiveType_CustomCostume + _loc7_ * CharacterTableData);
               _loc23_ = this.m_callback.GetUserDataInt(ReceiveType_AvatarSlotID + _loc7_ * CharacterTableData);
               _loc24_ = this.m_callback.GetUserDataInt(ReceiveType_AfterTU9Order + _loc7_ * CharacterTableData);
               _loc25_ = this.m_callback.GetUserDataInt(ReceiveType_CustomCostumeEx + _loc7_ * CharacterTableData);
               _loc26_ = this.m_callback.GetUserDataInt(ReceiveType_ChouGokuaku + _loc7_ * CharacterTableData);
               _loc27_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlockKey + _loc7_ * CharacterTableData);
               _loc28_ = this.m_callback.GetUserDataInt(ReceiveType_CharaSingleUnlockKey2 + _loc7_ * CharacterTableData);
               _loc13_.push(_loc14_);
               _loc13_.push(_loc15_);
               _loc13_.push(_loc16_);
               _loc13_.push(_loc17_);
               _loc13_.push(_loc18_);
               _loc13_.push(_loc19_);
               _loc13_.push(_loc20_);
               _loc13_.push(_loc21_);
               _loc13_.push(_loc22_);
               _loc13_.push(_loc23_);
               _loc13_.push(_loc24_);
               _loc13_.push(_loc25_);
               _loc13_.push(_loc26_);
               _loc13_.push(_loc27_);
               _loc13_.push(_loc28_);
               _loc12_.push(_loc13_);
			   
			   
			   //////////			  
			   
			   if (main_cac_index < 0) // 1.10
			   {
			       main_cac_index = _loc23_; // AvatarSlotID
			   }
			   
			   if (_loc22_) // CustomCostume
			   {
			       var first:Array = _loc12_[0];
				   var key:String = first[0] + first[1].toString();
				   map_cc[key] = _loc13_;
				   
				   // In 1.15 "CustomCostumeEx" was added (these are the ones like Trunks,GK4, etc that get unlocked through keys)
				   // The game will set the regular CustomCostume to 0 if it is locked, and to 1 if it is unlocked
				   // Because the data for ex is only relevant when both CustomCostume and CustomeCostumeEx are 1, we don't need to change the implementation				   		   
			   }			   
			   else
			   {
				   // 1.10
				   if (_loc20_ < 0 && _loc14_ == "GOK") // DlcKey < 0 && CID == "GOK"
				   {
				       dummy_goks.push(_loc13_);					   
				   }
				   else if (_loc23_ != main_cac_index && _loc14_ == "HUM") // AvatarSlotID != main_cac_index && CID == "GOK"
				   {
				       other_cacs.push(_loc13_);
				   }
			   }	   
			  
			   //////////
			   
               _loc29_ = this.m_callback.GetUserDataInt(ReceiveType_CostumeID + (_loc7_ + 1) * CharacterTableData);
               if(_loc29_ == 0)
               {
                  break;
               }
               _loc7_++;
            }
            _loc5_.push(_loc12_);
            _loc7_++;
         }
		 
		 //////////
		 // XV2Patcher slots 		 
		 var i:int = 0;
		 var SlotsString:String = XV2Patcher.GetSlotsData();
		 
		 _loc5_ = new Array(); 	
		 
		 // Loop for xv2patcher
		 while (i < SlotsString.length)
		 {
			_loc12_ = new Array();
			
			if (SlotsString.substr(i, 1) != "{")
			{
				trace("Format error 1\n");
				return null;
			}
			
			i++;
			
			while (SlotsString.substr(i, 1) == "[")
			{
				i++;				
				_loc13_ = new Array();
				
				var pos:int = SlotsString.indexOf("]", i);
				if (pos == -1)
				{
					trace("Format error 2\n");
					return null;
				}
				
				var costume:String = SlotsString.substring(i,pos);
				var fields:Array = costume.split(",");
				
				if (fields.length != 10)
				{
					trace("Invalid number of elements: " + fields.length);
					return null;
				}
				
				_loc13_.push(fields[0]); // Code
				_loc13_.push(int(fields[1])); // Mid
				_loc13_.push(int(fields[2])); // Model preset
				_loc13_.push(int(fields[3])); // Unlock index
				_loc13_.push(int(fields[4])); // Flag GK2				
				_loc13_.push(new Array(int(fields[5]), int(fields[6]))); // Voices id list
				_loc13_.push(int(fields[7])); // Dlc key flag
				_loc13_.push(int(fields[8])); // Dlc key 2 (aka, upper 32 bits) Added in 1.16, started to being in use in 1.18
				_loc13_.push(0); // Custom costume flag
				_loc13_.push(main_cac_index); // Avatar ID (new in 1.10)
				_loc13_.push(-1); // After TU9 Order, whatever this shit is. It was added in 1.14, let's set it to -1...
				_loc13_.push(0); // Custom costume ex
				_loc13_.push(int(fields[9])); // Flag CGK2 (1.22)
				// 1.23: CharaSingleUnlockKey && CharaSingleUnlockKey2. All values have been observed as 0 by dumping them inb this script
				// In any case, they don't seem to be related to the CST fields unk_28, unk_2C or unk_34
				_loc13_.push(0);
				_loc13_.push(0);
								
				i = pos+1;
				_loc12_.push(_loc13_);
			}
			
			if (_loc12_.length > 0)
			{
				var first:Array = _loc12_[0];
				var key:String = first[0] + first[1].toString();
				var cc:Array = map_cc[key];
								
				if (cc != undefined)
				{
					_loc12_.push(cc);
				}				
			}
			
			if (SlotsString.substr(i, 1) != "}")
			{
				trace("Format error 3\n");
				return null;
			}
			
			i++;
			_loc5_.push(_loc12_);
		 }
		 
		 // 1.10: insert the dummy goks now		 
		 for (i = 0; i < dummy_goks.length; i++)
		 {
	         var dummy_slot:Array = new Array();
			 dummy_slot.push(dummy_goks[i]);
			 _loc5_.push(dummy_slot);
		 }	

		 // 1.10: insert the other cacs now
		 var cac_slot:Array;
		 var current_cac:int = -1;		 
		 for (i = 0; i < other_cacs.length; i++)
		 {
	         if (other_cacs[i][9] != current_cac) // current avatar id
			 {
                 current_cac = other_cacs[i][9];
				 
				 if (i != 0)
                 {
					_loc5_.push(cac_slot); // put previous
				 }
				 
				 cac_slot = new Array();
			 }
			 
			 cac_slot.push(other_cacs[i]);
			 
			 if (i == other_cacs.length-1)
			 {
				_loc5_.push(cac_slot);
			 }
		 }
		 
		 //////////	
		 
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc7_ = 0;
         while(_loc7_ < _loc5_.length)
         {
            _loc30_ = _loc5_[_loc7_];
            _loc31_ = true;
            _loc32_ = 0;
            while(_loc32_ < _loc30_.length)
            {
               if((param1 & _loc30_[_loc32_][VarTypeDlcKeyFlag]) == 0 && (param2 & _loc30_[_loc32_][VarTypeDlcKeyFlag2]) == 0 && (param3 & _loc30_[_loc32_][VarTypeCharaSingleUnlockFlag]) == 0 && (param4 & _loc30_[_loc32_][VarTypeCharaSingleUnlockFlag2]) == 0)
               {
                  trace("delete chara:" + _loc7_ + "," + _loc32_ + "," + _loc30_[_loc32_][VarTypeCode]);
                  _loc30_.splice(_loc32_,1);
                  _loc32_--;
               }
               else
               {
                  _loc31_ = false;
               }
               _loc32_++;
            }
            if(_loc31_)
            {
               _loc5_.splice(_loc7_,1);
               _loc7_--;
            }
            else
            {
               _loc33_ = _loc9_;
               _loc34_ = _loc30_[0][VarTypeAfterTU9Order];
               if(_loc34_ == -1)
               {
                  _loc33_ = _loc9_;
               }
               else
               {
                  _loc33_ = _loc34_ + 122;
                  _loc9_--;
               }
               CharaListShiftCount.push(_loc33_);
            }
            _loc7_++;
            _loc9_++;
         }
         var _loc10_:int = 3 - _loc5_.length % 3;
         _loc7_ = 0;
         while(_loc10_ > _loc7_)
         {
            _loc5_.concat([[[InvalidCode,0,0,0]]]);
            _loc7_++;
         }
         return _loc5_;
      }
      
      private function requestUnlock(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Array = null;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(CharacterMax > _loc2_)
         {
            _loc4_ = false;
            _loc5_ = this.getCharaInfo(_loc2_);
            if(!_loc5_)
            {
               _loc3_ = 0;
               while(CharaVarIndexNum > _loc3_)
               {
                  this.SetUserDataInt(ReceiveType_UnlockVarStart + _loc2_ * CharaVarIndexNum + _loc3_,0);
                  _loc3_++;
               }
               this.SetUserDataString(ReceiveType_ImageStrStart + _loc2_,"");
            }
            else if(_loc5_.length <= _loc3_)
            {
               _loc3_ = 0;
               while(CharaVarIndexNum > _loc3_)
               {
                  this.SetUserDataInt(ReceiveType_UnlockVarStart + _loc2_ * CharaVarIndexNum + _loc3_,0);
                  _loc3_++;
               }
               this.SetUserDataString(ReceiveType_ImageStrStart + _loc2_,"");
            }
            else
            {
               _loc6_ = false;
               _loc3_ = CharaVarIndexNum - 1;
               while(0 <= _loc3_)
               {
                  _loc7_ = _loc2_ * CharaVarIndexNum + _loc3_;
                  if(_loc5_.length <= _loc3_)
                  {
                     this.SetUserDataInt(ReceiveType_UnlockVarStart + _loc7_,0);
                  }
                  else
                  {
                     _loc8_ = _loc5_[_loc3_];
                     _loc9_ = _loc8_[VarTypeCode];
                     if(_loc9_ == InvalidCode)
                     {
                        this.SetUserDataInt(ReceiveType_UnlockVarStart + _loc7_,0);
                     }
                     else
                     {
                        _loc10_ = _loc8_[VarTypeMid];
                        _loc4_ = true;
                        if(!this.m_callback.GetUserDataValidFlag(ReceiveType_UnlockVarStart + _loc7_))
                        {
                           _loc11_ = _loc8_[VarTypeUnlockIndex];
                           _loc12_ = _loc8_[VarTypeAvatarSlotID];
                           _loc13_ = _loc8_[VarTypeCustomCostume];
                           _loc14_ = _loc3_;
                           this.m_callback.CallbackUserData("user",SendType_AvatarSlotID,_loc12_);
                           this.m_callback.CallbackUserDataString("user",SendType_SelectCode,_loc9_);
                           this.m_callback.CallbackUserData("user",SendType_SelectUnlockIndex,_loc11_);
                           this.m_callback.CallbackUserData("user",SendType_SelectVariation,_loc14_);
                           this.m_callback.CallbackUserData("user",SendType_SelectCustomFlag,_loc13_);
                           this.m_callback.CallbackUserData("user",SendType_SelectMid,_loc10_);
                           this.m_callback.CallbackUserData("user",SendType_RequestUnlock,_loc7_);
                           this.m_callback.CallbackUserData("user",SendType_RequestImageStr,_loc2_);
                           this.m_callback.CallbackUserData("user",SendType_RequestNewInfo,CharaListShiftCount[_loc2_]);
                        }
                     }
                  }
                  _loc3_--;
               }
               if(!_loc4_)
               {
                  this.SetUserDataString(ReceiveType_ImageStrStart + _loc2_,"");
               }
            }
            _loc2_++;
         }
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.requestUnlock);
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.waitUnlock);
      }
      
      //////////
	  // Decompiler failed with this function (produced bad result), so here it is manually decompiled from version 1.11
	  // If the function doesn't change in the future, just carry it over the next version
	  //////////
	  // Decompiled (manual) version
	  
	  private function waitUnlock(param1:Event) : void
	  {
		 var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
		 
		 for (; _loc3_ < m_select_info.length; _loc3_++)
		 {
			_loc5_ = -1;
            _loc2_ = 0;
			
			for (; _loc2_ < CharacterMax; _loc2_++)
			{
			   _loc6_ = PlayerIndexOwn + _loc2_;
			   if (!m_callback.GetUserDataValidFlag(ReceiveType_FlagSelectAvatar))
				  return;
				  
			   _loc7_ = m_callback.GetUserDataInt(ReceiveType_FlagSelectAvatar); 
			    if(m_flag_customlist)
			    {
				   _loc7_ = 1;
				   _loc5_ = 0;
			    }
				
				if (_loc3_ == PlayerIndexOwn || _loc7_ || !checkAvatar(_loc6_))
				{
				   if (checkUnlockChara(_loc6_))
				   {
				      _loc5_ = _loc6_;
					  break;
                   }					  
				}
			}
			
			if (_loc5_ < 0)
			   return;
			   
			m_select_row = calcIconIndexRow(_loc5_);
			m_select_column = calcIconIndexColumn(_loc5_);
			m_current_player_index = _loc3_;
			m_select_var = 0;
			setSelectChara();
		 }
		 
		 m_current_player_index = PlayerIndexOwn;
		 var _loc4_:* = m_select_info[m_current_player_index][SelectInfoTypeListIndex];
		 m_select_row = calcIconIndexRow(_loc4_);
		 m_select_column = calcIconIndexColumn(_loc4_);
		 m_select_var = m_select_info[m_current_player_index][SelectInfoTypeVarIndex];
		 sendCharaInfo(m_current_player_index);
		 m_timeline.stage.removeEventListener(Event.ENTER_FRAME,waitUnlock);
		 m_timeline.stage.addEventListener(Event.ENTER_FRAME,waitStart);
	  }
      
      ////////// Original auto decompiled function (fail)
	  /*private function waitUnlock(param1:Event) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc3_ = 0;
         loop0:
         while(true)
         {
            if(this.m_select_info.length <= _loc3_)
            {
               this.m_current_player_index = PlayerIndexOwn;
               var _loc4_:* = this.m_select_info[this.m_current_player_index][SelectInfoTypeListIndex];
               this.m_select_row = this.calcIconIndexRow(_loc4_);
               this.m_select_column = this.calcIconIndexColumn(_loc4_);
               this.m_select_var = this.m_select_info[this.m_current_player_index][SelectInfoTypeVarIndex];
               this.sendCharaInfo(this.m_current_player_index);
               this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitUnlock);
               this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.waitStart);
               return;
            }
            _loc5_ = -1;
            _loc2_ = 0;
            while(true)
            {
               if(CharacterMax > _loc2_)
               {
                  _loc6_ = PlayerIndexOwn + _loc2_;
                  _loc6_ = _loc6_ % CharacterMax;
                  if(!this.m_callback.GetUserDataValidFlag(ReceiveType_FlagSelectAvatar))
                  {
                     break;
                  }
                  _loc7_ = this.m_callback.GetUserDataInt(ReceiveType_FlagSelectAvatar);
                  if(this.m_flag_customlist)
                  {
                     _loc7_ = 1;
                     _loc5_ = 0;
                  }
                  if(_loc3_ != PlayerIndexOwn)
                  {
                     if(!_loc7_)
                     {
                        if(this.checkAvatar(_loc6_))
                        {
                           continue;
                        }
                     }
                  }
                  if(!this.checkUnlockChara(_loc6_))
                  {
                     continue;
                  }
                  _loc5_ = _loc6_;
               }
               if(_loc5_ < 0)
               {
                  break loop0;
               }
               this.m_select_row = this.calcIconIndexRow(_loc5_);
               this.m_select_column = this.calcIconIndexColumn(_loc5_);
               this.m_current_player_index = _loc3_;
               this.m_select_var = 0;
               this.setSelectChara();
               _loc3_++;
               continue loop0;
            }
            return;
         }
      }*/
      
      private function waitStart(param1:Event) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(ReceiveType_WaitLoadNum > _loc2_)
         {
            if(!this.m_callback.GetUserDataValidFlag(_loc2_))
            {
               return;
            }
            _loc2_++;
         }
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitStart);
         this.startMain();
      }
      
      private function ResetIcons() : void
      {
         var _loc1_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrL2);
         var _loc2_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrR2);
         var _loc3_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRU);
         var _loc4_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRD);
         var _loc5_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRL);
         var _loc6_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRR);
         this.isKeyboardControllerActive = _loc1_.indexOf("src=\"kb") > 0;
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com01.htmlText = _loc2_;
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com02.htmlText = _loc3_;
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill01.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com01.htmlText = _loc2_;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com02.htmlText = _loc5_;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill02.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com01.htmlText = _loc2_;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com02.htmlText = _loc6_;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill03.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com01.htmlText = _loc2_;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com02.htmlText = _loc4_;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill04.sys_01.visible = false;
         if(this.isKeyboardControllerActive)
         {
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com02.htmlText = _loc3_;
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com03.htmlText = "";
            this.m_timeline.cha_skill.inact_skill.skill05.sys_01.visible = false;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com02.htmlText = _loc5_;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com03.htmlText = "";
            this.m_timeline.cha_skill.inact_skill.skill06.sys_01.visible = false;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com02.htmlText = _loc4_;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com03.htmlText = "";
            this.m_timeline.cha_skill.inact_skill.skill07.sys_01.visible = false;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com02.htmlText = _loc6_;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com03.htmlText = "";
            this.m_timeline.cha_skill.inact_skill.skill08.sys_01.visible = false;
         }
         else
         {
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com02.htmlText = _loc2_;
            this.m_timeline.cha_skill.inact_skill.skill05.sys_com03.htmlText = _loc3_;
            this.m_timeline.cha_skill.inact_skill.skill05.sys_01.visible = true;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com02.htmlText = _loc2_;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_com03.htmlText = _loc5_;
            this.m_timeline.cha_skill.inact_skill.skill06.sys_01.visible = true;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com02.htmlText = _loc2_;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_com03.htmlText = _loc4_;
            this.m_timeline.cha_skill.inact_skill.skill07.sys_01.visible = true;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com01.htmlText = _loc1_;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com02.htmlText = _loc2_;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_com03.htmlText = _loc6_;
            this.m_timeline.cha_skill.inact_skill.skill08.sys_01.visible = true;
         }
         var _loc7_:String = this.m_callback.GetUserDataString(ReceiveType_TarismanHeaderStr);
         this.m_timeline.cha_skill.inact_skill.skill09.sys_com01.htmlText = _loc7_;
         this.m_timeline.cha_parameter.nest_clothes.sys_clothes.htmlText = "";
         var _loc8_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrL1);
         this.m_timeline.cha_parameter.nest_clothes.sys_l.htmlText = _loc8_;
         var _loc9_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrR1);
         this.m_timeline.cha_parameter.nest_clothes.sys_r.htmlText = _loc9_;
      }
      
      private function startMain() : void
      {
         var _loc25_:int = 0;
         var _loc26_:MovieClip = null;
         var _loc27_:int = 0;
         var _loc28_:MovieClip = null;
         var _loc29_:MovieClip = null;
         var _loc30_:Array = null;
         var _loc31_:Bitmap = null;
         var _loc32_:String = null;
         var _loc33_:String = null;
         var _loc34_:String = null;
         var _loc35_:Bitmap = null;
         var _loc36_:MovieClip = null;
         var _loc37_:int = 0;
         var _loc38_:MovieClip = null;
         var _loc1_:int = 0;
         this.m_timeline.visible = true;
         this.m_timeline.cha_frame.cmn_CMN_M_frame.visible = true;
         this.m_timeline.cha_skill.visible = false;
         this.m_timeline.cha_select.visible = true;
         this.m_timeline.cha_parameter.visible = true;
         this.m_timeline.cha_arrow.visible = true;
         var _loc2_:* = this.m_timeline.cha_select;
         _loc2_.chara_icn_set00.visible = false;
         var _loc3_:int = (this.m_chara_list_num - 1) / IndexNumRow + 1;
         var _loc4_:int = 1;
         while(_loc4_ < 9)
         {
            if(_loc4_ <= _loc3_)
            {
               _loc2_["chara_icn_set0" + _loc4_].visible = true;
            }
            else
            {
               _loc2_["chara_icn_set0" + _loc4_].visible = false;
            }
            _loc4_++;
         }
         var _loc5_:int = (this.m_chara_list_num - 1) % IndexNumRow + 1;
         _loc3_ = Math.min(_loc3_,8);
         var _loc6_:* = _loc2_["chara_icn_set0" + _loc3_];
         var _loc7_:int = 1;
         while(_loc7_ < 4)
         {
            if(_loc7_ <= _loc5_)
            {
               _loc6_["nest_charaselect0" + _loc7_].visible = true;
            }
            else
            {
               _loc6_["nest_charaselect0" + _loc7_].visible = false;
            }
            _loc7_++;
         }
         var _loc8_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerFriNum);
         var _loc9_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerEnmNum);
         if(_loc8_ == 0 && _loc9_ == 0)
         {
            this.m_timeline.cha_parameter.nest_ready.visible = false;
            this.m_timeline.cha_parameter.ready_base.visible = false;
            this.m_timeline.cha_parameter.ready_base.vs.visible = false;
         }
         else
         {
            this.m_timeline.cha_parameter.nest_ready.visible = true;
            this.m_timeline.cha_parameter.ready_base.visible = true;
            if(_loc9_ > 0)
            {
               this.m_timeline.cha_parameter.ready_base.vs.visible = true;
            }
            else
            {
               this.m_timeline.cha_parameter.ready_base.vs.visible = false;
            }
         }
         var _loc10_:int = this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle);
         if(_loc10_)
         {
            this.m_timeline.cha_parameter.icon_1P.play();
            this.m_timeline.cha_parameter.icon_1P.visible = true;
            this.m_timeline.cha_parameter.icon_2P.play();
            this.m_timeline.cha_parameter.icon_2P.visible = false;
         }
         else
         {
            this.m_timeline.cha_parameter.icon_1P.stop();
            this.m_timeline.cha_parameter.icon_1P.visible = false;
            this.m_timeline.cha_parameter.icon_2P.stop();
            this.m_timeline.cha_parameter.icon_2P.visible = false;
            this.m_timeline.press2P.stop();
            this.m_timeline.press2P.visible = false;
         }
         var _loc11_:MovieClip = this.getReadyIconMc(0);
         _loc11_.visible = true;
         _loc1_ = 0;
         while(PlayerNumFri > _loc1_)
         {
            _loc25_ = PlayerIndexFriStart + _loc1_;
            _loc26_ = this.getReadyIconMc(_loc25_);
            if(_loc1_ < _loc8_)
            {
               _loc26_.visible = true;
            }
            else
            {
               _loc26_.visible = false;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(PlayerNumEnm > _loc1_)
         {
            _loc27_ = PlayerIndexEnmStart + _loc1_;
            _loc28_ = this.getReadyIconMc(_loc27_);
            if(_loc1_ < _loc9_)
            {
               _loc28_.visible = true;
            }
            else
            {
               _loc28_.visible = false;
            }
            _loc1_++;
         }
         this.m_timeline.cha_parameter.sys_charaName.sys_charaName.htmlText = "";
         if(this.m_timeline.cha_parameter.sys_skill_header)
         {
            this.m_timeline.cha_parameter.sys_skill_header.sys_skill_header.htmlText = "";
         }
         this.setSelectChara();
         var _loc12_:MovieClip = this.m_timeline.cha_new;
         _loc1_ = 0;
         while(IndexNumCharaNewIcon > _loc1_)
         {
            _loc29_ = _loc12_["chara_new_" + _loc1_];
            if(!this.checkCharaNewIconVisible(_loc1_))
            {
               _loc29_.visible = false;
            }
            _loc1_++;
         }
         this.m_chara_face = new Array(this.m_chara_list_num);
         _loc1_ = 0;
         while(this.m_chara_list_num > _loc1_)
         {
            _loc30_ = this.getCharaInfo(_loc1_);
            _loc31_ = null;
            if(_loc30_ && _loc30_.length > 0)
            {
               _loc32_ = _loc30_[0][VarTypeCode];
               _loc33_ = this.m_callback.GetUserDataString(ReceiveType_ImageStrStart + _loc1_);
               if(_loc32_ != InvalidCode)
               {
                  _loc31_ = new Bitmap(null);
                  IggyFunctions.setTextureForBitmap(_loc31_,_loc33_);
                  _loc31_.scaleX = 256 / _loc31_.width;
                  _loc31_.scaleY = 128 / _loc31_.height;
               }
            }
            this.m_chara_face[_loc1_] = _loc31_;
            _loc1_++;
         }
         this.m_chara_face_npc = new Array(PlayerNumFri);
         _loc1_ = 0;
         while(PlayerNumFri > _loc1_)
         {
            _loc34_ = this.m_callback.GetUserDataString(ReceiveType_ImageStrNpcStart + _loc1_);
            _loc35_ = new Bitmap(null);
            IggyFunctions.setTextureForBitmap(_loc35_,_loc34_);
            _loc35_.scaleX = 256 / _loc35_.width;
            _loc35_.scaleY = 128 / _loc35_.height;
            this.m_chara_face_npc[_loc1_] = _loc35_;
            _loc1_++;
         }
         var _loc13_:MovieClip = this.m_timeline.cha_select_cur;
         _loc13_.icn_lock.visible = false;
         this.ResetIcons();
         var _loc14_:int = this.m_callback.GetUserDataInt(ReceiveType_JoyConSingleFlag);
         var _loc15_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrL2);
         var _loc16_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrR2);
         var _loc17_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRU);
         var _loc18_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRD);
         var _loc19_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRL);
         var _loc20_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrRR);
         if(_loc14_ == 1)
         {
            _loc15_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleLS);
            _loc16_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleRS);
            _loc17_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleU);
            _loc18_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleD);
            _loc19_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleL);
            _loc20_ = this.m_callback.GetUserDataString(ReceiveType_KeyStrSingleR);
         }
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com01.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com02.htmlText = _loc17_;
         this.m_timeline.cha_skill.inact_skill.skill01.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill01.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com01.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com02.htmlText = _loc19_;
         this.m_timeline.cha_skill.inact_skill.skill02.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill02.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com01.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com02.htmlText = _loc20_;
         this.m_timeline.cha_skill.inact_skill.skill03.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill03.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com01.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com02.htmlText = _loc18_;
         this.m_timeline.cha_skill.inact_skill.skill04.sys_com03.htmlText = "";
         this.m_timeline.cha_skill.inact_skill.skill04.sys_01.visible = false;
         this.m_timeline.cha_skill.inact_skill.skill05.sys_com01.htmlText = _loc15_;
         this.m_timeline.cha_skill.inact_skill.skill05.sys_com02.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill05.sys_com03.htmlText = _loc17_;
         this.m_timeline.cha_skill.inact_skill.skill06.sys_com01.htmlText = _loc15_;
         this.m_timeline.cha_skill.inact_skill.skill06.sys_com02.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill06.sys_com03.htmlText = _loc19_;
         this.m_timeline.cha_skill.inact_skill.skill07.sys_com01.htmlText = _loc15_;
         this.m_timeline.cha_skill.inact_skill.skill07.sys_com02.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill07.sys_com03.htmlText = _loc18_;
         this.m_timeline.cha_skill.inact_skill.skill08.sys_com01.htmlText = _loc15_;
         this.m_timeline.cha_skill.inact_skill.skill08.sys_com02.htmlText = _loc16_;
         this.m_timeline.cha_skill.inact_skill.skill08.sys_com03.htmlText = _loc20_;
         var _loc21_:String = this.m_callback.GetUserDataString(ReceiveType_TarismanHeaderStr);
         this.m_timeline.cha_skill.inact_skill.skill09.sys_com01.htmlText = _loc21_;
         this.m_timeline.cha_parameter.nest_clothes.sys_clothes.htmlText = "";
         var _loc22_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrL1);
         var _loc23_:String = this.m_callback.GetUserDataString(ReceiveType_KeyStrR1);
         if(_loc14_)
         {
            _loc22_ = _loc15_;
            _loc23_ = _loc16_;
         }
         this.m_timeline.cha_parameter.nest_clothes.sys_l.htmlText = _loc22_;
         this.m_timeline.cha_parameter.nest_clothes.sys_r.htmlText = _loc23_;
         _loc1_ = 0;
         while(PlayerMax > _loc1_)
         {
            if(_loc1_ == this.m_current_player_index)
            {
               this.setReadyIcon(_loc1_,true,false);
            }
            else
            {
               _loc37_ = this.m_callback.GetUserDataInt(ReceiveType_PartyNpcNum);
               if(0 <= _loc1_ - 1 && _loc1_ - 1 < _loc37_)
               {
                  this.setReadyIcon(_loc1_,false,true);
               }
               else
               {
                  this.setReadyIcon(_loc1_,false,false);
               }
            }
            _loc36_ = this.getReadyIconMc(_loc1_);
            if(PlayerIndexOwn == _loc1_)
            {
               _loc36_.cmn_icn_you.visible = true;
            }
            else
            {
               _loc36_.cmn_icn_you.visible = false;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(IndexNumCharaNewIcon > _loc1_)
         {
            _loc38_ = this.getMcChamysetNewIcon(_loc1_);
            _loc38_.visible = false;
            _loc1_++;
         }
         this.updateVariation();
         var _loc24_:int = this.m_callback.GetUserDataInt(ReceiveType_Time);
         if(_loc24_ <= 0)
         {
            this.m_timeline.timer.visible = false;
         }
         else
         {
            this.m_timeline.timer.visible = true;
            this.m_timer.Start(_loc24_,this.cbFuncEndTimer);
         }
         if(this.m_chara_num_column <= IndexNumColumn)
         {
            this.m_timeline.cha_arrow.visible = false;
         }
         trace(" ***** BGM OPTION ENABLE");
         this.m_callback.CallbackUserData("user",SendType_EnableOptionBGM,1);
         this.m_timeline.cha_select.gotoAndPlay("start");
         this.m_timeline.cha_parameter.gotoAndPlay("start");
         this.m_timeline.cha_frame.cmn_CMN_M_frame.gotoAndPlay("start");
         this.m_timeline.cha_arrow.gotoAndPlay("start");
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.waitMain);
      }
      
      private function waitMain(param1:Event) : void
      {
         if(this.m_timeline.cha_parameter.currentFrame != Utility.GetLabelEndFrame(this.m_timeline.cha_parameter,"start"))
         {
            return;
         }
         this.setSelectChara();
         this.updateVariation();
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitMain);
         this.m_timeline.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.checkKey);
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.main);
      }
      
      private function main(param1:Event) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = undefined;
         var _loc14_:Array = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = this.m_select_info[this.m_current_player_index][SelectInfoTypeListIndex];
         var _loc4_:Array = this.getCharaInfo(_loc3_);
         var _loc5_:int = this.m_callback.GetUserDataInt(ReceiveType_Time);
         if(_loc5_ > 0)
         {
            if(this.m_timer)
            {
               _loc12_ = this.m_timer.GetTime();
               if(this.m_pre_time != _loc12_)
               {
                  if(_loc12_ < 10)
                  {
                     _loc13_ = 8;
                     this.m_callback.CallbackUserData("user",SendType_RequestCountDownSe,_loc13_);
                  }
                  this.m_pre_time = _loc12_;
               }
               if(_loc12_ <= _loc5_)
               {
                  this.m_timeline.timer.nest._CMN_M_B_mc_timer.visible = true;
               }
               else
               {
                  this.m_timeline.timer.nest._CMN_M_B_mc_timer.visible = false;
               }
            }
         }
         this.updateLocalBattle();
         if(this.m_flag_change_player || this.m_flag_change_page)
         {
            if(this.m_count_change_disp == 0)
            {
               this.m_flag_change_disp = true;
            }
         }
         if(this.m_flag_change_disp)
         {
            if(!this.m_flag_change_player && !this.m_flag_change_page)
            {
               this.m_count_change_disp = 6;
               this.m_flag_change_disp = false;
               _loc2_ = 0;
               while(_loc2_ < this.m_icon_show_wait.length)
               {
                  this.m_icon_show_wait[_loc2_] = 0;
                  _loc2_++;
               }
            }
            else if(this.m_count_change_disp == 0)
            {
               this.updateDisply();
               this.m_count_change_disp--;
            }
            else
            {
               this.updateCharaIconUnit(this.m_select_icon_column,this.m_select_icon_row);
            }
         }
         if(this.m_count_change_disp == 5 || this.m_count_change_disp == 3 || this.m_count_change_disp == 1)
         {
            this.updateDisply();
         }
         if(this.m_count_change_disp > 0)
         {
            this.m_count_change_disp--;
         }
         if(this.m_flag_change_page)
         {
            if(this.m_timeline.cha_select.chara_icn_set01.currentLabel == "push_l_end" || this.m_timeline.cha_select.chara_icn_set01.currentLabel == "push_r_end")
            {
               this.m_flag_change_page = false;
               this.m_timeline.cha_select.chara_icn_set01.gotoAndPlay(0);
            }
         }
         var _loc6_:MovieClip = this.m_timeline.cha_select;
         var _loc7_:MovieClip = _loc6_["chara_icn_set0" + (this.m_select_icon_column + 1)];
         var _loc8_:MovieClip = _loc7_["nest_charaselect0" + (this.m_select_icon_row + 1)];
         if(!this.m_flag_change_player)
         {
            return;
         }
         this.m_timeline.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.checkKey);
         var _loc9_:int = 0;
         if(this.m_flag_decide)
         {
            _loc9_ = this.m_current_select_index - 1;
            if(0 <= _loc9_ && _loc9_ < this.m_selected_index_list.length)
            {
               this.m_selected_index_list[_loc9_] = _loc3_;
            }
         }
         else
         {
            _loc9_ = this.m_current_select_index;
            if(0 <= _loc9_ && _loc9_ < this.m_selected_index_list.length)
            {
               this.m_selected_index_list[_loc9_] = -1;
            }
         }
         if(this.m_flag_decide)
         {
            if(this.m_timeline.cha_parameter.currentLabel == "start" || this.m_timeline.cha_parameter.currentLabel == "wait")
            {
               this.m_timeline.cha_parameter.gotoAndPlay("push");
               if(_loc4_)
               {
                  _loc14_ = _loc4_[this.m_select_var][VarTypeVoiceIdList];
                  _loc15_ = Math.floor(Math.random() * _loc14_.length);
                  _loc16_ = _loc14_[_loc15_];
                  this.m_callback.CallbackUserData("user",SendType_RequestPlayVoice,_loc16_);
               }
               trace(" ----- BGM OPTION DISABLE");
               this.m_callback.CallbackUserData("user",SendType_EnableOptionBGM,0);
            }
            if(this.m_timeline.cha_parameter.currentFrame < Utility.GetLabelEndFrame(this.m_timeline.cha_parameter,"push"))
            {
               return;
            }
         }
         if(this.m_timeline.cha_parameter.currentLabel == "end_comp")
         {
            this.m_timeline.cha_parameter.nest_clothes.visible = false;
            if(this.m_flag_exit)
            {
               this.end();
               return;
            }
            this.changeCurrentPlayer(this.m_flag_decide);
            this.updatePage();
            this.setSelectChara();
            this.sendCharaInfo(this.m_current_player_index);
            this.m_flag_decide = false;
            this.m_flag_change_player = false;
            var _loc10_:Boolean = false;
            if(this.m_current_player_index < 0 || PlayerMax <= this.m_current_player_index)
            {
               _loc10_ = true;
            }
            if(_loc10_)
            {
               this.end();
               return;
            }
            var _loc11_:int = this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle);
            if(!_loc11_)
            {
               if(_loc5_ > 0)
               {
                  this.m_timer.Start(_loc5_ + 1,this.cbFuncEndTimer);
                  this.m_timeline.timer.nest._CMN_M_B_mc_timer.visible = false;
               }
            }
            this.m_timeline.cha_parameter.gotoAndPlay("start");
            this.m_timeline.cha_parameter.nest_clothes.visible = true;
            this.m_timeline.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.checkKey);
            trace(" ***** BGM OPTION ENABLE");
            this.m_callback.CallbackUserData("user",SendType_EnableOptionBGM,1);
            return;
         }
         if(this.m_timeline.cha_parameter.currentLabel == "end")
         {
            return;
         }
         trace(" ----- BGM OPTION DISABLE");
         this.m_callback.CallbackUserData("user",SendType_EnableOptionBGM,0);
         this.m_timeline.cha_parameter.gotoAndPlay("end");
         if(!this.m_flag_exit)
         {
            _loc17_ = -1;
            if(this.m_timer)
            {
               _loc17_ = this.m_timer.GetTime();
            }
            this.m_callback.CallbackUserData("user",SendType_RequestDecide,_loc17_);
         }
      }
      
      private function end() : void
      {
         this.m_timeline.cha_select.gotoAndPlay("end");
         this.m_timeline.cha_arrow.gotoAndPlay("end");
         if(this.m_timeline.cha_skill.currentFrame <= Utility.GetLabelEndFrame(this.m_timeline.cha_skill,"wait"))
         {
            this.m_timeline.cha_skill.gotoAndPlay("end");
         }
         this.m_timeline.cha_frame.cmn_CMN_M_frame.gotoAndPlay("end");
         this.m_timeline.cha_select_cur.visible = false;
         this.m_timer.End();
         this.m_timeline.timer.gotoAndPlay("end");
         var _loc1_:int = this.m_callback.GetUserDataInt(ReceiveType_Time);
         if(_loc1_ > 0)
         {
            this.m_timer.Stop();
         }
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.main);
         this.m_timeline.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.checkKey);
         if(this.m_current_player_index < 0)
         {
            this.m_callback.CallbackCancel();
         }
         else
         {
            this.m_callback.CallbackDecide(1);
         }
         this.m_timeline.stage.addEventListener(Event.ENTER_FRAME,this.waitEnd);
      }
      
      private function waitEnd(param1:Event) : void
      {
         if(this.m_timeline.cha_select.currentFrame != Utility.GetLabelEndFrame(this.m_timeline.cha_select,"end"))
         {
            return;
         }
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitEnd);
         this.m_callback.CallbackExit();
      }
      
      private function cbFuncEndTimer() : void
      {
         this.pushKeyDecide();
      }
      
      private function updateLocalBattle() : void
      {
         var _loc1_:int = this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle);
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = this.m_callback.GetUserDataInt(ReceiveType_Time);
         var _loc3_:int = this.m_callback.GetUserDataInt(ReceiveType_Flag2pController);
         if(_loc3_)
         {
            if(this.m_timeline.press2P.currentLabel != "end" && this.m_timeline.press2P.currentLabel != "end_comp")
            {
               this.m_timeline.press2P.gotoAndPlay("end");
               if(_loc2_ >= 0)
               {
                  if(this.m_current_player_index != 0)
                  {
                     if(this.m_timer)
                     {
                        this.m_timer.Start(_loc2_ + 1,this.cbFuncEndTimer);
                        this.m_timeline.timer.nest._CMN_M_B_mc_timer.visible = false;
                     }
                  }
               }
            }
         }
         else if(this.m_timeline.press2P.currentLabel != "start" && this.m_timeline.press2P.currentLabel != "wait")
         {
            this.m_timeline.press2P.gotoAndPlay("start");
            this.m_timeline.press2P.nest.sys.sys.htmlText = this.m_callback.GetUserDataString(ReceiveType_Str2pController);
         }
         switch(this.m_current_player_index)
         {
            case 0:
               if(!this.m_timeline.cha_parameter.icon_1P.visible)
               {
                  this.m_timeline.cha_parameter.icon_1P.gotoAndPlay("start");
               }
               this.m_timeline.cha_parameter.icon_1P.visible = true;
               this.m_timeline.cha_parameter.icon_2P.visible = false;
               break;
            case 3:
               this.m_timeline.cha_parameter.icon_1P.visible = false;
               if(!this.m_timeline.cha_parameter.icon_2P.visible)
               {
                  this.m_timeline.cha_parameter.icon_2P.gotoAndPlay("start");
                  if(_loc2_ >= 0)
                  {
                     if(this.m_timer)
                     {
                        if(_loc3_)
                        {
                           this.m_timer.Start(_loc2_ + 1,this.cbFuncEndTimer);
                           this.m_timeline.timer.nest._CMN_M_B_mc_timer.visible = false;
                        }
                        else
                        {
                           this.m_timer.Stop();
                        }
                     }
                  }
               }
               this.m_timeline.cha_parameter.icon_2P.visible = true;
               break;
            default:
               this.m_timeline.cha_parameter.icon_1P.visible = false;
               this.m_timeline.cha_parameter.icon_2P.visible = false;
         }
      }
      
      private function getCharaInfo(param1:int) : Array
      {
         if(param1 < 0)
         {
            return null;
         }
         if(this.m_chara_list_num <= param1)
         {
            return null;
         }
         if(this.m_chara_list[param1][0] < 0)
         {
            return null;
         }
         return this.m_chara_list[param1];
      }
      
      public function GetSelectVarInfo(param1:int) : Array
      {
         if(param1 < 0 || PlayerMax <= param1)
         {
            return null;
         }
         var _loc2_:int = this.m_select_info[param1][SelectInfoTypeListIndex];
         var _loc3_:Array = this.getCharaInfo(_loc2_);
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:int = this.m_select_info[param1][SelectInfoTypeVarIndex];
         _loc4_ = _loc4_ + _loc3_.length;
         _loc4_ = _loc4_ % _loc3_.length;
         return _loc3_[_loc4_];
      }
      
      private function getReadyIconMc(param1:int) : MovieClip
      {
         var _loc2_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerFriNum);
         var _loc3_:int = 0;
         if(_loc2_ < param1)
         {
            _loc3_ = param1;
         }
         else
         {
            _loc3_ = _loc2_ - param1;
         }
         var _loc4_:MovieClip = this.m_timeline.cha_parameter.nest_ready["btnact_rb0" + (_loc3_ + 1)];
         return _loc4_;
      }
      
      private function calcCharaListIndex(param1:int, param2:int) : int
      {
         return param1 + param2 * IndexNumRow;
      }
      
      private function calcIconIndexRow(param1:int) : int
      {
         if(param1 < 0 || this.m_chara_list_num <= param1)
         {
            return -1;
         }
         return param1 % IndexNumRow;
      }
      
      private function calcIconIndexColumn(param1:int) : int
      {
         if(param1 < 0 || this.m_chara_list_num <= param1)
         {
            return -1;
         }
         return param1 / IndexNumRow;
      }
      
      private function getVarIndexNum(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(CharaVarIndexNum > _loc2_)
         {
            if(this.checkUnlockVar(param1,_loc2_))
            {
               _loc3_++;
            }
            _loc2_++;
         }
         return _loc3_;
      }
      
      private function updatePage() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         if(this.m_select_column < this.m_select_column_start)
         {
            this.m_select_column_start = this.m_select_column;
            _loc1_ = true;
            _loc2_ = true;
         }
         else if(this.m_select_column_start + IndexNumColumn <= this.m_select_column)
         {
            this.m_select_column_start = this.m_select_column - IndexNumColumn + 1;
            _loc1_ = true;
         }
         if(!_loc1_)
         {
            return;
         }
         this.m_flag_change_page = true;
         var _loc6_:MovieClip = this.m_timeline.cha_select;
         var _loc7_:MovieClip = this.m_timeline.cha_new;
         var _loc8_:MovieClip = null;
         _loc4_ = -1;
         while(IndexNumColumn + 1 > _loc4_)
         {
            _loc9_ = _loc6_["chara_icn_set0" + (_loc4_ + 1)];
            if(_loc2_)
            {
               _loc9_.gotoAndPlay("push_l");
               this.m_timeline.cha_arrow.spinbtn_l.cmn_CMN_M_B_mc_spinbtn_l.gotoAndPlay("push");
               _loc5_ = 0;
               while(IndexNumCharaNewIcon > _loc5_)
               {
                  _loc8_ = _loc7_["chara_new_" + _loc5_];
                  _loc8_.gotoAndPlay("push_l");
                  _loc5_++;
               }
            }
            else
            {
               _loc9_.gotoAndPlay("push_r");
               this.m_timeline.cha_arrow.spinbtn_r.cmn_CMN_M_B_mc_spinbtn_r.gotoAndPlay("push");
               _loc5_ = 0;
               while(IndexNumCharaNewIcon > _loc5_)
               {
                  _loc8_ = _loc7_["chara_new_" + _loc5_];
                  _loc8_.gotoAndPlay("push_r");
                  _loc5_++;
               }
            }
            _loc4_++;
         }
      }
      
      //private function changeLR(param1:Boolean) : void
	  private function changeLR(param1:Boolean, jumpPage:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1)
            {
               if(this.m_select_column == 0 && this.m_select_row == 0)
               {
                  break;
               }
			   
               //////////
			   if (jumpPage) 
               {
                  this.m_select_column -= 7;
               }
               else
               {
                  this.m_select_column--;
               }
			   //////////
			   
               if(this.m_select_column < 0)
               {
                  this.m_select_column = this.m_chara_num_column - 1;
                  this.m_select_row--;
                  this.m_select_row = this.m_select_row + IndexNumRow;
                  this.m_select_row = this.m_select_row % IndexNumRow;
               }
            }
            else
            {
               //////////
			   if (jumpPage) 
               {
                  this.m_select_column += 7;
               }
               else
               {
                  this.m_select_column++;
               }
			   //////////
			   
               if(this.m_chara_num_column <= this.m_select_column)
               {
                  this.m_select_column = 0;
                  this.m_select_row++;
                  this.m_select_row = this.m_select_row + IndexNumRow;
                  this.m_select_row = this.m_select_row % IndexNumRow;
               }
            }
            _loc2_ = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
            _loc3_ = this.m_callback.GetUserDataInt(ReceiveType_FlagSelectAvatar);
            if(!_loc3_)
            {
               if(this.checkAvatar(_loc2_))
               {
                  if(this.checkSelectedAvatar(_loc2_))
                  {
                     continue;
                  }
               }
            }
            _loc4_ = this.checkUnlockChara(_loc2_);
            if(!_loc4_)
            {
               continue;
            }
            this.m_select_var = 0;
            return;
         }
         this.changeUD(true);
      }
      
      private function changeUD(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         while(true)
         {
            if(param1)
            {
               this.m_select_row--;
               if(this.m_select_row < 0)
               {
                  this.m_select_row = IndexNumRow - 1;
                  this.m_select_column--;
                  this.m_select_column = this.m_select_column + this.m_chara_num_column;
                  this.m_select_column = this.m_select_column % this.m_chara_num_column;
               }
            }
            else
            {
               this.m_select_row++;
               if(IndexNumRow <= this.m_select_row)
               {
                  this.m_select_row = 0;
                  this.m_select_column++;
                  this.m_select_column = this.m_select_column + this.m_chara_num_column;
                  this.m_select_column = this.m_select_column % this.m_chara_num_column;
               }
            }
            _loc2_ = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
            _loc3_ = this.m_callback.GetUserDataInt(ReceiveType_FlagSelectAvatar);
            if(!_loc3_)
            {
               if(this.checkAvatar(_loc2_))
               {
                  if(this.checkSelectedAvatar(_loc2_))
                  {
                     continue;
                  }
               }
            }
            _loc4_ = this.checkUnlockChara(_loc2_);
            if(!_loc4_)
            {
               continue;
            }
            break;
         }
         this.m_select_var = 0;
      }
      
      private function changeVar(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc2_:int = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
         var _loc3_:Array = this.getCharaInfo(_loc2_);
         if(!_loc3_)
         {
            return;
         }
         while(true)
         {
            if(param1)
            {
               this.m_select_var--;
            }
            else
            {
               this.m_select_var++;
            }
            this.m_select_var = this.m_select_var + _loc3_.length;
            this.m_select_var = this.m_select_var % _loc3_.length;
            _loc4_ = this.checkUnlockVar(_loc2_,this.m_select_var);
            if(!_loc4_)
            {
               continue;
            }
            break;
         }
      }
      
      private function checkPlayerTeamType(param1:int) : int
      {
         var _loc2_:int = PlayerTeamTypeInvalid;
         if(param1 == PlayerIndexOwn)
         {
            _loc2_ = PlayerTeamTypeOwn;
         }
         else if(PlayerIndexFriStart <= param1 && param1 <= PlayerIndexFriEnd)
         {
            _loc2_ = PlayerTeamTypeFri;
         }
         else if(PlayerIndexEnmStart <= param1 && param1 <= PlayerIndexEnmEnd)
         {
            _loc2_ = PlayerTeamTypeEnm;
         }
         return _loc2_;
      }
      
      private function setReadyIcon(param1:int, param2:Boolean, param3:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(param1 < 0 || PlayerMax <= param1)
         {
            return;
         }
         var _loc4_:MovieClip = this.getReadyIconMc(param1);
         if(param3)
         {
            _loc5_ = this.checkPlayerTeamType(param1);
            _loc6_ = false;
            _loc7_ = param1 - 1;
            switch(_loc5_)
            {
               case PlayerTeamTypeOwn:
                  _loc4_.gotoAndStop("blue_team");
                  break;
               case PlayerTeamTypeFri:
                  _loc4_.gotoAndStop("blue_team");
                  _loc8_ = this.m_callback.GetUserDataInt(ReceiveType_PlayerFriNum);
                  _loc9_ = this.m_callback.GetUserDataInt(ReceiveType_PartyNpcNum);
                  if(0 <= _loc7_ && _loc7_ < _loc9_)
                  {
                     _loc6_ = true;
                  }
                  break;
               case PlayerTeamTypeEnm:
                  _loc4_.gotoAndStop("red_team");
            }
            _loc4_.sys_ready.text = "OK";
            if(_loc6_)
            {
               this.setImageFriendNpc(_loc4_.icn_chara_lit.chara_img,_loc7_);
            }
            else
            {
               _loc10_ = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
               this.setImage(_loc4_.icn_chara_lit.chara_img,_loc10_,true);
            }
         }
         else
         {
            _loc4_.gotoAndStop("off");
            _loc4_.sys_ready.text = "---";
         }
         if(param2)
         {
            _loc4_.btnact_ready.gotoAndPlay("on");
         }
         else
         {
            _loc4_.btnact_ready.gotoAndPlay("off");
         }
      }
      
      private function changeCurrentPlayer(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc2_:int = 0;
         this.setReadyIcon(this.m_current_player_index,false,param1);
         var _loc3_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerFriNum);
         var _loc4_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerEnmNum);
         do
         {
            if(param1)
            {
               this.m_current_player_index++;
            }
            else
            {
               this.m_current_player_index--;
            }
            _loc5_ = false;
            _loc6_ = this.checkPlayerTeamType(this.m_current_player_index);
            switch(_loc6_)
            {
               case PlayerTeamTypeFri:
                  _loc7_ = this.m_current_player_index - PlayerIndexFriStart;
                  _loc8_ = this.m_callback.GetUserDataInt(ReceiveType_PartyNpcNum);
                  if(_loc8_ > _loc7_)
                  {
                     _loc5_ = false;
                  }
                  else if(_loc3_ > _loc7_)
                  {
                     _loc5_ = true;
                  }
                  break;
               case PlayerTeamTypeEnm:
                  _loc9_ = this.m_current_player_index - PlayerIndexEnmStart;
                  if(_loc4_ > _loc9_)
                  {
                     _loc5_ = true;
                  }
                  break;
               case PlayerTeamTypeOwn:
               default:
                  _loc5_ = true;
            }
         }
         while(!_loc5_);
         
         this.setReadyIcon(this.m_current_player_index,true,false);
         if(0 <= this.m_current_player_index && this.m_current_player_index < PlayerMax)
         {
            _loc10_ = this.m_select_info[this.m_current_player_index][SelectInfoTypeListIndex];
            this.m_select_row = this.calcIconIndexRow(_loc10_);
            this.m_select_column = this.calcIconIndexColumn(_loc10_);
            this.m_select_var = this.m_select_info[this.m_current_player_index][SelectInfoTypeVarIndex];
            if(this.checkAvatar(_loc10_) && this.checkSelectedAvatar(_loc10_))
            {
               this.changeUD(false);
            }
         }
      }
      
      private function setSelectChara() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         if(this.m_current_player_index < 0 || PlayerMax <= this.m_current_player_index)
         {
            return;
         }
         var _loc3_:int = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
         var _loc4_:Array = this.getCharaInfo(_loc3_);
         var _loc5_:int = -1;
         if(_loc4_)
         {
            _loc5_ = _loc4_.length;
            _loc1_ = 0;
            while(_loc5_ > _loc1_)
            {
               _loc13_ = this.m_select_var + _loc1_;
               _loc13_ = _loc13_ % _loc5_;
               if(!this.checkUnlockVar(_loc3_,_loc13_))
               {
                  _loc1_++;
                  continue;
               }
               this.m_select_var = _loc13_;
               break;
            }
         }
         var _loc6_:int = this.m_select_row;
         var _loc7_:int = this.m_select_column - this.m_select_column_start;
         var _loc8_:MovieClip = this.m_timeline.cha_select;
         var _loc9_:MovieClip = _loc8_["chara_icn_set0" + (_loc7_ + 1)];
         var _loc10_:MovieClip = _loc9_["nest_charaselect0" + (_loc6_ + 1)];
         this.m_select_icon_row = _loc6_;
         this.m_select_icon_column = _loc7_;
         _loc1_ = 0;
         while(IndexNumCharaNewIcon > _loc1_)
         {
            _loc14_ = this.getMcChamysetNewIcon(_loc1_);
            if(_loc14_)
            {
               _loc14_.visible = false;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(CharaVarIndexNum > _loc1_)
         {
            _loc15_ = this.getMcChamyset(_loc1_);
            _loc16_ = this.getMcChamysetNewIcon(_loc1_);
            if(_loc15_)
            {
               _loc17_ = this.checkUnlockVar(_loc3_,_loc1_);
               _loc15_.btnact_off.visible = true;
               if(_loc1_ < _loc5_)
               {
                  if(_loc17_)
                  {
                     if(_loc1_ == this.m_select_var)
                     {
                        if(_loc15_.currentLabel != "on")
                        {
                           _loc15_.gotoAndPlay("on");
                           _loc15_.btnact_ef.visible = true;
                           _loc15_.btnact_on.visible = true;
                           _loc15_.btnact_off.visible = false;
                        }
                     }
                     else
                     {
                        _loc15_.gotoAndPlay("off");
                        _loc15_.btnact_ef.visible = false;
                        _loc15_.btnact_on.visible = false;
                        _loc15_.btnact_off.visible = true;
                     }
                     if(!_loc16_)
                     {
                     }
                     _loc18_ = false;
                     _loc19_ = false;
                     if(_loc4_[_loc1_][VarTypeCustomCostume])
                     {
                        _loc18_ = true;
                     }
                     if(_loc4_[_loc1_][VarTypeCustomCostumeEx])
                     {
                        _loc19_ = true;
                     }
                     _loc15_.btnact_ef.blue.visible = false;
                     _loc15_.btnact_ef.red.visible = false;
                     _loc15_.btnact_ef.yellow.visible = false;
                     _loc15_.btnact_on.blue.visible = false;
                     _loc15_.btnact_on.red.visible = false;
                     _loc15_.btnact_on.yellow.visible = false;
                     _loc15_.btnact_off.blue.visible = false;
                     _loc15_.btnact_off.red.visible = false;
                     _loc15_.btnact_off.yellow.visible = false;
                     _loc20_ = 1;
                     _loc21_ = 2;
                     _loc22_ = 3;
                     if(_loc18_)
                     {
                        if(_loc19_)
                        {
                           _loc15_.btnact_ef.blue.visible = true;
                           _loc15_.btnact_on.blue.visible = true;
                           _loc15_.btnact_off.blue.visible = true;
                        }
                        else
                        {
                           _loc15_.btnact_ef.red.visible = true;
                           _loc15_.btnact_on.red.visible = true;
                           _loc15_.btnact_off.red.visible = true;
                        }
                     }
                     else
                     {
                        _loc15_.btnact_ef.yellow.visible = true;
                        _loc15_.btnact_on.yellow.visible = true;
                        _loc15_.btnact_off.yellow.visible = true;
                     }
                  }
                  else
                  {
                     _loc15_.gotoAndPlay("lock");
                     _loc15_.btnact_ef.visible = false;
                     _loc15_.btnact_on.visible = false;
                     _loc15_.btnact_off.visible = true;
                     if(_loc16_)
                     {
                        _loc16_.visible = false;
                     }
                  }
               }
               else
               {
                  _loc15_.gotoAndPlay("off");
                  _loc15_.btnact_ef.visible = false;
                  _loc15_.btnact_on.visible = false;
                  _loc15_.btnact_off.visible = false;
                  if(_loc16_)
                  {
                     _loc16_.visible = false;
                  }
               }
            }
            else if(_loc16_)
            {
               _loc16_.visible = false;
            }
            _loc1_++;
         }
         var _loc11_:int = this.getVarIndexNum(_loc3_);
         var _loc12_:* = false;
         if(_loc11_ > 1)
         {
            _loc12_ = true;
         }
         this.m_timeline.cha_parameter.nest_clothes.sys_r.visible = _loc12_;
         this.m_timeline.cha_parameter.nest_clothes.sys_l.visible = _loc12_;
         this.m_select_info[this.m_current_player_index][SelectInfoTypeListIndex] = _loc3_;
         this.m_select_info[this.m_current_player_index][SelectInfoTypeVarIndex] = this.m_select_var;
      }
      
      public function sendCharaInfo(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         if(PlayerMax <= param1)
         {
            return;
         }
         var _loc2_:Array = this.GetSelectVarInfo(param1);
         if(!_loc2_)
         {
            this.SetUserDataString(CharaSele.ReceiveType_CharaNameStr,"???");
            return;
         }
         var _loc3_:String = _loc2_[VarTypeCode];
         var _loc4_:int = this.m_select_info[param1][SelectInfoTypeVarIndex];
         var _loc5_:int = _loc2_[VarTypeMid];
         var _loc6_:int = _loc2_[VarTypeModelPreset];
         var _loc7_:int = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
         var _loc8_:int = _loc2_[VarTypeCustomCostume];
         var _loc9_:int = _loc2_[VarTypeAvatarSlotID];
         this.m_callback.CallbackUserData("user",SendType_CurrentPlayerIndex,param1);
         this.m_callback.CallbackUserData("user",SendType_AvatarSlotID,_loc9_);
         this.m_callback.CallbackUserDataString("user",SendType_SelectCode,_loc3_);
         this.m_callback.CallbackUserData("user",SendType_SelectVariation,_loc4_);
         this.m_callback.CallbackUserData("user",SendType_SelectCustomFlag,_loc8_);
         this.m_callback.CallbackUserData("user",SendType_SelectMid,_loc5_);
         this.m_callback.CallbackUserData("user",SendType_SelectModelPreset,_loc6_);
         this.m_callback.CallbackUserData("user",SendType_RequestCharaInfo,0);
         this.m_callback.CallbackUserData("user",SendType_SelectListIndex,CharaListShiftCount[_loc7_]);
         this.m_callback.SetUserDataValidFlag(ReceiveType_CharaNameStr,false);
      }
      
      private function setImage(param1:MovieClip, param2:int, param3:Boolean) : void
      {
         var _loc4_:Bitmap = null;
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         if(!this.checkUnlockChara(param2))
         {
            return;
         }
         if(this.m_chara_face[param2])
         {
            _loc4_ = this.m_chara_face[param2];
            if(param3)
            {
               _loc5_ = this.m_callback.GetUserDataString(ReceiveType_ImageStrStart + param2);
               _loc4_ = new Bitmap(null);
               IggyFunctions.setTextureForBitmap(_loc4_,_loc5_);
               _loc4_.scaleX = 256 / _loc4_.width;
               _loc4_.scaleY = 128 / _loc4_.height;
            }
            param1.addChild(_loc4_);
         }
      }
      
      private function setImageFriendNpc(param1:MovieClip, param2:int) : void
      {
         var _loc3_:Bitmap = null;
         if(!param1)
         {
            return;
         }
         if(param2 < 0 || PlayerNumFri <= param2)
         {
            return;
         }
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         if(this.m_chara_face_npc[param2])
         {
            _loc3_ = this.m_chara_face_npc[param2];
            param1.addChild(_loc3_);
         }
      }
      
      private function updateCharaIconUnit(param1:int, param2:int) : void
      {
         var _loc9_:MovieClip = null;
         var _loc10_:Array = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc3_:MovieClip = this.m_timeline.cha_select;
         var _loc4_:MovieClip = this.m_timeline.cha_new;
         var _loc5_:MovieClip = _loc3_["chara_icn_set0" + (param1 + 1)];
         var _loc6_:MovieClip = _loc5_["nest_charaselect0" + (param2 + 1)];
         if(!_loc6_)
         {
            return;
         }
         var _loc7_:int = this.calcCharaListIndex(param2,param1 + this.m_select_column_start);
         var _loc8_:MovieClip = _loc4_["chara_new_" + ((param1 + 1) * 3 + param2)];
         this.setImage(_loc6_.chara_img,_loc7_,false);
         if(this.checkNoChara(_loc7_))
         {
            _loc6_.visible = false;
            _loc8_.visible = false;
         }
         else if(this.checkUnlockChara(_loc7_))
         {
            _loc6_.visible = true;
            _loc8_.visible = this.checkCharaNewIconVisible(_loc7_);
            _loc9_ = this.m_timeline.cha_select_cur;
            _loc10_ = this.getCharaInfo(_loc7_);
            _loc11_ = _loc10_[VarTypeAvatarSlotID];
            _loc12_ = this.m_callback.GetUserDataInt(ReceiveType_FlagSelectAvatar);
            if(!_loc12_ && this.m_current_player_index != PlayerIndexOwn && this.checkAvatar(_loc7_) && this.checkSelectedAvatar(_loc7_))
            {
               if(_loc6_.currentLabel != "grayout")
               {
                  _loc6_.gotoAndStop("grayout");
               }
               if(this.checkSelectedAvatar(_loc7_))
               {
                  if(this.m_select_column - this.m_select_column_start == param1 && this.m_select_row == param2)
                  {
                     this.setImage(_loc9_.chara_sel.chara_img,_loc7_,false);
                  }
               }
            }
            else
            {
               if(_loc6_.currentLabel != "off")
               {
                  _loc6_.gotoAndStop("off");
               }
               if(this.m_select_icon_column == param1 && this.m_select_icon_row == param2)
               {
                  _loc9_.visible = true;
                  _loc9_.x = _loc3_.x + _loc5_.x + _loc6_.x;
                  _loc9_.y = _loc3_.y + _loc5_.y + _loc6_.y;
                  this.setImage(_loc9_.chara_sel.chara_img,_loc7_,false);
                  if(this.m_flag_decide)
                  {
                     if(_loc9_.currentLabel != "push")
                     {
                        _loc9_.gotoAndStop("push");
                     }
                  }
                  else if(_loc9_.currentLabel != "on")
                  {
                     _loc9_.gotoAndStop("on");
                  }
               }
            }
         }
         else
         {
            _loc6_.visible = true;
            if(_loc6_.currentLabel != "lock")
            {
               _loc6_.gotoAndStop("lock");
            }
            _loc8_.visible = false;
         }
      }
      
      private function updateCharaIcon() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:MovieClip = this.m_timeline.cha_select;
         _loc2_ = -1;
         while(IndexNumColumn + 1 > _loc2_)
         {
            _loc1_ = 0;
            while(IndexNumRow > _loc1_)
            {
               this.updateCharaIconUnit(_loc2_,_loc1_);
               _loc1_++;
            }
            _loc2_++;
         }
         var _loc4_:MovieClip = _loc3_["chara_icn_set00"];
         if(this.m_select_column_start <= 0)
         {
            _loc4_.visible = false;
         }
         else
         {
            _loc4_.visible = true;
         }
         var _loc5_:MovieClip = _loc3_["chara_icn_set0" + (IndexNumColumn + 1)];
         if(this.m_chara_num_column <= this.m_select_column_start + IndexNumColumn)
         {
            _loc5_.visible = false;
         }
         else
         {
            _loc5_.visible = true;
         }
      }
      
      private function updateSkill() : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:int = 0;
         this.ResetIcons();
         var _loc2_:MovieClip = this.m_timeline.cha_skill;
         if(this.m_flag_skill)
         {
            if(_loc2_.currentFrame > Utility.GetLabelEndFrame(_loc2_,"wait"))
            {
               _loc2_.gotoAndPlay("start");
               _loc2_.visible = true;
            }
            _loc1_ = 0;
            while(SkillMax > _loc1_)
            {
               _loc6_ = this.m_callback.GetUserDataString(ReceiveType_SkillNameStrStart + _loc1_);
               _loc2_.inact_skill["skill0" + (_loc1_ + 1)].sys_skill.scaleX = this.m_skill_str_scalex_default;
               _loc2_.inact_skill["skill0" + (_loc1_ + 1)].sys_skill.autoSize = "left";
               _loc2_.inact_skill["skill0" + (_loc1_ + 1)].sys_skill.htmlText = _loc6_;
               _loc7_ = _loc2_.inact_skill["skill0" + (_loc1_ + 1)].sys_skill.width;
               _loc8_ = this.m_skill_str_scalex_default;
               if(this.m_skill_str_width_default < _loc7_)
               {
                  _loc8_ = this.m_skill_str_width_default / _loc7_;
               }
               _loc2_.inact_skill["skill0" + (_loc1_ + 1)].sys_skill.scaleX = _loc8_;
               _loc1_++;
            }
            _loc3_ = this.m_callback.GetUserDataString(ReceiveType_TarismanNameStr);
            _loc2_.inact_skill.skill09.sys_skill.scaleX = this.m_skill_str_scalex_default;
            _loc2_.inact_skill.skill09.sys_skill.autoSize = "left";
            _loc2_.inact_skill.skill09.sys_skill.htmlText = _loc3_;
            _loc4_ = _loc2_.inact_skill.skill09.sys_skill.width;
            _loc5_ = this.m_skill_str_scalex_default;
            if(this.m_skill_str_width_default < _loc4_)
            {
               _loc5_ = this.m_skill_str_width_default / _loc4_;
            }
            _loc2_.inact_skill.skill09.sys_skill.scaleX = _loc5_ - 0.15;
            _loc2_.inact_skill.skill09.sys_skill.scaleY = 1;
         }
         else if(_loc2_.currentFrame <= Utility.GetLabelEndFrame(_loc2_,"wait"))
         {
            _loc2_.gotoAndPlay("end");
         }
      }
      
      private function updateVariation() : *
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc1_:int = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
         if(this.checkNoChara(_loc1_))
         {
            _loc1_ = 0;
         }
         _loc2_ = 0;
         while(IndexNumCharaVariationNewIcon > _loc2_)
         {
            _loc3_ = this.getMcVariationNewIcon(_loc2_);
            _loc4_ = this.checkUnlockVar(_loc1_,_loc2_);
            if(_loc4_)
            {
               _loc5_ = this.checkVariationNewIconVisible(_loc1_,_loc2_);
               if(_loc3_.visible != _loc5_)
               {
                  if(this.m_icon_show_wait[_loc2_] < 1)
                  {
                     this.m_icon_show_wait[_loc2_] = this.m_icon_show_wait[_loc2_] + 1;
                  }
                  else
                  {
                     this.m_icon_show_wait[_loc2_] = 0;
                     _loc3_.visible = _loc5_;
                  }
               }
               else
               {
                  this.m_icon_show_wait[_loc2_] = 0;
               }
            }
            else
            {
               _loc3_.visible = false;
            }
            trace("m_icon_show_wait[" + _loc2_ + "]:" + this.m_icon_show_wait[_loc2_] + " visible:" + _loc3_.visible);
            _loc2_++;
         }
      }
      
      private function updateDisply() : *
      {
         var _loc7_:* = undefined;
         trace("updateDisplay");
         var _loc1_:int = this.m_select_info[this.m_current_player_index][SelectInfoTypeListIndex];
         var _loc2_:Array = this.getCharaInfo(_loc1_);
         this.updateCharaIcon();
         var _loc3_:* = this.m_callback.GetUserDataString(ReceiveType_CharaNameStr);
         var _loc4_:String = "";
         if(_loc2_[this.m_select_var][VarTypeFlag_GK2] == true)
         {
            _loc4_ = this.m_callback.GetUserDataString(ReceiveType_NameOption_GK2);
         }
         else if(_loc2_[this.m_select_var][VarTypeFlag_CGK] == true)
         {
            _loc4_ = this.m_callback.GetUserDataString(ReceiveType_NameOption_CGK);
         }
         _loc3_ = _loc3_ + _loc4_;
         var _loc5_:int = this.m_callback.GetUserDataInt(ReceiveType_NameOption_LvNum);
         if(_loc5_ != -1)
         {
            _loc7_ = this.m_callback.GetUserDataString(ReceiveType_NameOption_LvText);
            _loc3_ = _loc3_ + " (";
            _loc3_ = _loc3_ + _loc7_;
            _loc3_ = _loc3_ + _loc5_.toString();
            _loc3_ = _loc3_ + ")";
         }
         Utility.SetAutoSizedhtmlText(this.m_timeline.cha_parameter.sys_charaName.sys_charaName,_loc3_);
         var _loc6_:String = this.m_callback.GetUserDataString(ReceiveType_VariationNameStr);
         this.m_timeline.cha_parameter.nest_clothes.sys_charavari_name.sys_charavari_name.htmlText = _loc6_;
         this.updateSkill();
         this.updateVariation();
      }
      
      private function getMcChamyset(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         if(param1 < 9)
         {
            _loc2_ = this.m_timeline.cha_parameter.nest_clothes["btnact_chamyset_0" + (param1 + 1)];
         }
         else
         {
            _loc2_ = this.m_timeline.cha_parameter.nest_clothes["btnact_chamyset_" + (param1 + 1)];
         }
         return _loc2_;
      }
      
      private function getMcChamysetNewIcon(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         _loc2_ = this.m_timeline.cha_new["chara_new_" + param1];
         return _loc2_;
      }
      
      private function getMcVariationNewIcon(param1:int) : MovieClip
      {
         var _loc2_:MovieClip = null;
         _loc2_ = this.m_timeline.cha_parameter.nest_clothes["charavari_new_" + param1];
         return _loc2_;
      }
      
      private function checkUnlockVar(param1:int, param2:int) : Boolean
      {
         if(param1 < 0 || this.m_chara_list_num <= param1)
         {
            return false;
         }
         if(param2 < 0 || CharaVarIndexNum <= param2)
         {
            return false;
         }
         var _loc3_:int = param1 * CharaVarIndexNum + param2;
         return Boolean(this.m_callback.GetUserDataInt(ReceiveType_UnlockVarStart + _loc3_));
      }
      
      private function checkUnlockChara(param1:*) : Boolean
      {
         if(param1 < 0 || this.m_chara_list_num <= param1)
         {
            return false;
         }
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(CharaVarIndexNum > _loc2_)
         {
            if(this.checkUnlockVar(param1,_loc2_))
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function checkAvatar(param1:int) : Boolean
      {
         var _loc2_:Array = this.getCharaInfo(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(_loc2_.length <= 0)
         {
            return false;
         }
         var _loc3_:String = _loc2_[0][VarTypeCode];
         if(_loc3_ != AvatarCode)
         {
            return false;
         }
         return true;
      }
      
      private function checkNoChara(param1:int) : Boolean
      {
         var _loc2_:Array = this.getCharaInfo(param1);
         if(!_loc2_)
         {
            return true;
         }
         if(_loc2_.length <= 0)
         {
            return true;
         }
         var _loc3_:String = _loc2_[0][VarTypeCode];
         if(_loc3_ == InvalidCode)
         {
            return true;
         }
         return false;
      }
      
      private function checkCharaNewIconVisible(param1:int) : Boolean
      {
         if(this.checkNoChara(param1))
         {
            return false;
         }
         if(this.checkAvatar(param1))
         {
            return false;
         }
         if(CharaListShiftCount.length <= param1)
         {
            return false;
         }
         var _loc2_:int = CharaListShiftCount[param1];
         return this.m_callback.GetUserDataInt(ReceiveType_CharaSelectedStart + _loc2_) == 0;
      }
      
      private function checkVariationNewIconVisible(param1:int, param2:int) : Boolean
      {
         if(this.checkNoChara(param1))
         {
            return false;
         }
         if(this.checkAvatar(param1))
         {
            return false;
         }
         var _loc3_:Array = this.getCharaInfo(param1);
         if(param2 >= _loc3_.length)
         {
            return false;
         }
         return this.m_callback.GetUserDataInt(ReceiveType_CharaVariationStart + param2) == 0;
      }
      
      private function checkSelectedAvatar(param1:int) : Boolean
      {
         if(param1 == -1)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_selected_index_list.length)
         {
            if(this.m_selected_index_list[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function pushLeft() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         //////////
		 // this.changeLR(true);
		 this.changeLR(true, false);
		 //////////
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushRight() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         //////////
		 // this.changeLR(false);
		 this.changeLR(false, false)
		 //////////
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushUp() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeUD(true);
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushDown() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeUD(false);
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
	  
	  //////////
	  private function pushKeyPrevPage() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeLR(true, true);
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }	  
      
      private function pushKeyNextPage() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeLR(false, true);
         this.updatePage();
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
	  //////////
      
      private function pushKeyL() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeVar(true);
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushKeyR() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.changeVar(false);
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushKeySkill() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         if(this.m_flag_skill)
         {
            this.m_flag_skill = false;
            this.m_callback.CallbackUserData("user",SendType_RequestSetFlagSkill,0);
         }
         else
         {
            this.m_flag_skill = true;
            this.m_callback.CallbackUserData("user",SendType_RequestSetFlagSkill,1);
         }
      }
      
      private function pushKeyRandom() : void
      {
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(this.m_chara_list_num > _loc1_)
         {
            if(this.checkUnlockChara(_loc1_))
            {
               _loc2_++;
            }
            _loc1_++;
         }
         if(this.m_current_player_index != PlayerIndexOwn)
         {
            _loc2_--;
         }
         var _loc3_:int = 0;
         if(_loc2_ > 1)
         {
            _loc3_ = Math.floor(Math.random() * _loc2_);
         }
         _loc1_ = 0;
         while(_loc3_ > _loc1_)
         {
            this.changeUD(false);
            this.updatePage();
            _loc1_++;
         }
         var _loc4_:int = this.calcCharaListIndex(this.m_select_row,this.m_select_column);
         var _loc5_:int = this.getVarIndexNum(_loc4_);
         var _loc6_:int = 0;
         if(_loc5_ > 1)
         {
            _loc6_ = Math.floor(Math.random() * _loc5_);
         }
         _loc1_ = 0;
         while(_loc6_ > _loc1_)
         {
            this.changeVar(false);
            _loc1_++;
         }
         this.setSelectChara();
         this.sendCharaInfo(this.m_current_player_index);
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function pushKeyDecide() : void
      {
         if(this.m_flag_change_player)
         {
            return;
         }
         if(this.m_current_player_index != PlayerIndexOwn && this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle) && !this.m_callback.GetUserDataInt(ReceiveType_Flag2pController))
         {
            return;
         }
         this.m_current_select_index++;
         this.m_flag_change_player = true;
         this.m_flag_decide = true;
         this.m_callback.CallbackSe(this.m_callback.SeTypeDecide);
      }
      
      private function pushKeyCancel() : void
      {
         var _loc2_:int = 0;
         if(this.m_flag_change_player)
         {
            return;
         }
         var _loc1_:int = this.m_callback.GetUserDataInt(ReceiveType_FlagUseCancel);
         if(!_loc1_)
         {
            _loc2_ = this.m_callback.GetUserDataInt(ReceiveType_FlagLocalBattle);
            if(_loc2_)
            {
               return;
            }
            if(this.m_current_player_index <= PlayerIndexOwn)
            {
               return;
            }
         }
         this.m_current_select_index--;
         this.m_flag_change_player = true;
         this.m_flag_decide = false;
         this.m_callback.CallbackSe(this.m_callback.SeTypeCancel);
      }
      
      private function pushStart() : void
      {
         var _loc1_:int = this.m_callback.GetUserDataInt(ReceiveType_PlayerEnmNum);
         if(_loc1_ > 0)
         {
            return;
         }
         if(this.m_current_player_index == PlayerIndexOwn)
         {
            return;
         }
         this.m_flag_change_player = true;
         this.m_flag_decide = false;
         this.m_flag_exit = true;
         this.m_callback.CallbackSe(this.m_callback.SeTypeCarsol);
      }
      
      private function checkKey(param1:KeyboardEvent) : void
      {
         trace("[CHARASELE] checkKey " + param1.keyCode);
         trace("hello");
         if(this.m_flag_decide)
         {
            return;
         }
         if(this.m_flag_change_disp || this.m_count_change_disp > 0)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.pushKeyDecide();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.ESCAPE:
               this.pushKeyCancel();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.LEFT:
               this.pushLeft();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.RIGHT:
               this.pushRight();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.UP:
               this.pushUp();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.DOWN:
               this.pushDown();
               this.m_flag_change_disp = true;
               break;
			//////////
            case 33: // RT/R2/Page Up
               this.pushKeyNextPage();
               this.m_flag_change_disp = true;
               break;
            case 45: // LT/L2/Insert
               this.pushKeyPrevPage();
               this.m_flag_change_disp = true;
               break;
			//////////
            case Keyboard.DELETE:
               this.pushKeyL();
               this.m_flag_change_disp = true;
               break;
            case Keyboard.PAGE_DOWN:
               this.pushKeyR();
               this.m_flag_change_disp = true;
               break;
            case 88:
               this.pushKeySkill();
               this.m_flag_change_disp = true;
               break;
            case 89:
               this.pushKeyRandom();
               this.m_flag_change_disp = true;
               break;
			////////// 1.23 note: after years, it seems Dimps or Qloc have finally fixed the zoom bug, so my fix, which was almost identical, is not longer needed
            case Keyboard.END:
               if(this.isKeyboardControllerActive)
               {
                  this.pushKeyRandom();
                  this.m_flag_change_disp = true;
               }
               break;
            case Keyboard.SPACE:
            case 83:
               this.pushStart();
               this.m_flag_change_disp = true;
         }
      }
      
      public function SetUserDataInt(param1:int, param2:int) : *
      {
         this.m_callback.AddCallbackSetUserDataInt(param1,param2);
      }
      
      public function SetUserDataString(param1:int, param2:String) : *
      {
         this.m_callback.AddCallbackSetUserDataString(param1,param2);
      }
      
      public function TestDestroy() : void
      {
         this.m_callback = null;
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.requestUnlock);
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitUnlock);
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitStart);
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitMain);
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.main);
         this.m_timeline.stage.removeEventListener(Event.ENTER_FRAME,this.waitEnd);
         this.m_timeline.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.checkKey);
         this.m_timeline.visible = false;
         this.m_timeline = null;
         this.m_timer.Destroy();
         this.m_timer = null;
      }
      
      public function TestCheckChangeSelect() : Boolean
      {
         return !this.m_callback.GetUserDataValidFlag(ReceiveType_CharaNameStr);
      }
      
      public function TestGetCharaList() : Array
      {
         return this.m_chara_list;
      }
      
      public function TestGetCharaVarInfo() : Array
      {
         return this.GetSelectVarInfo(this.m_current_player_index);
      }
      
      public function TestGetCurrentPlayerIndex() : int
      {
         return this.m_current_player_index;
      }
   }
}
