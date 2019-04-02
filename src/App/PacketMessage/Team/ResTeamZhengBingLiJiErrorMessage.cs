
namespace App.PacketMessage.Team
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 征兵(立即)错误
   */
  public class ResTeamZhengBingLiJiErrorPacketMessage : Network.PacketMessage
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
      get { return 326; }
    }
  }
}