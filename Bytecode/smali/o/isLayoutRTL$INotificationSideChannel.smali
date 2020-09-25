.class final Lo/isLayoutRTL$INotificationSideChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutRTL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isLayoutRTL;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;Lo/toDebugString$onMessageChannelReady;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$INotificationSideChannel;->ICustomTabsCallback:Lo/isLayoutRTL;

    iput-object p2, p0, Lo/isLayoutRTL$INotificationSideChannel;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lo/isLayoutRTL$INotificationSideChannel;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 618
    iget-object v0, p0, Lo/isLayoutRTL$INotificationSideChannel;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v0, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lo/isLayoutRTL$INotificationSideChannel;->ICustomTabsCallback:Lo/isLayoutRTL;

    iget-object v1, p0, Lo/isLayoutRTL$INotificationSideChannel;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/isLayoutRTL;->onMessageChannelReady(Lo/isLayoutRTL;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lo/isLayoutRTL$INotificationSideChannel;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    :cond_0
    return-void
.end method
