
namespace App.Message.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将移除技能错误
   */
  public class ResHeroRemoveSkillErrorMessage : Net.Message
  {
    /** 1:不存在的英雄;2:不存在的技能; */
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
      return 316;
    }
  }
}