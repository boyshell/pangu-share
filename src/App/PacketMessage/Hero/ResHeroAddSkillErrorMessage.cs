
namespace App.PacketMessage.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 装配技能错误
   */
  public class ResHeroAddSkillErrorPacketMessage : Network.PacketMessage
  {
    /**  */
    public int error { get; set; }

    public override void Write(System.IO.BinaryWriter writer)
    {
      WriteInt(writer, error);
    }

    public override void Read(System.IO.BinaryReader reader)
    {
      this.error = ReadInt(reader);
    }

    public override int Id
    {
      get { return 301; }
    }
  }
}