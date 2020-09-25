.class public final Lo/GoogleReferrer$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GoogleReferrer$1$onNavigationEvent;,
        Lo/GoogleReferrer$1$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/GoogleReferrer$1$onMessageChannelReady;

.field private ICustomTabsCallback$Stub:Landroid/os/Handler;

.field private ICustomTabsService:Z

.field private asBinder:Z

.field private asInterface:I

.field private final extraCallback:Lo/GoogleReferrer$1$onNavigationEvent;

.field private getInterfaceDescriptor:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Lo/t;

.field private onRelationshipValidationResult:Z

.field private onTransact:J

.field private warmup:Z


# direct methods
.method public constructor <init>(Lo/GoogleReferrer$1$onNavigationEvent;Lo/GoogleReferrer$1$onMessageChannelReady;Lo/t;ILandroid/os/Handler;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lo/GoogleReferrer$1;->extraCallback:Lo/GoogleReferrer$1$onNavigationEvent;

    .line 87
    iput-object p2, p0, Lo/GoogleReferrer$1;->ICustomTabsCallback:Lo/GoogleReferrer$1$onMessageChannelReady;

    .line 88
    iput-object p3, p0, Lo/GoogleReferrer$1;->onPostMessage:Lo/t;

    .line 89
    iput-object p5, p0, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    .line 90
    iput p4, p0, Lo/GoogleReferrer$1;->asInterface:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    iput-wide p1, p0, Lo/GoogleReferrer$1;->onTransact:J

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lo/GoogleReferrer$1;->asBinder:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 120
    iget v0, p0, Lo/GoogleReferrer$1;->onMessageChannelReady:I

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Lo/GoogleReferrer$1;
    .locals 6

    .line 237
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->onRelationshipValidationResult:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 238
    iget-wide v2, p0, Lo/GoogleReferrer$1;->onTransact:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 239
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->asBinder:Z

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 241
    :cond_0
    iput-boolean v1, p0, Lo/GoogleReferrer$1;->onRelationshipValidationResult:Z

    .line 242
    iget-object v0, p0, Lo/GoogleReferrer$1;->extraCallback:Lo/GoogleReferrer$1$onNavigationEvent;

    invoke-interface {v0, p0}, Lo/GoogleReferrer$1$onNavigationEvent;->extraCallback(Lo/GoogleReferrer$1;)V

    return-object p0
.end method

.method public final declared-synchronized asBinder()Z
    .locals 1

    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->getInterfaceDescriptor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final asInterface()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lo/GoogleReferrer$1;->onTransact:J

    return-wide v0
.end method

.method public final extraCallback()Landroid/os/Handler;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized extraCallback(Z)V
    .locals 1

    monitor-enter p0

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->warmup:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lo/GoogleReferrer$1;->warmup:Z

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lo/GoogleReferrer$1;->ICustomTabsService:Z

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/GoogleReferrer$1;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public final onNavigationEvent(I)Lo/GoogleReferrer$1;
    .locals 1

    .line 113
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->onRelationshipValidationResult:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 114
    iput p1, p0, Lo/GoogleReferrer$1;->onMessageChannelReady:I

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)Lo/GoogleReferrer$1;
    .locals 1

    .line 131
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->onRelationshipValidationResult:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 132
    iput-object p1, p0, Lo/GoogleReferrer$1;->onNavigationEvent:Ljava/lang/Object;

    return-object p0
.end method

.method public final onNavigationEvent()Lo/t;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/GoogleReferrer$1;->onPostMessage:Lo/t;

    return-object v0
.end method

.method public final onPostMessage()Lo/GoogleReferrer$1$onMessageChannelReady;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/GoogleReferrer$1;->ICustomTabsCallback:Lo/GoogleReferrer$1$onMessageChannelReady;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->asBinder:Z

    return v0
.end method

.method public final onTransact()I
    .locals 1

    .line 205
    iget v0, p0, Lo/GoogleReferrer$1;->asInterface:I

    return v0
.end method

.method public final declared-synchronized warmup()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->onRelationshipValidationResult:Z

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 280
    iget-object v0, p0, Lo/GoogleReferrer$1;->ICustomTabsCallback$Stub:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 281
    :goto_1
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->ICustomTabsService:Z

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 284
    :cond_1
    iget-boolean v0, p0, Lo/GoogleReferrer$1;->warmup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
