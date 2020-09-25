.class final Lo/exceptionLabel$postMessage$4$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/exceptionLabel$postMessage$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field private synthetic ICustomTabsCallback:Lo/exceptionLabel$postMessage$4;


# direct methods
.method constructor <init>(Lo/exceptionLabel$postMessage$4;)V
    .locals 0

    iput-object p1, p0, Lo/exceptionLabel$postMessage$4$onNavigationEvent;->ICustomTabsCallback:Lo/exceptionLabel$postMessage$4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1380
    iget-object v0, p0, Lo/exceptionLabel$postMessage$4$onNavigationEvent;->ICustomTabsCallback:Lo/exceptionLabel$postMessage$4;

    iget-object v0, v0, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object v0, v0, Lo/exceptionLabel$postMessage;->onNavigationEvent:Lo/exceptionLabel;

    iget-object v1, p0, Lo/exceptionLabel$postMessage$4$onNavigationEvent;->ICustomTabsCallback:Lo/exceptionLabel$postMessage$4;

    iget-object v1, v1, Lo/exceptionLabel$postMessage$4;->onPostMessage:Lo/exceptionLabel$postMessage;

    iget-object v1, v1, Lo/exceptionLabel$postMessage;->ICustomTabsCallback:Lo/updateAnchorInfoForLayout;

    invoke-static {v0, v1}, Lo/exceptionLabel;->extraCallback(Lo/exceptionLabel;Lo/updateAnchorInfoForLayout;)V

    .line 359
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
