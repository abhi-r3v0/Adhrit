.class final Lo/cacheTrackedQuery$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cacheTrackedQuery;->onNavigationEvent(JLo/addMerge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Throwable;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/Runnable;

.field private synthetic onNavigationEvent:Lo/cacheTrackedQuery;


# direct methods
.method constructor <init>(Lo/cacheTrackedQuery;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lo/cacheTrackedQuery$extraCallback;->onNavigationEvent:Lo/cacheTrackedQuery;

    iput-object p2, p0, Lo/cacheTrackedQuery$extraCallback;->extraCallback:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1140
    iget-object p1, p0, Lo/cacheTrackedQuery$extraCallback;->onNavigationEvent:Lo/cacheTrackedQuery;

    invoke-static {p1}, Lo/cacheTrackedQuery;->onMessageChannelReady(Lo/cacheTrackedQuery;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lo/cacheTrackedQuery$extraCallback;->extraCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
