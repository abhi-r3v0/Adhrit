.class final Lo/dispatchAttachedToWindow$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onPostMessage:Lo/dispatchAttachedToWindow;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAttachedToWindow$getInterfaceDescriptor;->onPostMessage:Lo/dispatchAttachedToWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 52
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "navigation_profile_click"

    .line 1183
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1184
    iget-object p1, p0, Lo/dispatchAttachedToWindow$getInterfaceDescriptor;->onPostMessage:Lo/dispatchAttachedToWindow;

    .line 2000
    iget-object p1, p1, Lo/dispatchAttachedToWindow;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 2273
    new-instance v0, Lo/onGetChildDrawingOrder$onLoadChildren;

    new-instance v8, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;

    const/4 v2, 0x0

    const-string v3, "profile"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)V

    invoke-direct {v0, v8}, Lo/onGetChildDrawingOrder$onLoadChildren;-><init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$ICustomTabsCallback;)V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 52
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
