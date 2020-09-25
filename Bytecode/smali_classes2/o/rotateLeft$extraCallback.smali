.class final Lo/rotateLeft$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:J

.field private synthetic onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

.field private synthetic onNavigationEvent:Lo/rotateLeft;


# direct methods
.method constructor <init>(Lo/rotateLeft;JLo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lo/rotateLeft$extraCallback;->onNavigationEvent:Lo/rotateLeft;

    iput-wide p2, p0, Lo/rotateLeft$extraCallback;->ICustomTabsCallback:J

    iput-object p4, p0, Lo/rotateLeft$extraCallback;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 354
    iget-object v0, p0, Lo/rotateLeft$extraCallback;->onNavigationEvent:Lo/rotateLeft;

    iget-wide v1, p0, Lo/rotateLeft$extraCallback;->ICustomTabsCallback:J

    invoke-static {v0, v1, v2}, Lo/rotateLeft;->onNavigationEvent(Lo/rotateLeft;J)Lo/emptyMap;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lo/rotateLeft$extraCallback;->onNavigationEvent:Lo/rotateLeft;

    iget-object v2, p0, Lo/rotateLeft$extraCallback;->onMessageChannelReady:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    invoke-static {v1, v0, v2}, Lo/rotateLeft;->ICustomTabsCallback(Lo/rotateLeft;Lo/emptyMap;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V

    return-void
.end method
