.class public final Lo/writeKeyData;
.super Lo/addDelayedShutdownHook;
.source ""


# instance fields
.field private final eventListener:Lo/populateSessionDeviceData;

.field private final repo:Lo/getCrashlyticsInstallId;

.field private final spec:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method public constructor <init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/addDelayedShutdownHook;-><init>()V

    .line 36
    iput-object p1, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    .line 37
    iput-object p2, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    .line 38
    iput-object p3, p0, Lo/writeKeyData;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-void
.end method


# virtual methods
.method public final clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;
    .locals 3

    .line 85
    new-instance v0, Lo/writeKeyData;

    iget-object v1, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    invoke-direct {v0, v1, v2, p1}, Lo/writeKeyData;-><init>(Lo/getCrashlyticsInstallId;Lo/populateSessionDeviceData;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-object v0
.end method

.method public final createEvent(Lo/sanitizeAttribute;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/getCustomKeys;
    .locals 2

    .line 64
    iget-object v0, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {p2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p2

    invoke-static {v0, p2}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object p1

    invoke-static {p2, p1}, Lo/zzac;->createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;

    move-result-object p1

    .line 67
    new-instance p2, Lo/getCustomKeys;

    sget-object v0, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lo/getCustomKeys;-><init>(Lo/Utils$onNavigationEvent;Lo/addDelayedShutdownHook;Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p1, Lo/writeKeyData;

    if-eqz v0, :cond_0

    check-cast p1, Lo/writeKeyData;

    iget-object v0, p1, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    iget-object v1, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/writeKeyData;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v0, p0, Lo/writeKeyData;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final fireCancelEvent(Lo/getMarkerFile;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    invoke-interface {v0, p1}, Lo/populateSessionDeviceData;->onCancelled(Lo/getMarkerFile;)V

    return-void
.end method

.method public final fireEvent(Lo/getCustomKeys;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/addDelayedShutdownHook;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    invoke-virtual {p1}, Lo/getCustomKeys;->getSnapshot()Lo/CrashlyticsLifecycleEvents;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/populateSessionDeviceData;->onDataChange(Lo/CrashlyticsLifecycleEvents;)V

    return-void
.end method

.method public final getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/writeKeyData;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-object v0
.end method

.method final getRepo()Lo/getCrashlyticsInstallId;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lo/writeKeyData;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lo/writeKeyData;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSameListener(Lo/addDelayedShutdownHook;)Z
    .locals 1

    .line 90
    instance-of v0, p1, Lo/writeKeyData;

    if-eqz v0, :cond_0

    check-cast p1, Lo/writeKeyData;

    iget-object p1, p1, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    iget-object v0, p0, Lo/writeKeyData;->eventListener:Lo/populateSessionDeviceData;

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final respondsTo(Lo/Utils$onNavigationEvent;)Z
    .locals 1

    .line 43
    sget-object v0, Lo/Utils$onNavigationEvent;->VALUE:Lo/Utils$onNavigationEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method
