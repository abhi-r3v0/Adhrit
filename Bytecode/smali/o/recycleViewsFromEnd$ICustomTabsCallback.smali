.class final Lo/recycleViewsFromEnd$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleViewsFromEnd;-><init>()V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/setRemoveDuration;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "commandEvent",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
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
.field private synthetic extraCallback:Lo/recycleViewsFromEnd;


# direct methods
.method constructor <init>(Lo/recycleViewsFromEnd;)V
    .locals 0

    iput-object p1, p0, Lo/recycleViewsFromEnd$ICustomTabsCallback;->extraCallback:Lo/recycleViewsFromEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 47
    check-cast p1, Lo/getThumbTintList;

    .line 1281
    iget-object v0, p0, Lo/recycleViewsFromEnd$ICustomTabsCallback;->extraCallback:Lo/recycleViewsFromEnd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/getViewPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/getViewPosition;

    const/4 v1, 0x1

    const-string v3, "LIFESTYLE_PRIMARY_FARM_TAG"

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "tag"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2011
    :goto_1
    iget-boolean v5, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v5, :cond_3

    goto :goto_2

    .line 2015
    :cond_3
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object v2, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1283
    :goto_2
    check-cast v2, Lo/setRemoveDuration;

    .line 1284
    instance-of p1, v2, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    const/4 v1, 0x6

    const-string v5, "lifestyle"

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/recycleViewsFromEnd$ICustomTabsCallback;->extraCallback:Lo/recycleViewsFromEnd;

    .line 3000
    iget-object p1, p1, Lo/recycleViewsFromEnd;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v5

    .line 1284
    :goto_3
    invoke-static {p1, v3, v4, v4, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 1285
    :cond_5
    instance-of p1, v2, Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/recycleViewsFromEnd$ICustomTabsCallback;->extraCallback:Lo/recycleViewsFromEnd;

    .line 4000
    iget-object p1, p1, Lo/recycleViewsFromEnd;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v5

    .line 1285
    :goto_4
    invoke-static {p1, v3, v4, v4, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_7
    return-void
.end method
