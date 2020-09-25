.class public final Lo/DataTransportState;
.super Lo/addDelayedShutdownHook;
.source ""


# instance fields
.field private final eventListener:Lo/CrashlyticsFileMarker;

.field private final repo:Lo/getCrashlyticsInstallId;

.field private final spec:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method public constructor <init>(Lo/getCrashlyticsInstallId;Lo/CrashlyticsFileMarker;Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/addDelayedShutdownHook;-><init>()V

    .line 36
    iput-object p1, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    .line 37
    iput-object p2, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    .line 38
    iput-object p3, p0, Lo/DataTransportState;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-void
.end method


# virtual methods
.method public final clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;
    .locals 3

    .line 102
    new-instance v0, Lo/DataTransportState;

    iget-object v1, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    iget-object v2, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-direct {v0, v1, v2, p1}, Lo/DataTransportState;-><init>(Lo/getCrashlyticsInstallId;Lo/CrashlyticsFileMarker;Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-object v0
.end method

.method public final createEvent(Lo/sanitizeAttribute;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/getCustomKeys;
    .locals 2

    .line 64
    iget-object v0, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    .line 65
    invoke-virtual {p2}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object p2

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getChildKey()Lo/LogFileManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object p2

    invoke-static {v0, p2}, Lo/zzac;->createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getIndexedNode()Lo/discardOldLogFiles;

    move-result-object v0

    invoke-static {p2, v0}, Lo/zzac;->createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lo/sanitizeAttribute;->getPrevName()Lo/LogFileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getPrevName()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    new-instance v1, Lo/getCustomKeys;

    invoke-virtual {p1}, Lo/sanitizeAttribute;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object p1

    invoke-direct {v1, p1, p0, p2, v0}, Lo/getCustomKeys;-><init>(Lo/Utils$onNavigationEvent;Lo/addDelayedShutdownHook;Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p1, Lo/DataTransportState;

    if-eqz v0, :cond_0

    check-cast p1, Lo/DataTransportState;

    iget-object v0, p1, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    iget-object v1, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    iget-object v1, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/DataTransportState;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v0, p0, Lo/DataTransportState;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

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

    .line 97
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-interface {v0, p1}, Lo/CrashlyticsFileMarker;->onCancelled(Lo/getMarkerFile;)V

    return-void
.end method

.method public final fireEvent(Lo/getCustomKeys;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lo/addDelayedShutdownHook;->isZombied()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->$SwitchMap$com$google$firebase$database$core$view$Event$EventType:[I

    invoke-virtual {p1}, Lo/getCustomKeys;->getEventType()Lo/Utils$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-virtual {p1}, Lo/getCustomKeys;->getSnapshot()Lo/CrashlyticsLifecycleEvents;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/CrashlyticsFileMarker;->onChildRemoved(Lo/CrashlyticsLifecycleEvents;)V

    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-virtual {p1}, Lo/getCustomKeys;->getSnapshot()Lo/CrashlyticsLifecycleEvents;

    move-result-object v1

    invoke-virtual {p1}, Lo/getCustomKeys;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/CrashlyticsFileMarker;->onChildMoved(Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_3
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-virtual {p1}, Lo/getCustomKeys;->getSnapshot()Lo/CrashlyticsLifecycleEvents;

    move-result-object v1

    invoke-virtual {p1}, Lo/getCustomKeys;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/CrashlyticsFileMarker;->onChildChanged(Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-virtual {p1}, Lo/getCustomKeys;->getSnapshot()Lo/CrashlyticsLifecycleEvents;

    move-result-object v1

    invoke-virtual {p1}, Lo/getCustomKeys;->getPreviousName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/CrashlyticsFileMarker;->onChildAdded(Lo/CrashlyticsLifecycleEvents;Ljava/lang/String;)V

    return-void
.end method

.method public final getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/DataTransportState;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-object v0
.end method

.method final getRepo()Lo/getCrashlyticsInstallId;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lo/DataTransportState;->repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lo/DataTransportState;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSameListener(Lo/addDelayedShutdownHook;)Z
    .locals 1

    .line 107
    instance-of v0, p1, Lo/DataTransportState;

    if-eqz v0, :cond_0

    check-cast p1, Lo/DataTransportState;

    iget-object p1, p1, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    iget-object v0, p0, Lo/DataTransportState;->eventListener:Lo/CrashlyticsFileMarker;

    .line 108
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

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method
