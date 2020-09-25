.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$extraCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field public asBinder:Lo/setTextDelegate$onMessageChannelReady;

.field public extraCallback:Ljava/util/UUID;

.field public onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

.field public onNavigationEvent:Lo/PlaybackStateCompat$ErrorCode;

.field onPostMessage:Lo/supportShouldUpRecreateTask;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lo/PlaybackStateCompat$Builder;Ljava/util/Collection;Ljava/util/concurrent/Executor;Lo/supportShouldUpRecreateTask;Lo/PlaybackStateCompat$ErrorCode;Lo/setTextDelegate$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lo/PlaybackStateCompat$Builder;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lo/supportShouldUpRecreateTask;",
            "Lo/PlaybackStateCompat$ErrorCode;",
            "Lo/setTextDelegate$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/work/WorkerParameters;->extraCallback:Ljava/util/UUID;

    .line 70
    iput-object p2, p0, Landroidx/work/WorkerParameters;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    .line 71
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    iput-object p4, p0, Landroidx/work/WorkerParameters;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 75
    iput-object p5, p0, Landroidx/work/WorkerParameters;->onPostMessage:Lo/supportShouldUpRecreateTask;

    .line 76
    iput-object p6, p0, Landroidx/work/WorkerParameters;->onNavigationEvent:Lo/PlaybackStateCompat$ErrorCode;

    .line 78
    iput-object p7, p0, Landroidx/work/WorkerParameters;->asBinder:Lo/setTextDelegate$onMessageChannelReady;

    return-void
.end method
