
namespace App.PacketMessage.Building
{
  /**
   * Created by FreeMarker. DO NOT EDIT!!!
   * 建筑升级错误
   */
  public class ResBuildingUpgradeErrorPacketMessage : Network.PacketMessage
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
      get { return 356; }
    }
  }
}