.class public final Lo/setSupportProgressBarIndeterminate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field final onMessageChannelReady:Lo/supportShouldUpRecreateTask;

.field final onPostMessage:Landroidx/work/impl/WorkDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    .line 48
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/setSupportProgressBarIndeterminate;->onPostMessage:Landroidx/work/impl/WorkDatabase;

    .line 62
    iput-object p2, p0, Lo/setSupportProgressBarIndeterminate;->onMessageChannelReady:Lo/supportShouldUpRecreateTask;

    return-void
.end method
