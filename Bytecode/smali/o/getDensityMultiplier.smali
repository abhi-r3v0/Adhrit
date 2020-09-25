.class public final Lo/getDensityMultiplier;
.super Lo/round;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getDensityMultiplier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:J

.field public final onMessageChannelReady:J

.field public final onPostMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lo/getDensityMultiplier$3;

    invoke-direct {v0}, Lo/getDensityMultiplier$3;-><init>()V

    sput-object v0, Lo/getDensityMultiplier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J[BJ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 41
    iput-wide p4, p0, Lo/getDensityMultiplier;->ICustomTabsCallback:J

    .line 42
    iput-wide p1, p0, Lo/getDensityMultiplier;->onMessageChannelReady:J

    .line 43
    iput-object p3, p0, Lo/getDensityMultiplier;->onPostMessage:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDensityMultiplier;->ICustomTabsCallback:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/getDensityMultiplier;->onMessageChannelReady:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lo/getDensityMultiplier;->onPostMessage:[B

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lo/getDensityMultiplier$3;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/getDensityMultiplier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static ICustomTabsCallback(Lo/DreamAppGlideModule;IJ)Lo/getDensityMultiplier;
    .locals 6

    .line 55
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v1

    add-int/lit8 p1, p1, -0x4

    .line 56
    new-array v3, p1, [B

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v3, v0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 58
    new-instance p0, Lo/getDensityMultiplier;

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lo/getDensityMultiplier;-><init>(J[BJ)V

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget-wide v0, p0, Lo/getDensityMultiplier;->ICustomTabsCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lo/getDensityMultiplier;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object p2, p0, Lo/getDensityMultiplier;->onPostMessage:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object p2, p0, Lo/getDensityMultiplier;->onPostMessage:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
