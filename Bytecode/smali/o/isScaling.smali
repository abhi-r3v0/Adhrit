.class public final Lo/isScaling;
.super Lo/round;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/isScaling;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraCallback:J

.field public final onMessageChannelReady:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lo/isScaling$2;

    invoke-direct {v0}, Lo/isScaling$2;-><init>()V

    sput-object v0, Lo/isScaling;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/round;-><init>()V

    .line 38
    iput-wide p1, p0, Lo/isScaling;->extraCallback:J

    .line 39
    iput-wide p3, p0, Lo/isScaling;->onMessageChannelReady:J

    return-void
.end method

.method synthetic constructor <init>(JJLo/isScaling$2;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lo/isScaling;-><init>(JJ)V

    return-void
.end method

.method static ICustomTabsCallback(Lo/DreamAppGlideModule;J)J
    .locals 7

    .line 59
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 63
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method

.method static extraCallback(Lo/DreamAppGlideModule;JLo/getWaivers;)Lo/isScaling;
    .locals 1

    .line 44
    invoke-static {p0, p1, p2}, Lo/isScaling;->ICustomTabsCallback(Lo/DreamAppGlideModule;J)J

    move-result-wide p0

    .line 45
    invoke-virtual {p3, p0, p1}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide p2

    .line 46
    new-instance v0, Lo/isScaling;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/isScaling;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 74
    iget-wide v0, p0, Lo/isScaling;->extraCallback:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lo/isScaling;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
