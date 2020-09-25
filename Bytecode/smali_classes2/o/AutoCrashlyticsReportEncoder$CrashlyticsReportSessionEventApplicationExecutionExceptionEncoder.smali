.class public Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final doc:Lo/setDiskUsed;

.field private final firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final metadata:Lo/setBuildVersion;


# direct methods
.method constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setDiskUsed;ZZ)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 87
    invoke-static {p2}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 88
    iput-object p3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    .line 89
    new-instance p1, Lo/setBuildVersion;

    invoke-direct {p1, p5, p4}, Lo/setBuildVersion;-><init>(ZZ)V

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    return-void
.end method

.method private castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 520
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 521
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    .locals 7

    .line 94
    new-instance v6, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setDiskUsed;ZZ)V

    return-object v6
.end method

.method static fromNoDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;ZZ)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;
    .locals 7

    .line 99
    new-instance v6, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setDiskUsed;ZZ)V

    return-object v6
.end method

.method private getInternal(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;Z)Ljava/lang/Object;
    .locals 2

    .line 531
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 534
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, v1, p3, p2}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;ZLo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)V

    .line 536
    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertValue(Lo/writeRawMessageSetExtension;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Provided field must not be null."

    .line 511
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object v0

    .line 513
    invoke-direct {p0, v0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 198
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->contains(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;)Z

    move-result p1

    return p1
.end method

.method public contains(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;)Z
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 209
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 547
    :cond_0
    instance-of v1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 550
    :cond_1
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    .line 551
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 552
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-nez v1, :cond_2

    iget-object v1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    .line 553
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    iget-object p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    .line 554
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public exists()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 221
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, p2, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;",
            ")TT;"
        }
    .end annotation

    .line 297
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;)Ljava/lang/Object;
    .locals 1

    .line 246
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 310
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, p2, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;",
            ")TT;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1, p3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 331
    :cond_0
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getReference()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lo/ImmutableList;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 260
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 261
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 266
    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getFirestoreSettings()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->areTimestampsInSnapshotsEnabled()Z

    move-result v0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getInternal(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;
    .locals 1

    .line 472
    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 343
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getData(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 145
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 150
    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getFirestoreSettings()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object v2

    invoke-virtual {v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->areTimestampsInSnapshotsEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;ZLo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)V

    .line 152
    iget-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->getFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$Builder;->convertObject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 393
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getDate(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/Date;
    .locals 2

    const-string v0, "Provided field path must not be null."

    .line 411
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 412
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    const/4 v1, 0x0

    .line 415
    invoke-direct {p0, v0, p2, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getInternal(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;Z)Ljava/lang/Object;

    move-result-object p2

    .line 419
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, p2, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method getDocument()Lo/setDiskUsed;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    return-object v0
.end method

.method public getDocumentReference(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 1

    .line 496
    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 355
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGeoPoint(Ljava/lang/String;)Lo/toBuilder;
    .locals 1

    .line 484
    const-class v0, Lo/toBuilder;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/toBuilder;

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object v0

    invoke-virtual {v0}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 380
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetadata()Lo/setBuildVersion;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    return-object v0
.end method

.method public getReference()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 3

    .line 506
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-direct {v0, v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 368
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Lo/getStream;
    .locals 1

    .line 434
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getTimestamp(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Lo/getStream;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Lo/getStream;
    .locals 2

    const-string v0, "Provided field path must not be null."

    .line 452
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 453
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    const/4 v1, 0x1

    .line 456
    invoke-direct {p0, v0, p2, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getInternal(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;Z)Ljava/lang/Object;

    move-result-object p2

    .line 460
    const-class v0, Lo/getStream;

    invoke-direct {p0, p2, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getStream;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 559
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->firestore:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 560
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 561
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 562
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 165
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;->DEFAULT:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;

    invoke-virtual {p0, p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->toObject(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toObject(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Provided POJO type must not be null."

    .line 181
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided serverTimestampBehavior value must not be null."

    .line 182
    invoke-static {p2, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder$onMessageChannelReady;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getReference()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lo/ImmutableList;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocumentSnapshot{key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->metadata:Lo/setBuildVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->doc:Lo/setDiskUsed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
