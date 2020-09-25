.class public abstract Lo/addDelayedShutdownHook;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private isUserInitiated:Z

.field private listener:Lo/FileBackedNativeSessionFile;

.field private zombied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/addDelayedShutdownHook;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-boolean v1, p0, Lo/addDelayedShutdownHook;->isUserInitiated:Z

    return-void
.end method


# virtual methods
.method public abstract clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;
.end method

.method public abstract createEvent(Lo/sanitizeAttribute;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/getCustomKeys;
.end method

.method public abstract fireCancelEvent(Lo/getMarkerFile;)V
.end method

.method public abstract fireEvent(Lo/getCustomKeys;)V
.end method

.method public abstract getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;
.end method

.method getRepo()Lo/getCrashlyticsInstallId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isSameListener(Lo/addDelayedShutdownHook;)Z
.end method

.method public isUserInitiated()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lo/addDelayedShutdownHook;->isUserInitiated:Z

    return v0
.end method

.method public isZombied()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lo/addDelayedShutdownHook;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract respondsTo(Lo/Utils$onNavigationEvent;)Z
.end method

.method public setIsUserInitiated(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lo/addDelayedShutdownHook;->isUserInitiated:Z

    return-void
.end method

.method public setOnZombied(Lo/FileBackedNativeSessionFile;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lo/addDelayedShutdownHook;->isZombied()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 62
    iget-object v0, p0, Lo/addDelayedShutdownHook;->listener:Lo/FileBackedNativeSessionFile;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 63
    iput-object p1, p0, Lo/addDelayedShutdownHook;->listener:Lo/FileBackedNativeSessionFile;

    return-void
.end method

.method public zombify()V
    .locals 3

    .line 48
    iget-object v0, p0, Lo/addDelayedShutdownHook;->zombied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/addDelayedShutdownHook;->listener:Lo/FileBackedNativeSessionFile;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0}, Lo/FileBackedNativeSessionFile;->onZombied(Lo/addDelayedShutdownHook;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lo/addDelayedShutdownHook;->listener:Lo/FileBackedNativeSessionFile;

    :cond_0
    return-void
.end method
