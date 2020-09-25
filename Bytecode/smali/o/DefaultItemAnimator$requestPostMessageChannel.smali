.class final Lo/DefaultItemAnimator$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator;
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
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;Lo/toDebugString$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->onNavigationEvent:Lo/DefaultItemAnimator;

    iput-object p2, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 53
    check-cast p1, Ljava/util/List;

    .line 1323
    iget-object v0, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1324
    iget-object p1, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->ICustomTabsCallback:Lo/toDebugString$onMessageChannelReady;

    iget-boolean p1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    .line 1325
    iget-object p1, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->onNavigationEvent:Lo/DefaultItemAnimator;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;I)V

    .line 1326
    iget-object p1, p0, Lo/DefaultItemAnimator$requestPostMessageChannel;->onNavigationEvent:Lo/DefaultItemAnimator;

    invoke-static {p1}, Lo/DefaultItemAnimator;->onTransact(Lo/DefaultItemAnimator;)V

    :cond_0
    return-void
.end method
