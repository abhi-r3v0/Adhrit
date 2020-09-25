.class final Lo/dispatchAnimationsFinished$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAnimationsFinished;-><init>(Lo/onSessionEvent;)V
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
        "Lo/onGetChildDrawingOrder$onItemLoaded;",
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
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens;",
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
.field private synthetic onNavigationEvent:Lo/dispatchAnimationsFinished;


# direct methods
.method constructor <init>(Lo/dispatchAnimationsFinished;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAnimationsFinished$5;->onNavigationEvent:Lo/dispatchAnimationsFinished;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 9
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_2

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1016
    :goto_0
    check-cast p1, Lo/onGetChildDrawingOrder$onItemLoaded;

    if-eqz p1, :cond_2

    .line 1017
    iget-object v0, p0, Lo/dispatchAnimationsFinished$5;->onNavigationEvent:Lo/dispatchAnimationsFinished;

    .line 3009
    iget-object v0, v0, Lo/dispatchAnimationsFinished;->onNavigationEvent:Lo/performCompletion$onNavigationEvent;

    .line 1017
    new-instance v1, Lo/dispatchAnimationsFinished$onNavigationEvent;

    invoke-virtual {p1}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/dispatchAnimationsFinished$5$extraCallback;

    invoke-direct {v3, p1}, Lo/dispatchAnimationsFinished$5$extraCallback;-><init>(Lo/onGetChildDrawingOrder$onItemLoaded;)V

    check-cast v3, Lo/getServerTime;

    invoke-direct {v1, v2, v3}, Lo/dispatchAnimationsFinished$onNavigationEvent;-><init>(Ljava/lang/String;Lo/getServerTime;)V

    const-string p1, "fragmentData"

    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4029
    iget-object p1, v1, Lo/dispatchAnimationsFinished$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 3046
    invoke-virtual {v0, p1}, Lo/performCompletion$onNavigationEvent;->onPostMessage(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4030
    iget-object p1, v1, Lo/dispatchAnimationsFinished$onNavigationEvent;->onNavigationEvent:Lo/getServerTime;

    .line 3046
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 5029
    :cond_1
    iget-object v1, v1, Lo/dispatchAnimationsFinished$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 3047
    invoke-virtual {v0, p1, v1}, Lo/performCompletion$onNavigationEvent;->extraCallback(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
