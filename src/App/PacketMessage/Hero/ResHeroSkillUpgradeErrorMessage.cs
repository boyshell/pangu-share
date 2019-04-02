
namespace App.PacketMessage.Hero
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 武将技能升级错误
   */
  public class ResHeroSkillUpgradeErrorPacketMessage : Network.PacketMessage
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
      get { return 310; }
    }
  }
}