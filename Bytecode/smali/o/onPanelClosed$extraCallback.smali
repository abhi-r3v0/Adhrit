.class final Lo/onPanelClosed$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPanelClosed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Long;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/LiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/onPanelClosed$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onPanelClosed$extraCallback;

    invoke-direct {v0}, Lo/onPanelClosed$extraCallback;-><init>()V

    sput-object v0, Lo/onPanelClosed$extraCallback;->onPostMessage:Lo/onPanelClosed$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1033
    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 2000
    sget-object v0, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1033
    check-cast v0, Landroidx/lifecycle/LiveData;

    sget-object v1, Lo/onPanelClosed$extraCallback$1;->onNavigationEvent:Lo/onPanelClosed$extraCallback$1;

    check-cast v1, Lo/onServiceConnected;

    .line 2072
    new-instance v2, Lo/MediaControllerCompatApi24$TransportControls;

    invoke-direct {v2}, Lo/MediaControllerCompatApi24$TransportControls;-><init>()V

    .line 2073
    new-instance v3, Lo/getController$2;

    invoke-direct {v3, v2, v1}, Lo/getController$2;-><init>(Lo/MediaControllerCompatApi24$TransportControls;Lo/onServiceConnected;)V

    invoke-virtual {v2, v0, v3}, Lo/MediaControllerCompatApi24$TransportControls;->onMessageChannelReady(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    return-object v2
.end method
