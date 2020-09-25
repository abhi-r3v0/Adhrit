.class public final Lo/setVideoPath;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setVideoPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:J

.field private final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setOnTouchListener;

    invoke-direct {v0}, Lo/setOnTouchListener;-><init>()V

    sput-object v0, Lo/setVideoPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/setVideoPath;->onMessageChannelReady:I

    iput p2, p0, Lo/setVideoPath;->extraCallback:I

    iput-wide p3, p0, Lo/setVideoPath;->onNavigationEvent:J

    iput-wide p5, p0, Lo/setVideoPath;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo/setVideoPath;

    iget v2, p0, Lo/setVideoPath;->onMessageChannelReady:I

    iget v3, p1, Lo/setVideoPath;->onMessageChannelReady:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/setVideoPath;->extraCallback:I

    iget v3, p1, Lo/setVideoPath;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/setVideoPath;->onNavigationEvent:J

    iget-wide v4, p1, Lo/setVideoPath;->onNavigationEvent:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/setVideoPath;->onPostMessage:J

    iget-wide v4, p1, Lo/setVideoPath;->onPostMessage:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lo/setVideoPath;->extraCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/setVideoPath;->onMessageChannelReady:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/setVideoPath;->onPostMessage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/setVideoPath;->onNavigationEvent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/getPaymentData;->onPostMessage([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkLocationStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/setVideoPath;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/setVideoPath;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elapsed time NS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/setVideoPath;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " system time ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/setVideoPath;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/setVideoPath;->onMessageChannelReady:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget v0, p0, Lo/setVideoPath;->extraCallback:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lo/setVideoPath;->onNavigationEvent:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lo/setVideoPath;->onPostMessage:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
