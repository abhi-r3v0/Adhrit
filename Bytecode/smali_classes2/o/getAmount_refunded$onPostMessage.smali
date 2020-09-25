.class final Lo/getAmount_refunded$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAmount_refunded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final onMessageChannelReady:Lo/RefundAccount$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RefundAccount$$Parcelable<",
            "*>;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/setAmountRefunded;


# direct methods
.method private constructor <init>(Lo/RefundAccount$$Parcelable;Lo/setAmountRefunded;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Lo/setAmountRefunded;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    .line 3
    iput-object p2, p0, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    return-void
.end method

.method synthetic constructor <init>(Lo/RefundAccount$$Parcelable;Lo/setAmountRefunded;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lo/getAmount_refunded$onPostMessage;-><init>(Lo/RefundAccount$$Parcelable;Lo/setAmountRefunded;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 5
    instance-of v1, p1, Lo/getAmount_refunded$onPostMessage;

    if-eqz v1, :cond_4

    .line 6
    check-cast p1, Lo/getAmount_refunded$onPostMessage;

    .line 7
    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    iget-object v2, p1, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 1001
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    iget-object p1, p1, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    if-eq v1, p1, :cond_3

    if-eqz v1, :cond_2

    .line 2001
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2003
    new-instance v0, Lo/getPaymentData$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getPaymentData$extraCallback;-><init>(Ljava/lang/Object;B)V

    .line 12
    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/getAmount_refunded$onPostMessage;->onPostMessage:Lo/setAmountRefunded;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lo/getPaymentData$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Lo/getPaymentData$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
