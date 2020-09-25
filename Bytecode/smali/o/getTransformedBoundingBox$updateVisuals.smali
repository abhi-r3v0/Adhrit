.class final Lo/getTransformedBoundingBox$updateVisuals;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/String;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "text",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$updateVisuals;->onNavigationEvent:Lo/getTransformedBoundingBox;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 58
    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lo/getTransformedBoundingBox$updateVisuals;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 2181
    iget-object v0, v0, Lo/getTransformedBoundingBox;->ICustomTabsCallback:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v1, p0, Lo/getTransformedBoundingBox$updateVisuals;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {v1}, Lo/getTransformedBoundingBox;->ICustomTabsCallback(Lo/getTransformedBoundingBox;)Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v0, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    const-string v2, "it.id"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_0
    iget-object v0, p0, Lo/getTransformedBoundingBox$updateVisuals;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {v0, p1}, Lo/getTransformedBoundingBox;->extraCallback(Lo/getTransformedBoundingBox;Ljava/lang/String;)V

    .line 58
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
