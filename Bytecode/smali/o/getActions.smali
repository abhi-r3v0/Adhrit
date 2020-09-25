.class public final Lo/getActions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getActions$onPostMessage;,
        Lo/getActions$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/PlaybackStateCompat$ErrorCode;

.field public final ICustomTabsCallback$Stub:I

.field private final asBinder:Z

.field public final asInterface:I

.field public final extraCallback:Ljava/util/concurrent/Executor;

.field public final onMessageChannelReady:Lo/setState;

.field public final onNavigationEvent:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

.field public final onPostMessage:Ljava/util/concurrent/Executor;

.field public final onRelationshipValidationResult:I

.field public final onTransact:I


# direct methods
.method public constructor <init>(Lo/getActions$extraCallback;)V
    .locals 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1233
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lo/getActions;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 83
    iput-boolean v1, p0, Lo/getActions;->asBinder:Z

    .line 2235
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2233
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lo/getActions;->extraCallback:Ljava/util/concurrent/Executor;

    .line 94
    invoke-static {}, Lo/PlaybackStateCompat$ErrorCode;->extraCallback()Lo/PlaybackStateCompat$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lo/getActions;->ICustomTabsCallback:Lo/PlaybackStateCompat$ErrorCode;

    .line 3074
    new-instance v0, Lo/setState$3;

    invoke-direct {v0}, Lo/setState$3;-><init>()V

    .line 100
    iput-object v0, p0, Lo/getActions;->onMessageChannelReady:Lo/setState;

    .line 106
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/getActions;->onNavigationEvent:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    .line 111
    iget v0, p1, Lo/getActions$extraCallback;->extraCallback:I

    iput v0, p0, Lo/getActions;->onTransact:I

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lo/getActions;->onRelationshipValidationResult:I

    .line 113
    iget v0, p1, Lo/getActions$extraCallback;->onNavigationEvent:I

    iput v0, p0, Lo/getActions;->ICustomTabsCallback$Stub:I

    .line 114
    iget p1, p1, Lo/getActions$extraCallback;->onMessageChannelReady:I

    iput p1, p0, Lo/getActions;->asInterface:I

    return-void
.end method
