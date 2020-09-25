.class final Lo/shouldDeferAccessibilityEvent$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldDeferAccessibilityEvent;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
.field private synthetic onPostMessage:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 59
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    .line 1203
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$CustomActionCallback:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x4a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    new-instance v0, Lo/onActivityResult;

    invoke-direct {v0}, Lo/onActivityResult;-><init>()V

    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/shouldDeferAccessibilityEvent;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1301a6

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "context"

    .line 2027
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    sget v4, Lo/preferLastSpan$ICustomTabsCallback$Stub;->success_toast_layout:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 2121
    :cond_0
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/shouldDeferAccessibilityEvent;

    .line 3121
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 1207
    invoke-static {v0, p1}, Lo/shouldDeferAccessibilityEvent;->onMessageChannelReady(Lo/shouldDeferAccessibilityEvent;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    :cond_1
    return-void
.end method
