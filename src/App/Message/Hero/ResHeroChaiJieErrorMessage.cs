
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 拆解技能错误
   */
  public class ResHeroChaiJieErrorMessage : Net.Message
  {
    /** 1:已经拆解过该技能;2:技能数量达到上限;3:武将卡不处于自由状态;4:武将卡在阵容中;5:找不到武将卡;6:系统错误;7:技能经验不足; */
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
      return 291;
    }
  }
}