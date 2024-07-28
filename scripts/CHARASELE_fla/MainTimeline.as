package CHARASELE_fla
{
   import action_script.CharaSele;
   import flash.display.MovieClip;
   
   /*import _img.chara_arw.png;
   import _img.chara_csr01.png;
   import _img.chara_csr02.png;
   import _img.chara_ef_name01.png;
   import _img.chara_icon_lock.png;
   import _img.chara_icon_new.png;
   import _img.chara_icon_you.png;
   import _img.chara_img_vs.png;
   import _img.chara_plt_icon01.png;
   import _img.chara_plt_icon02.png;
   import _img.chara_plt_local01.png;
   import _img.chara_plt_team.png;
   import _img.chara_plt_type.png;
   import _img.chara_variation.png;
   import _img.plt_window02.png;
   import _img.txt_chara_1p.png;
   import _img.txt_chara_team.png;
   import _img.txt_chara_type.png;*/
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var cha_arrow:MovieClip;
      
      public var cha_frame:MovieClip;
      
      public var cha_new:MovieClip;
      
      public var cha_parameter:MovieClip;
      
      public var cha_select:MovieClip;
      
      public var cha_select_cur:MovieClip;
      
      public var cha_skill:MovieClip;
      
      public var press2P:MovieClip;
      
      public var timer:MovieClip;
      
      public var m_main:CharaSele;
	  
	  public var aaa1:_CMN_M_frame_70;
	  public var aaa2:mc_arw_l_65;
	  public var aaa3:mc_arw_r_68;
	  public var aaa4:mc_btnact_chamyset_22;
	  public var aaa5:mc_cha_arrow_63;
	  public var aaa6:mc_cha_cursol_50;
	  public var aaa7:mc_cha_new_55;
	  public var aaa8:mc_cha_parameter_1;
	  public var aaa9:mc_cha_select_43;
	  public var aaa10:mc_cha_skill_58;
	  public var aaa11:mc_chara_btnact_45;
	  public var aaa12:mc_chara_new_56;
	  public var aaa13:mc_chara_set_44;
	  public var aaa14:mc_ready_btnact_enm_12;
	  public var aaa15:mc_ready_btnact_fri_17;
	  public var aaa16:mc_ready_nest_enm_9;
	  public var aaa17:mc_ready_nest_fri_16;
	  public var aaa18:mc_timer_74;
	  public var aaa19:sys_2Ppress_71;
	  
	  /*public var ppp1:_img.chara_arw.png;
	  public var ppp2:_img.chara_csr01.png;
	  public var ppp3:_img.chara_csr02.png;
	  public var ppp4:_img.chara_ef_name01.png;
	  public var ppp5:_img.chara_icon_lock.png;
	  public var ppp6:_img.chara_icon_new.png;
	  public var ppp7:_img.chara_icon_you.png;
	  public var ppp8:_img.chara_img_vs.png;
	  public var ppp9:_img.chara_plt_icon01.png;
	  public var ppp10:_img.chara_plt_icon02.png;
	  public var ppp11:_img.chara_plt_local01.png;
	  public var ppp12:_img.chara_plt_team.png;
	  public var ppp13:_img.chara_plt_type.png;
	  public var ppp14:_img.chara_variation.png;
	  public var ppp15:_img.plt_window02.png;
	  public var ppp16:_img.txt_chara_1p.png;
	  public var ppp17:_img.txt_chara_team.png;
	  public var ppp18:_img.txt_chara_type.png;*/
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.m_main = null;
         if(!this.m_main)
         {
            this.m_main = new CharaSele();
         }
         this.m_main.Initialize(this);
         stop();
      }
   }
}
