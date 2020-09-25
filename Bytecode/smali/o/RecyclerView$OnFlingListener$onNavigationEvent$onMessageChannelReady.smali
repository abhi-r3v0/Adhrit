.class public final Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;
.super Lo/RecyclerView$OnFlingListener$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$OnFlingListener$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/TrackViewModel$State$OnBoarding;",
        "Lcom/dreamplug/fabrik/ui/track/TrackViewModel$State;",
        "introInfo",
        "Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;",
        "(Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;)V",
        "getIntroInfo",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;)V
    .locals 1

    const-string v0, "introInfo"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 682
    invoke-direct {p0, v0}, Lo/RecyclerView$OnFlingListener$onNavigationEvent;-><init>(B)V

    iput-object p1, p0, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    return-void
.end method
