.class final Lo/deserializeToClass$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deserializeToClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/exceptionStacktrace;

.field private extraCallback:Lo/exceptionStacktrace;

.field final synthetic onMessageChannelReady:Lo/deserializeToClass;

.field private final onNavigationEvent:Lo/getPrevName$onMessageChannelReady;

.field onPostMessage:Z


# direct methods
.method constructor <init>(Lo/deserializeToClass;Lo/getPrevName$onMessageChannelReady;)V
    .locals 1

    .line 440
    iput-object p1, p0, Lo/deserializeToClass$ICustomTabsCallback;->onMessageChannelReady:Lo/deserializeToClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p2, p0, Lo/deserializeToClass$ICustomTabsCallback;->onNavigationEvent:Lo/getPrevName$onMessageChannelReady;

    const/4 p1, 0x1

    .line 442
    invoke-virtual {p2, p1}, Lo/getPrevName$onMessageChannelReady;->extraCallback(I)Lo/exceptionStacktrace;

    move-result-object p1

    iput-object p1, p0, Lo/deserializeToClass$ICustomTabsCallback;->extraCallback:Lo/exceptionStacktrace;

    .line 443
    new-instance v0, Lo/deserializeToClass$ICustomTabsCallback$2;

    invoke-direct {v0, p0, p1, p2}, Lo/deserializeToClass$ICustomTabsCallback$2;-><init>(Lo/deserializeToClass$ICustomTabsCallback;Lo/exceptionStacktrace;Lo/getPrevName$onMessageChannelReady;)V

    iput-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback;->ICustomTabsCallback:Lo/exceptionStacktrace;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 459
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback;->onMessageChannelReady:Lo/deserializeToClass;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-boolean v1, p0, Lo/deserializeToClass$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 461
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 463
    iput-boolean v1, p0, Lo/deserializeToClass$ICustomTabsCallback;->onPostMessage:Z

    .line 464
    iget-object v2, p0, Lo/deserializeToClass$ICustomTabsCallback;->onMessageChannelReady:Lo/deserializeToClass;

    iget v3, v2, Lo/deserializeToClass;->extraCallback:I

    add-int/2addr v3, v1

    iput v3, v2, Lo/deserializeToClass;->extraCallback:I

    .line 465
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback;->extraCallback:Lo/exceptionStacktrace;

    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    .line 468
    :try_start_1
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback;->onNavigationEvent:Lo/getPrevName$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getPrevName$onMessageChannelReady;->ICustomTabsCallback()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 465
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady()Lo/exceptionStacktrace;
    .locals 1

    .line 474
    iget-object v0, p0, Lo/deserializeToClass$ICustomTabsCallback;->ICustomTabsCallback:Lo/exceptionStacktrace;

    return-object v0
.end method
