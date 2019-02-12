
namespace App.PacketMessage.Team
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 取消征兵错误
   */
  public class ResTeamZhengBingCancelErrorPacketMessage : Network.PacketMessage
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
      get { return 332; }
    }
  }
}