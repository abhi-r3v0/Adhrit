.class final Lo/getViewPosition$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/TintInfo;",
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
        "Lcom/dreamplug/androidapp/deeplink/CredPayDeepLinkData;",
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
.field private synthetic onMessageChannelReady:Lo/getViewPosition;


# direct methods
.method constructor <init>(Lo/getViewPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$ICustomTabsService;->onMessageChannelReady:Lo/getViewPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 56
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1125
    :goto_0
    check-cast p1, Lo/TintInfo;

    if-eqz p1, :cond_3

    .line 2030
    iget-object v0, p1, Lo/TintInfo;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1127
    iget-object v0, p0, Lo/getViewPosition$ICustomTabsService;->onMessageChannelReady:Lo/getViewPosition;

    .line 3000
    iget-object v0, v0, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 3111
    iget-object v2, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-nez v2, :cond_1

    .line 3112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    .line 1128
    :cond_1
    iget-object v2, p0, Lo/getViewPosition$ICustomTabsService;->onMessageChannelReady:Lo/getViewPosition;

    .line 4000
    iget-object v2, v2, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 1128
    iget-object v3, p0, Lo/getViewPosition$ICustomTabsService;->onMessageChannelReady:Lo/getViewPosition;

    invoke-static {v3}, Lo/getViewPosition;->extraCallback(Lo/getViewPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4019
    iget-object v3, v3, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 1128
    invoke-static {v2, v3, v5, v5, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1129
    iget-object v2, p0, Lo/getViewPosition$ICustomTabsService;->onMessageChannelReady:Lo/getViewPosition;

    .line 5000
    iget-object v2, v2, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 5030
    iget-object v3, p1, Lo/TintInfo;->ICustomTabsCallback:Ljava/lang/String;

    .line 5032
    iget-object v4, p1, Lo/TintInfo;->extraCallback:Ljava/lang/String;

    .line 6031
    iget-object p1, p1, Lo/TintInfo;->onMessageChannelReady:Ljava/lang/String;

    const-string v5, "referenceId"

    .line 1129
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6563
    new-instance v5, Lo/onGetChildDrawingOrder$sendCustomAction;

    invoke-direct {v5, v3, v4, p1}, Lo/onGetChildDrawingOrder$sendCustomAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lo/getRemoveDuration;

    invoke-virtual {v2, v5}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 7117
    iget-object p1, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 7118
    iput-object v1, v0, Lo/getMoveDuration;->onPostMessage:Ljava/util/List;

    .line 7119
    new-instance v1, Lo/getRemoveDuration$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/getRemoveDuration$onMessageChannelReady;-><init>(Ljava/util/List;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_3
    return-void
.end method
