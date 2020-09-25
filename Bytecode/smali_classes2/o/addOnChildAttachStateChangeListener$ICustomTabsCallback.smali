.class final Lo/addOnChildAttachStateChangeListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnChildAttachStateChangeListener;-><init>()V
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
        "Lo/throwIfInMutationOperation<",
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
        "it",
        "Lcom/dreamplug/utils/Event;",
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
.field private synthetic extraCallback:Lo/addOnChildAttachStateChangeListener;


# direct methods
.method constructor <init>(Lo/addOnChildAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnChildAttachStateChangeListener$ICustomTabsCallback;->extraCallback:Lo/addOnChildAttachStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 24
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2005
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 2023
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1064
    check-cast p1, Lo/setRemoveDuration;

    .line 1065
    instance-of v0, p1, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/addOnChildAttachStateChangeListener$ICustomTabsCallback;->extraCallback:Lo/addOnChildAttachStateChangeListener;

    .line 3000
    iget-object v0, v0, Lo/addOnChildAttachStateChangeListener;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/getMoveDuration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1065
    check-cast p1, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    .line 3055
    iget-object v5, p1, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x17

    .line 1065
    invoke-static/range {v1 .. v7}, Lo/getMoveDuration;->onPostMessage(Lo/getMoveDuration;Ljava/lang/String;Lo/getStackFromEnd;Lo/removeItemDecoration;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method
