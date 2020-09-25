.class final Lo/getContentInsetStart$onNavigationEvent$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getContentInsetStart$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getContentInsetStart$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/getContentInsetStart$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 214
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    invoke-static {}, Lo/openOptionsMenu;->extraCallback()V

    .line 215
    iget-object v0, p0, Lo/getContentInsetStart$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/getContentInsetStart$onNavigationEvent;

    iget-object v0, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 1077
    iget-object v0, v0, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 215
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "active"

    .line 215
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 216
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 217
    invoke-static {}, Lo/getContentInsetStart;->ICustomTabsCallback()Z

    move-result v1

    const-string v2, "new_user"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    new-instance v1, Lo/ensureContentInsets$onPostMessage;

    .line 219
    const-class v3, Lo/setTitleMarginTop;

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    move-object v2, v1

    .line 218
    invoke-direct/range {v2 .. v9}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V

    check-cast v1, Lo/ensureContentInsets;

    goto :goto_0

    .line 224
    :cond_0
    sget-object v1, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 2033
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v2, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2034
    invoke-virtual {v1}, Lo/setTrackResource;->onNavigationEvent()V

    .line 225
    :cond_1
    new-instance v1, Lo/ensureContentInsets$onPostMessage;

    .line 226
    const-class v4, Lo/notifyDataSetChanged;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1a

    move-object v3, v1

    .line 225
    invoke-direct/range {v3 .. v10}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V

    check-cast v1, Lo/ensureContentInsets;

    .line 215
    :goto_0
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 230
    sget-object v0, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {v0}, Lo/shouldCollapse;->onPostMessage(Lo/shouldCollapse;)V

    return-void
.end method
