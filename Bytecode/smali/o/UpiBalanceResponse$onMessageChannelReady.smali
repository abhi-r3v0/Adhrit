.class final Lo/UpiBalanceResponse$onMessageChannelReady;
.super Lo/TransactionDetailsJsonAdapter;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/TransactionDetailsJsonAdapter;",
        "Ljava/lang/Comparable<",
        "Lo/UpiBalanceResponse$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private extraCallback:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lo/TransactionDetailsJsonAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/UpiBalanceResponse$2;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lo/UpiBalanceResponse$onMessageChannelReady;-><init>()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/UpiBalanceResponse$onMessageChannelReady;J)J
    .locals 0

    .line 176
    iput-wide p1, p0, Lo/UpiBalanceResponse$onMessageChannelReady;->extraCallback:J

    return-wide p1
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 176
    check-cast p1, Lo/UpiBalanceResponse$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lo/UpiBalanceResponse$onMessageChannelReady;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)I

    move-result p1

    return p1
.end method

.method public final extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)I
    .locals 8

    .line 183
    invoke-virtual {p0}, Lo/getChannel;->r_()Z

    move-result v0

    invoke-virtual {p1}, Lo/getChannel;->r_()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lo/getChannel;->r_()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 186
    :cond_1
    iget-wide v0, p0, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v4, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 188
    iget-wide v0, p0, Lo/UpiBalanceResponse$onMessageChannelReady;->extraCallback:J

    iget-wide v6, p1, Lo/UpiBalanceResponse$onMessageChannelReady;->extraCallback:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v3
.end method
