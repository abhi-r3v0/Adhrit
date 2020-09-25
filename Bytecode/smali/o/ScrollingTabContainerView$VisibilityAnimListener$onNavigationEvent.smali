.class final Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ScrollingTabContainerView$VisibilityAnimListener;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lorg/json/JSONObject;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
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
.field private synthetic onMessageChannelReady:Lo/ScrollingTabContainerView$VisibilityAnimListener;


# direct methods
.method constructor <init>(Lo/ScrollingTabContainerView$VisibilityAnimListener;)V
    .locals 0

    iput-object p1, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;->onMessageChannelReady:Lo/ScrollingTabContainerView$VisibilityAnimListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 10
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v0, "payload"

    .line 1021
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "url"

    .line 1022
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    const-string v2, "dropoutReason"

    .line 1023
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    :cond_2
    if-eqz v1, :cond_3

    .line 1025
    iget-object p1, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;->onMessageChannelReady:Lo/ScrollingTabContainerView$VisibilityAnimListener;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lo/ScrollingTabContainerView$VisibilityAnimListener;->onNavigationEvent(Lo/ScrollingTabContainerView$VisibilityAnimListener;I)V

    goto :goto_2

    .line 1027
    :cond_3
    iget-object p1, p0, Lo/ScrollingTabContainerView$VisibilityAnimListener$onNavigationEvent;->onMessageChannelReady:Lo/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-static {p1, v0}, Lo/ScrollingTabContainerView$VisibilityAnimListener;->onNavigationEvent(Lo/ScrollingTabContainerView$VisibilityAnimListener;I)V

    .line 10
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
