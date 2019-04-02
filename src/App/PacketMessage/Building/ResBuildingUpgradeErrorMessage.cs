
namespace App.PacketMessage.Building
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 建筑升级错误
   */
  public class ResBuildingUpgradeErrorPacketMessage : Network.PacketMessage
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
      get { return 356; }
    }
  }
}