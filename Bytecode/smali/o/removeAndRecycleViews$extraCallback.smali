.class final Lo/removeAndRecycleViews$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeAndRecycleViews;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V
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
        "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
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
        "state",
        "Landroidx/lifecycle/Lifecycle$State;",
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
.field private synthetic onNavigationEvent:Lo/removeAndRecycleViews;


# direct methods
.method constructor <init>(Lo/removeAndRecycleViews;)V
    .locals 0

    iput-object p1, p0, Lo/removeAndRecycleViews$extraCallback;->onNavigationEvent:Lo/removeAndRecycleViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 50
    check-cast p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1215
    iget-object v0, p0, Lo/removeAndRecycleViews$extraCallback;->onNavigationEvent:Lo/removeAndRecycleViews;

    invoke-static {v0, p1}, Lo/removeAndRecycleViews;->ICustomTabsCallback(Lo/removeAndRecycleViews;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 1216
    iget-object p1, p0, Lo/removeAndRecycleViews$extraCallback;->onNavigationEvent:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->extraCallback(Lo/removeAndRecycleViews;)V

    return-void
.end method
