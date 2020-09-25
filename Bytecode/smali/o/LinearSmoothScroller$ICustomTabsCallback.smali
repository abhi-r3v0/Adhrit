.class final Lo/LinearSmoothScroller$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LinearSmoothScroller;-><init>()V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/LinearSmoothScroller;


# direct methods
.method constructor <init>(Lo/LinearSmoothScroller;)V
    .locals 0

    iput-object p1, p0, Lo/LinearSmoothScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/LinearSmoothScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    .line 1081
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1082
    iget-object p1, p0, Lo/LinearSmoothScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/LinearSmoothScroller;

    .line 2028
    iget-object p1, p1, Lo/LinearSmoothScroller;->onNavigationEvent:Lo/setActive;

    if-eqz p1, :cond_0

    .line 1082
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1083
    :cond_0
    iget-object p1, p0, Lo/LinearSmoothScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/LinearSmoothScroller;

    invoke-static {p1}, Lo/LinearSmoothScroller;->onPostMessage(Lo/LinearSmoothScroller;)V

    .line 1084
    iget-object p1, p0, Lo/LinearSmoothScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/LinearSmoothScroller;

    invoke-static {p1}, Lo/LinearSmoothScroller;->ICustomTabsCallback(Lo/LinearSmoothScroller;)Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object p1

    sget-object v0, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    invoke-static {}, Lo/getHorizontalSnapPreference;->extraCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 2108
    iget-object p1, p1, Lo/MediaControllerCompatApi24$TransportControls;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;

    if-eqz p1, :cond_1

    .line 2145
    iget-object v0, p1, Lo/MediaControllerCompatApi24$TransportControls$extraCallback;->onPostMessage:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    :cond_1
    return-void
.end method
