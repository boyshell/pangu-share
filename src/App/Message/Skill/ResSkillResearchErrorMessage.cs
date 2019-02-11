
namespace App.Message.Skill
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 研究技能错误
   */
  public class ResSkillResearchErrorMessage : Net.Message
  {
    /** 1:参数错误;2:没有技能;3:武将卡不处于自由状态; */
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
      return 296;
    }
  }
}