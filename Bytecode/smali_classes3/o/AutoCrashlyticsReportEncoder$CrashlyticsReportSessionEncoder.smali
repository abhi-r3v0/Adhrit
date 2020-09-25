.class public final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final document:Lo/setPlatform;

.field private final newIndex:I

.field private final oldIndex:I

.field private final type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/setPlatform;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;II)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    .line 64
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->document:Lo/setPlatform;

    .line 65
    iput p3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->oldIndex:I

    .line 66
    iput p4, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->newIndex:I

    return-void
.end method

.method static changesFromSnapshot(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/getBuildVersion;Lo/getDiskSpace;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;",
            "Lo/getBuildVersion;",
            "Lo/getDiskSpace;",
            ")",
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p2}, Lo/getDiskSpace;->getOldDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p2}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setContents;

    .line 137
    invoke-virtual {v6}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v7

    .line 142
    invoke-virtual {p2}, Lo/getDiskSpace;->isFromCache()Z

    move-result v8

    .line 143
    invoke-virtual {p2}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 139
    invoke-static {p0, v7, v8, v9}, Lo/setPlatform;->fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/setPlatform;

    move-result-object v8

    .line 145
    invoke-virtual {v6}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v6

    sget-object v9, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    if-ne v6, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Invalid added event for first snapshot"

    .line 144
    invoke-static {v6, v10, v9}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 148
    invoke-virtual {p2}, Lo/getDiskSpace;->getQuery()Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object v6

    invoke-virtual {v6}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v6, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p1, 0x1

    :goto_3
    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "Got added events in wrong order"

    .line 147
    invoke-static {p1, v9, v6}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    sget-object v6, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    add-int/lit8 v9, v5, 0x1

    invoke-direct {p1, v8, v6, v2, v5}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;-><init>(Lo/setPlatform;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v7

    move v5, v9

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p2}, Lo/getDiskSpace;->getOldDocuments()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Lo/getDiskSpace;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/setContents;

    .line 158
    sget-object v7, Lo/getBuildVersion;->EXCLUDE:Lo/getBuildVersion;

    if-ne p1, v7, :cond_5

    .line 159
    invoke-virtual {v6}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v7

    sget-object v8, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    if-eq v7, v8, :cond_4

    .line 162
    :cond_5
    invoke-virtual {v6}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object v7

    .line 167
    invoke-virtual {p2}, Lo/getDiskSpace;->isFromCache()Z

    move-result v8

    .line 168
    invoke-virtual {p2}, Lo/getDiskSpace;->getMutatedKeys()Lo/CrashlyticsReportWithSessionId;

    move-result-object v9

    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 164
    invoke-static {p0, v7, v8, v9}, Lo/setPlatform;->fromDocument(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/setDiskUsed;ZZ)Lo/setPlatform;

    move-result-object v8

    .line 170
    invoke-static {v6}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->getType(Lo/setContents;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    move-result-object v6

    .line 171
    sget-object v9, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    const-string v10, "Index for document not found"

    if-eq v6, v9, :cond_7

    .line 172
    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v9

    invoke-virtual {v1, v9}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->indexOf(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result v9

    if-ltz v9, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    new-array v12, v4, [Ljava/lang/Object;

    .line 173
    invoke-static {v11, v10, v12}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v11

    invoke-virtual {v1, v11}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    goto :goto_6

    :cond_7
    const/4 v9, -0x1

    .line 178
    :goto_6
    sget-object v11, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->REMOVED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    if-eq v6, v11, :cond_9

    .line 179
    invoke-virtual {v1, v7}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->add(Lo/setDiskUsed;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v1

    .line 180
    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->indexOf(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result v7

    if-ltz v7, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    new-array v12, v4, [Ljava/lang/Object;

    .line 181
    invoke-static {v11, v10, v12}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    const/4 v7, -0x1

    .line 185
    :goto_8
    new-instance v10, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    invoke-direct {v10, v8, v6, v9, v7}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;-><init>(Lo/setPlatform;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    return-object v0
.end method

.method private static getType(Lo/setContents;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
    .locals 3

    .line 192
    sget-object v0, Lo/isCurrent$onMessageChannelReady;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {p0}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 199
    sget-object p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->REMOVED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown view change type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    sget-object p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->MODIFIED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object p0

    .line 194
    :cond_2
    sget-object p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;->ADDED:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 71
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;

    .line 73
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    iget-object v2, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->document:Lo/setPlatform;

    iget-object v2, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->document:Lo/setPlatform;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->oldIndex:I

    iget v2, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->oldIndex:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->newIndex:I

    iget p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->newIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getDocument()Lo/setPlatform;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->document:Lo/setPlatform;

    return-object v0
.end method

.method public final getNewIndex()I
    .locals 1

    .line 123
    iget v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->newIndex:I

    return v0
.end method

.method public final getOldIndex()I
    .locals 1

    .line 114
    iget v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->oldIndex:I

    return v0
.end method

.method public final getType()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 83
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->type:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->document:Lo/setPlatform;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->oldIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEncoder;->newIndex:I

    add-int/2addr v0, v1

    return v0
.end method
