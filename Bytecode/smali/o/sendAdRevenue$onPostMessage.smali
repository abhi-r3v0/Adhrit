.class final Lo/sendAdRevenue$onPostMessage;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendAdRevenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lo/sendAdRevenue$onMessageChannelReady;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/sendAdRevenue;Lo/sendAdRevenue$onMessageChannelReady;)V
    .locals 0

    .line 297
    invoke-direct {p0, p2}, Lo/sendAdRevenue$onPostMessage;-><init>(Lo/sendAdRevenue$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 2

    .line 297
    check-cast p1, Lo/getRootAlpha;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1312
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method
