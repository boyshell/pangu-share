
namespace App.PacketMessage.Skill
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 研究技能错误
   */
  public class ResSkillResearchErrorPacketMessage : Network.PacketMessage
  {
    /**  */
    public string error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteString(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadString(reader);
    }

    public override int Id
    {
      get { return 296; }
    }
  }
}