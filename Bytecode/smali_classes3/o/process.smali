.class final Lo/process;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ICustomTabsCallback:Lo/processImpl;

.field extraCallback:J

.field onMessageChannelReady:J


# direct methods
.method constructor <init>(Lo/processImpl;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/process;->ICustomTabsCallback:Lo/processImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lo/process;->extraCallback:J

    .line 3
    iput-wide p4, p0, Lo/process;->onMessageChannelReady:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 5
    iget-object v0, p0, Lo/process;->ICustomTabsCallback:Lo/processImpl;

    iget-object v0, v0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setBoxBackgroundMode;

    invoke-direct {v1, p0}, Lo/setBoxBackgroundMode;-><init>(Lo/process;)V

    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method
