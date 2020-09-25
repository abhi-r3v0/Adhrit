.class public final Lo/OrderStatusResponse$$Parcelable;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/OrderStatusResponse$$Parcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:J

.field private final onMessageChannelReady:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getAttributes;

    invoke-direct {v0}, Lo/getAttributes;-><init>()V

    sput-object v0, Lo/OrderStatusResponse$$Parcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZJJ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    iput-wide p2, p0, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    iput-wide p4, p0, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/OrderStatusResponse$$Parcelable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/OrderStatusResponse$$Parcelable;

    iget-boolean v1, p0, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    iget-boolean v3, p1, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    iget-wide v5, p1, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    iget-wide v5, p1, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/getPaymentData;->onPostMessage([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectForDebugParcelable[skipPersistentStorage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",collectForDebugStartTimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",collectForDebugExpiryTimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lo/OrderStatusResponse$$Parcelable;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Lo/OrderStatusResponse$$Parcelable;->extraCallback:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lo/OrderStatusResponse$$Parcelable;->onMessageChannelReady:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
