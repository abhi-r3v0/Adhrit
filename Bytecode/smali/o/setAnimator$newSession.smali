.class final Lo/setAnimator$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAnimator;
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
.field private synthetic ICustomTabsCallback:Lo/setAnimator;


# direct methods
.method constructor <init>(Lo/setAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/setAnimator$newSession;->ICustomTabsCallback:Lo/setAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1141
    iget-object v0, p0, Lo/setAnimator$newSession;->ICustomTabsCallback:Lo/setAnimator;

    invoke-static {v0}, Lo/setAnimator;->onNavigationEvent(Lo/setAnimator;)Lo/onDestroyView;

    move-result-object v0

    invoke-static {v0}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 1142
    iget-object v0, p0, Lo/setAnimator$newSession;->ICustomTabsCallback:Lo/setAnimator;

    invoke-static {v0}, Lo/setAnimator;->onRelationshipValidationResult(Lo/setAnimator;)Lo/getAnimator;

    move-result-object v0

    .line 2044
    invoke-virtual {v0}, Lo/getAnimator;->onPostMessage()V

    .line 2045
    iget-boolean v1, v0, Lo/getAnimator;->onNavigationEvent:Z

    if-nez v1, :cond_0

    .line 2046
    invoke-static {v0}, Lo/getAnimator;->onPostMessage(Lo/getAnimator;)V

    .line 41
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
