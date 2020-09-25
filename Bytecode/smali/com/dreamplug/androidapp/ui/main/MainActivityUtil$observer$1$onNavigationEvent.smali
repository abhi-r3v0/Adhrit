.class final Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback(Lo/toLegacyStreamType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1098
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x10008000

    if-nez v0, :cond_0

    .line 1099
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v2, v2, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 2042
    iget-object v2, v2, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1099
    check-cast v2, Landroid/content/Context;

    const-class v3, Lo/ensureMenuView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1102
    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v1, v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 3042
    iget-object v1, v1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1102
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1103
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 4042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1103
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1104
    :cond_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v0, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "active"

    .line 1104
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1105
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v2, v2, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 5042
    iget-object v2, v2, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1105
    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1108
    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v1, v1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 6042
    iget-object v1, v1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1108
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1109
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 7042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1109
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
