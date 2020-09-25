.class final Lo/isForwardFling$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isForwardFling;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V
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
        "Lo/unregisterAdapterDataObserver;",
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
        "bottomBarState",
        "Lcom/dreamplug/fabrik/ui/main/BottomBarState;",
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
.field private synthetic onNavigationEvent:Lo/isForwardFling;


# direct methods
.method constructor <init>(Lo/isForwardFling;)V
    .locals 0

    iput-object p1, p0, Lo/isForwardFling$extraCallback;->onNavigationEvent:Lo/isForwardFling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 42
    check-cast p1, Lo/unregisterAdapterDataObserver;

    .line 1219
    iget-object v0, p0, Lo/isForwardFling$extraCallback;->onNavigationEvent:Lo/isForwardFling;

    invoke-static {v0, p1}, Lo/isForwardFling;->onMessageChannelReady(Lo/isForwardFling;Lo/unregisterAdapterDataObserver;)V

    .line 1220
    iget-object p1, p0, Lo/isForwardFling$extraCallback;->onNavigationEvent:Lo/isForwardFling;

    invoke-static {p1}, Lo/isForwardFling;->extraCallback(Lo/isForwardFling;)V

    return-void
.end method
