
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将技能升级错误
   */
  public class ResHeroSkillUpgradeErrorMessage : Net.Message
  {
    /** 1:武将卡不存在;2:技能不存在;3:系统错误;4:等级达到上限;5:技能经验不足; */
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
      return 310;
    }
  }
}