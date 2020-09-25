.class final Lo/getSession;
.super Lo/getIdToken;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Integer;

.field private final ICustomTabsCallback$Stub:J

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

.field private final ICustomTabsService:Landroid/app/PendingIntent;

.field private final asBinder:J

.field private final asInterface:I

.field private final extraCallback:I

.field private final newSession:Landroid/app/PendingIntent;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:J

.field private final onTransact:J

.field private final warmup:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Lo/getIdToken;-><init>()V

    if-eqz v1, :cond_0

    iput-object v1, v0, Lo/getSession;->onPostMessage:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lo/getSession;->onMessageChannelReady:I

    move v1, p3

    iput v1, v0, Lo/getSession;->extraCallback:I

    move v1, p4

    iput v1, v0, Lo/getSession;->onNavigationEvent:I

    move-object v1, p5

    iput-object v1, v0, Lo/getSession;->ICustomTabsCallback:Ljava/lang/Integer;

    move v1, p6

    iput v1, v0, Lo/getSession;->asInterface:I

    move-wide v1, p7

    iput-wide v1, v0, Lo/getSession;->asBinder:J

    move-wide v1, p9

    iput-wide v1, v0, Lo/getSession;->onRelationshipValidationResult:J

    move-wide v1, p11

    iput-wide v1, v0, Lo/getSession;->onTransact:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lo/getSession;->ICustomTabsCallback$Stub:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/getSession;->ICustomTabsService:Landroid/app/PendingIntent;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/getSession;->warmup:Landroid/app/PendingIntent;

    move-object/from16 v1, p17

    iput-object v1, v0, Lo/getSession;->newSession:Landroid/app/PendingIntent;

    move-object/from16 v1, p18

    iput-object v1, v0, Lo/getSession;->ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null packageName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    iget v0, p0, Lo/getSession;->onMessageChannelReady:I

    return v0
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2

    iget-wide v0, p0, Lo/getSession;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method final ICustomTabsCallback$Stub$Proxy()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/getSession;->newSession:Landroid/app/PendingIntent;

    return-object v0
.end method

.method final ICustomTabsService()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/getSession;->ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

    return-object v0
.end method

.method final asBinder()J
    .locals 2

    iget-wide v0, p0, Lo/getSession;->onTransact:J

    return-wide v0
.end method

.method public final asInterface()J
    .locals 2

    iget-wide v0, p0, Lo/getSession;->asBinder:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/getIdToken;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lo/getIdToken;

    iget-object v1, p0, Lo/getSession;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1}, Lo/getIdToken;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lo/getSession;->onMessageChannelReady:I

    invoke-virtual {p1}, Lo/getIdToken;->ICustomTabsCallback()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, p0, Lo/getSession;->extraCallback:I

    invoke-virtual {p1}, Lo/getIdToken;->onPostMessage()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, p0, Lo/getSession;->onNavigationEvent:I

    invoke-virtual {p1}, Lo/getIdToken;->onMessageChannelReady()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lo/getSession;->ICustomTabsCallback:Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/getIdToken;->onNavigationEvent()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/getIdToken;->onNavigationEvent()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget v1, p0, Lo/getSession;->asInterface:I

    invoke-virtual {p1}, Lo/getIdToken;->onRelationshipValidationResult()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-wide v3, p0, Lo/getSession;->asBinder:J

    invoke-virtual {p1}, Lo/getIdToken;->asInterface()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Lo/getSession;->onRelationshipValidationResult:J

    invoke-virtual {p1}, Lo/getIdToken;->ICustomTabsCallback$Stub()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Lo/getSession;->onTransact:J

    invoke-virtual {p1}, Lo/getIdToken;->asBinder()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Lo/getSession;->ICustomTabsCallback$Stub:J

    invoke-virtual {p1}, Lo/getIdToken;->onTransact()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lo/getSession;->ICustomTabsService:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lo/getIdToken;->warmup()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/getIdToken;->warmup()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lo/getSession;->warmup:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lo/getIdToken;->getInterfaceDescriptor()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lo/getIdToken;->getInterfaceDescriptor()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lo/getSession;->newSession:Landroid/app/PendingIntent;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lo/getIdToken;->ICustomTabsCallback$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lo/getIdToken;->ICustomTabsCallback$Stub$Proxy()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lo/getSession;->ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lo/getIdToken;->ICustomTabsService()Landroid/app/PendingIntent;

    move-result-object p1

    if-nez v1, :cond_5

    if-nez p1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    return v0

    :cond_7
    :goto_5
    return v2
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/getSession;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method final getInterfaceDescriptor()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/getSession;->warmup:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final hashCode()I
    .locals 15

    iget-object v0, p0, Lo/getSession;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lo/getSession;->onMessageChannelReady:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lo/getSession;->extraCallback:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lo/getSession;->onNavigationEvent:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/getSession;->ICustomTabsCallback:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    iget v4, p0, Lo/getSession;->asInterface:I

    iget-wide v5, p0, Lo/getSession;->asBinder:J

    iget-wide v7, p0, Lo/getSession;->onRelationshipValidationResult:J

    iget-wide v9, p0, Lo/getSession;->onTransact:J

    iget-wide v11, p0, Lo/getSession;->ICustomTabsCallback$Stub:J

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    const/16 v2, 0x20

    ushr-long v13, v5, v2

    xor-long v4, v13, v5

    long-to-int v5, v4

    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    ushr-long v4, v7, v2

    xor-long/2addr v4, v7

    long-to-int v5, v4

    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    ushr-long v4, v9, v2

    xor-long/2addr v4, v9

    long-to-int v5, v4

    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    ushr-long v4, v11, v2

    xor-long/2addr v4, v11

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/getSession;->ICustomTabsService:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/getSession;->warmup:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Lo/getSession;->newSession:Landroid/app/PendingIntent;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v1, p0, Lo/getSession;->ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/getSession;->onNavigationEvent:I

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lo/getSession;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/getSession;->extraCallback:I

    return v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    iget v0, p0, Lo/getSession;->asInterface:I

    return v0
.end method

.method final onTransact()J
    .locals 2

    iget-wide v0, p0, Lo/getSession;->ICustomTabsCallback$Stub:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lo/getSession;->onPostMessage:Ljava/lang/String;

    iget v2, v0, Lo/getSession;->onMessageChannelReady:I

    iget v3, v0, Lo/getSession;->extraCallback:I

    iget v4, v0, Lo/getSession;->onNavigationEvent:I

    iget-object v5, v0, Lo/getSession;->ICustomTabsCallback:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lo/getSession;->asInterface:I

    iget-wide v7, v0, Lo/getSession;->asBinder:J

    iget-wide v9, v0, Lo/getSession;->onRelationshipValidationResult:J

    iget-wide v11, v0, Lo/getSession;->onTransact:J

    iget-wide v13, v0, Lo/getSession;->ICustomTabsCallback$Stub:J

    iget-object v15, v0, Lo/getSession;->ICustomTabsService:Landroid/app/PendingIntent;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v13

    iget-object v13, v0, Lo/getSession;->warmup:Landroid/app/PendingIntent;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lo/getSession;->newSession:Landroid/app/PendingIntent;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v18, v11

    iget-object v11, v0, Lo/getSession;->ICustomTabsCallback$Stub$Proxy:Landroid/app/PendingIntent;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 v12, v12, 0x1cf

    add-int v12, v12, v20

    add-int v12, v12, v21

    add-int v12, v12, v22

    add-int v12, v12, v23

    add-int v12, v12, v24

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "AppUpdateInfo{packageName="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", availableVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientVersionStalenessDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatePriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytesToDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", additionalSpaceRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", assetPackStorageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", immediateUpdateIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibleUpdateIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", immediateDestructiveUpdateIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibleDestructiveUpdateIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final warmup()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/getSession;->ICustomTabsService:Landroid/app/PendingIntent;

    return-object v0
.end method
