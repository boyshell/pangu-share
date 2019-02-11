
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 装配技能错误
   */
  public class ResHeroAddSkillErrorMessage : Net.Message
  {
    /** 1:参数错误;2:找不到技能;3:研究未完成;4:重复添加技能;5:系统错误;6:技能添加数量上限;7:找不到武将卡;8:技能格已经有技能;9:技能格未开启; */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id()
    {
      return 301;
    }
  }
}