.class final Lo/clearInstancesForTest$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/notifyBackgroundStateChangeListeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearInstancesForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Ljava/lang/Exception;

.field private asInterface:Z

.field private extraCallback:I

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Lo/getProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getProjectId<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/Object;

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(ILo/getProjectId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getProjectId<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onPostMessage:Ljava/lang/Object;

    .line 3
    iput p1, p0, Lo/clearInstancesForTest$extraCallback;->onMessageChannelReady:I

    .line 4
    iput-object p2, p0, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent:Lo/getProjectId;

    return-void
.end method

.method private final onNavigationEvent()V
    .locals 6

    .line 20
    iget v0, p0, Lo/clearInstancesForTest$extraCallback;->extraCallback:I

    iget v1, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/clearInstancesForTest$extraCallback;->onRelationshipValidationResult:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/clearInstancesForTest$extraCallback;->onMessageChannelReady:I

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent:Lo/getProjectId;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback:I

    iget v3, p0, Lo/clearInstancesForTest$extraCallback;->onMessageChannelReady:I

    const/16 v4, 0x36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lo/clearInstancesForTest$extraCallback;->asInterface:Z

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent:Lo/getProjectId;

    invoke-virtual {v0}, Lo/getProjectId;->ICustomTabsCallback$Stub()Z

    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 3

    .line 15
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lo/clearInstancesForTest$extraCallback;->onRelationshipValidationResult:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/clearInstancesForTest$extraCallback;->onRelationshipValidationResult:I

    .line 17
    iput-boolean v2, p0, Lo/clearInstancesForTest$extraCallback;->asInterface:Z

    .line 18
    invoke-direct {p0}, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent()V

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lo/clearInstancesForTest$extraCallback;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback:I

    .line 8
    iput-object p1, p0, Lo/clearInstancesForTest$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Exception;

    .line 9
    invoke-direct {p0}, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lo/clearInstancesForTest$extraCallback;->onPostMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 12
    :try_start_0
    iget v0, p0, Lo/clearInstancesForTest$extraCallback;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/clearInstancesForTest$extraCallback;->extraCallback:I

    .line 13
    invoke-direct {p0}, Lo/clearInstancesForTest$extraCallback;->onNavigationEvent()V

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
