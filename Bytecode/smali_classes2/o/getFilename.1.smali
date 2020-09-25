.class public final Lo/getFilename;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final before:Z

.field private final position:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/getFilename;->position:Ljava/util/List;

    .line 49
    iput-boolean p2, p0, Lo/getFilename;->before:Z

    return-void
.end method


# virtual methods
.method public final canonicalString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    iget-boolean v1, p0, Lo/getFilename;->before:Z

    if-eqz v1, :cond_0

    const-string v1, "b:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "a:"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    .line 69
    iget-object v2, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    if-nez v1, :cond_1

    const-string v1, ","

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x0

    .line 74
    invoke-static {v3}, Lo/withSessionEndFields;->canonicalId(Lo/writeRawMessageSetExtension;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    check-cast p1, Lo/getFilename;

    .line 123
    iget-boolean v2, p0, Lo/getFilename;->before:Z

    iget-boolean v3, p1, Lo/getFilename;->before:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/getFilename;->position:Ljava/util/List;

    iget-object p1, p1, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/getFilename;->position:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 128
    iget-boolean v0, p0, Lo/getFilename;->before:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isBefore()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/getFilename;->before:Z

    return v0
.end method

.method public final sortsBeforeDocument(Ljava/util/List;Lo/setDiskUsed;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setOrganization;",
            ">;",
            "Lo/setDiskUsed;",
            ")Z"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Bound has more components than query\'s orderBy"

    invoke-static {v0, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    :goto_1
    iget-object v4, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setOrganization;

    .line 85
    iget-object v4, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeRawMessageSetExtension;

    .line 86
    iget-object v5, v1, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    sget-object v6, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    invoke-static {v4}, Lo/withSessionEndFields;->isReferenceValue(Lo/writeRawMessageSetExtension;)Z

    move-result v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v7, "Bound has a non-key value where the key path is being used %s"

    .line 87
    invoke-static {v5, v7, v6}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    iget v5, v4, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1511
    iget-object v4, v4, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string v4, ""

    .line 92
    :goto_2
    invoke-static {v4}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result v4

    goto :goto_4

    .line 94
    :cond_2
    invoke-virtual {v1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v5

    invoke-virtual {p2, v5}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "Field should exist since document matched the orderBy already."

    .line 95
    invoke-static {v6, v8, v7}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {v4, v5}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result v4

    .line 100
    :goto_4
    invoke-virtual {v1}, Lo/setOrganization;->getDirection()Lo/setOrganization$onPostMessage;

    move-result-object v1

    sget-object v5, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    neg-int v1, v4

    goto :goto_5

    :cond_4
    move v1, v4

    :goto_5
    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_5
    iget-boolean p1, p0, Lo/getFilename;->before:Z

    if-eqz p1, :cond_7

    if-gtz v1, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    if-gez v1, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bound{before="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/getFilename;->before:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getFilename;->position:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
