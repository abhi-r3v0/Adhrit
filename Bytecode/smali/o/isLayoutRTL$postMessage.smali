.class final Lo/isLayoutRTL$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onLongClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$postMessage;->extraCallback:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 447
    iget-object p1, p0, Lo/isLayoutRTL$postMessage;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/getViewPosition;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/getViewPosition;

    const/4 v0, 0x1

    const-string v1, "LifestyleCollection"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v3, "tag"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 447
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 450
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-string/jumbo p1, "wishlist_fragment"

    const-string v3, "<set-?>"

    .line 2000
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->getSessionToken:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x2f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 451
    iget-object p1, p0, Lo/isLayoutRTL$postMessage;->extraCallback:Lo/isLayoutRTL;

    .line 3000
    iget-object p1, p1, Lo/isLayoutRTL;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v3, 0x6

    .line 451
    invoke-static {p1, v1, v2, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    goto :goto_2

    .line 453
    :cond_3
    iget-object p1, p0, Lo/isLayoutRTL$postMessage;->extraCallback:Lo/isLayoutRTL;

    .line 4000
    iget-object p1, p1, Lo/isLayoutRTL;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string v1, "long_press"

    .line 453
    invoke-static {p1, v1}, Lo/getMoveDuration;->asInterface(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 455
    :goto_2
    iget-object p1, p0, Lo/isLayoutRTL$postMessage;->extraCallback:Lo/isLayoutRTL;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    const-string v1, "context!!"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    invoke-static {p1, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    return v0
.end method
