.class final Lo/addChildDrawingOrderCallback$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addChildDrawingOrderCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/addChildDrawingOrderCallback;


# direct methods
.method constructor <init>(Lo/addChildDrawingOrderCallback;)V
    .locals 0

    iput-object p1, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 43
    check-cast p1, Lo/addWrite;

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1195
    iget-object v0, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1195
    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {v0, p1}, Lo/addChildDrawingOrderCallback;->onNavigationEvent(Lo/addChildDrawingOrderCallback;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 1196
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->newSession(Lo/addChildDrawingOrderCallback;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const v0, -0x539f09b5

    if-eq p1, v0, :cond_4

    const v0, -0x4c696bc3

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "failed"

    .line 1200
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1201
    iget-object v0, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    invoke-static {v0}, Lo/addChildDrawingOrderCallback;->newSession(Lo/addChildDrawingOrderCallback;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/addChildDrawingOrderCallback;->onNavigationEvent(Lo/addChildDrawingOrderCallback;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "completed"

    .line 1197
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1198
    iget-object v0, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    invoke-static {v0}, Lo/addChildDrawingOrderCallback;->newSession(Lo/addChildDrawingOrderCallback;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/addChildDrawingOrderCallback;->onNavigationEvent(Lo/addChildDrawingOrderCallback;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Ljava/lang/String;)V

    return-void

    .line 1204
    :cond_5
    :goto_1
    iget-object p1, p0, Lo/addChildDrawingOrderCallback$asInterface;->ICustomTabsCallback:Lo/addChildDrawingOrderCallback;

    invoke-static {p1}, Lo/addChildDrawingOrderCallback;->warmup(Lo/addChildDrawingOrderCallback;)V

    return-void
.end method
