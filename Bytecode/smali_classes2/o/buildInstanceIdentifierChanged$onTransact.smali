.class public final Lo/buildInstanceIdentifierChanged$onTransact;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/os/Handler;

.field final synthetic extraCallback:Lo/buildInstanceIdentifierChanged;

.field final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:J

.field onPostMessage:Lo/getQueryParamsFor;

.field private onRelationshipValidationResult:J

.field private onTransact:J


# direct methods
.method public constructor <init>(Lo/buildInstanceIdentifierChanged;)V
    .locals 2

    .line 346
    iput-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact;->extraCallback:Lo/buildInstanceIdentifierChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onMessageChannelReady:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 770
    iput-wide v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onNavigationEvent:J

    .line 771
    iput-wide v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onTransact:J

    const-wide/16 v0, -0x1

    .line 772
    iput-wide v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onRelationshipValidationResult:J

    .line 1370
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "com.mixpanel.android.AnalyticsWorker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1371
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1372
    new-instance v0, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lo/buildInstanceIdentifierChanged$onTransact$extraCallback;-><init>(Lo/buildInstanceIdentifierChanged$onTransact;Landroid/os/Looper;)V

    .line 347
    iput-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback:Landroid/os/Handler;

    return-void
.end method

.method static synthetic onPostMessage(Lo/buildInstanceIdentifierChanged$onTransact;)V
    .locals 11

    .line 1752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1753
    iget-wide v2, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onNavigationEvent:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 1755
    iget-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onRelationshipValidationResult:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    sub-long v6, v0, v6

    .line 1757
    iget-wide v8, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onTransact:J

    mul-long v8, v8, v2

    add-long/2addr v6, v8

    .line 1758
    div-long/2addr v6, v4

    iput-wide v6, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onTransact:J

    const-wide/16 v2, 0x3e8

    .line 1760
    div-long/2addr v6, v2

    .line 1761
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Average send frequency approximately "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1764
    :cond_0
    iput-wide v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onRelationshipValidationResult:J

    .line 1765
    iput-wide v4, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Message;)V
    .locals 3

    .line 357
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$onTransact;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dead mixpanel worker dropping a message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/buildInstanceIdentifierChanged;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
