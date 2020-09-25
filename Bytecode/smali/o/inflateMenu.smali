.class public final Lo/inflateMenu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/inflateMenu$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/logout/LogOutCommand;",
        "Lcom/dreamplug/utils/helpers/Command;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/inflateMenu;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lo/inflateMenu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/inflateMenu;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    sget-object v1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-class v1, Lo/getContentInsetRight;

    invoke-static {v1}, Lo/factorInBindTime;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getContentInsetRight;

    .line 1097
    sget-object v2, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 41
    :goto_0
    invoke-interface {v1, v2}, Lo/getContentInsetRight;->ICustomTabsCallback(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;

    move-result-object v1

    .line 44
    new-instance v2, Lo/inflateMenu$ICustomTabsCallback;

    invoke-direct {v2}, Lo/inflateMenu$ICustomTabsCallback;-><init>()V

    check-cast v2, Lo/RecyclerView$Recycler;

    const-string v4, "LogOutCommand"

    const-string/jumbo v5, "tag"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4044
    iget-object v1, v1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v4, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v4, v2}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 49
    sget-object v1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    invoke-virtual {v1}, Lo/onActivityPostCreated;->onNavigationEvent()V

    .line 50
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lo/setTrackTintMode;->extraCallback()V

    .line 51
    sget-object v1, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    invoke-static {}, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent()V

    .line 52
    sget-object v1, Lo/stopDrag;->onNavigationEvent:Lo/stopDrag;

    .line 6000
    sget-object v1, Lo/stopDrag;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    .line 5014
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    sget-object v1, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-virtual {v1}, Lo/isPendingInitialRun;->ICustomTabsCallback$Stub()V

    .line 54
    invoke-static {}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->extraCallback()V

    .line 55
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->asInterface()V

    .line 56
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6051
    sget-object v0, Lo/getColorStateList;->onNavigationEvent:Lo/getColorStateList;

    new-instance v1, Lo/getDimensionPixelOffset$onNavigationEvent;

    invoke-direct {v1, p1}, Lo/getDimensionPixelOffset$onNavigationEvent;-><init>(Landroid/content/Context;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    sget-object v0, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    invoke-static {}, Lo/updateToolbarLogo;->onPostMessage()V

    .line 58
    sget-object v0, Lo/onOptionsMenuClosed;->onPostMessage:Lo/onOptionsMenuClosed;

    invoke-static {}, Lo/onOptionsMenuClosed;->extraCallback()V

    .line 59
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    invoke-static {}, Lo/setTrackResource;->extraCallback()V

    .line 61
    :try_start_0
    sget-object v0, Lo/invalidateDisplayListInt;->onNavigationEvent:Lo/invalidateDisplayListInt;

    .line 6101
    invoke-static {}, Lo/invalidateDisplayListInt;->ICustomTabsCallback()Lo/getPrevName;

    move-result-object v0

    .line 6695
    invoke-virtual {v0}, Lo/getPrevName;->close()V

    .line 6696
    iget-object v1, v0, Lo/getPrevName;->onPostMessage:Lo/getEventCache;

    iget-object v0, v0, Lo/getPrevName;->onMessageChannelReady:Ljava/io/File;

    invoke-interface {v1, v0}, Lo/getEventCache;->asBinder(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 63
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "$this$debugStackTrace"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7005
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7006
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/ensureMenuView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v1, p0, Lo/inflateMenu;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "message"

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "force_logout"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const v1, 0x10008000

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 75
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_3
    sget-object p1, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-virtual {p1}, Lo/getCompoundPaddingRight;->ICustomTabsCallback()V

    .line 78
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 7072
    sget-object p1, Lo/onPanelClosed;->ICustomTabsCallback:Lo/setActive;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8000
    sget-object p1, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 7073
    invoke-virtual {p1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 79
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onMessageChannelReady()V

    .line 80
    sget-object p1, Lo/isFocusedChildVisibleAfterScrolling;->extraCallback:Lo/isFocusedChildVisibleAfterScrolling;

    invoke-static {}, Lo/isFocusedChildVisibleAfterScrolling;->ICustomTabsCallback()V

    .line 81
    sget-object p1, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    invoke-static {}, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback$Stub()V

    .line 82
    sget-object p1, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 9000
    sget-object p1, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 8030
    invoke-virtual {p1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8031
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 83
    sget-object p1, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    invoke-static {}, Lo/findOneVisibleChild;->extraCallback()V

    .line 84
    sget-object p1, Lo/indexOf;->ICustomTabsCallback:Lo/indexOf;

    invoke-static {}, Lo/indexOf;->ICustomTabsCallback()V

    .line 85
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {p1}, Lo/onDestroyOptionsMenu;->extraCallback(Lo/onDestroyOptionsMenu;)V

    .line 86
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->ICustomTabsCallback()V

    .line 87
    sget-object p1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    invoke-static {}, Lo/openOptionsMenu;->onMessageChannelReady()V

    .line 88
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->onMessageChannelReady()V

    :cond_4
    return-void
.end method
