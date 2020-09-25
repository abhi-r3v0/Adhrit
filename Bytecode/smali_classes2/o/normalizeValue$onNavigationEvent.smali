.class final Lo/normalizeValue$onNavigationEvent;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:Z

.field private onNavigationEvent:I

.field private synthetic onPostMessage:Lo/normalizeValue;


# direct methods
.method constructor <init>(Lo/normalizeValue;ZII)V
    .locals 2

    .line 366
    iput-object p1, p0, Lo/normalizeValue$onNavigationEvent;->onPostMessage:Lo/normalizeValue;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    iget-object p1, p1, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iput-boolean p2, p0, Lo/normalizeValue$onNavigationEvent;->onMessageChannelReady:Z

    .line 369
    iput p3, p0, Lo/normalizeValue$onNavigationEvent;->onNavigationEvent:I

    .line 370
    iput p4, p0, Lo/normalizeValue$onNavigationEvent;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 6

    .line 374
    iget-object v0, p0, Lo/normalizeValue$onNavigationEvent;->onPostMessage:Lo/normalizeValue;

    iget-boolean v1, p0, Lo/normalizeValue$onNavigationEvent;->onMessageChannelReady:Z

    iget v2, p0, Lo/normalizeValue$onNavigationEvent;->onNavigationEvent:I

    iget v3, p0, Lo/normalizeValue$onNavigationEvent;->ICustomTabsCallback:I

    if-nez v1, :cond_0

    .line 1381
    monitor-enter v0

    .line 1382
    :try_start_0
    iget-boolean v4, v0, Lo/normalizeValue;->asBinder:Z

    const/4 v5, 0x1

    .line 1383
    iput-boolean v5, v0, Lo/normalizeValue;->asBinder:Z

    .line 1384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1494
    :try_start_1
    sget-object v1, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    invoke-virtual {v0, v1, v1}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 1384
    monitor-exit v0

    throw v1

    .line 1392
    :cond_0
    :try_start_2
    iget-object v4, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v4, v1, v2, v3}, Lo/updateServerSnap;->onPostMessage(ZII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 2494
    :catch_1
    :try_start_3
    sget-object v1, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    invoke-virtual {v0, v1, v1}, Lo/normalizeValue;->onNavigationEvent(Lo/getNodeFilter;Lo/getNodeFilter;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void
.end method
