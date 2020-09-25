.class public Lo/setAmountRefunded;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setAmountRefunded;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraCallback:J

.field public final onMessageChannelReady:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/component30;

    invoke-direct {v0}, Lo/component30;-><init>()V

    sput-object v0, Lo/setAmountRefunded;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 7
    iput-object p1, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 8
    iput p2, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    .line 9
    iput-wide p3, p0, Lo/setAmountRefunded;->extraCallback:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lo/setAmountRefunded;->extraCallback:J

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 26
    instance-of v0, p1, Lo/setAmountRefunded;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 27
    check-cast p1, Lo/setAmountRefunded;

    .line 6011
    iget-object v0, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8011
    iget-object v2, p1, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9011
    :cond_0
    iget-object v0, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 10011
    iget-object v0, p1, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 10012
    :cond_1
    iget-wide v2, p0, Lo/setAmountRefunded;->extraCallback:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v2, v0

    .line 11012
    :cond_2
    iget-wide v6, p1, Lo/setAmountRefunded;->extraCallback:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    iget p1, p1, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v6, p1

    :cond_3
    cmp-long p1, v2, v6

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 12011
    iget-object v1, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 12012
    iget-wide v1, p0, Lo/setAmountRefunded;->extraCallback:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v1, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v1, v1

    .line 33
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 13003
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    .line 13011
    iget-object v1, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    const-string v2, "name"

    .line 35
    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    .line 13012
    iget-wide v1, p0, Lo/setAmountRefunded;->extraCallback:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget v1, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v1, v1

    .line 36
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2011
    iget-object v1, p0, Lo/setAmountRefunded;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x1

    .line 17
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget p2, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    .line 2039
    invoke-static {p1, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3012
    iget-wide v2, p0, Lo/setAmountRefunded;->extraCallback:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    iget p2, p0, Lo/setAmountRefunded;->onMessageChannelReady:I

    int-to-long v2, p2

    :cond_0
    const/4 p2, 0x3

    const/16 v4, 0x8

    .line 3049
    invoke-static {p1, p2, v4}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3050
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v2, p2, v0

    sub-int/2addr v0, v1

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
