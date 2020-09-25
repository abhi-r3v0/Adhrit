.class public Lo/getOs;
.super Lo/isCrashed;
.source ""


# instance fields
.field private final field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

.field private final operator:Lo/isCrashed$onNavigationEvent;

.field private final value:Lo/writeRawMessageSetExtension;


# direct methods
.method protected constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/isCrashed;-><init>()V

    .line 39
    iput-object p1, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 40
    iput-object p2, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    .line 41
    iput-object p3, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    return-void
.end method

.method public static create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_0

    .line 66
    new-instance p1, Lo/setEndedAt;

    invoke-direct {p1, p0, p2}, Lo/setEndedAt;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 67
    :cond_0
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_1

    .line 68
    new-instance p1, Lo/setStartedAt;

    invoke-direct {p1, p0, p2}, Lo/setStartedAt;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 70
    :cond_1
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "queries don\'t make sense on document keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lo/setGenerator;

    invoke-direct {v0, p0, p1, p2}, Lo/setGenerator;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    return-object v0

    .line 75
    :cond_3
    invoke-static {p2}, Lo/withSessionEndFields;->isNullValue(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    sget-object v0, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    if-eq p1, v0, :cond_5

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 78
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Query. Null supports only equality comparisons (via whereEqualTo())."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_5
    :goto_1
    new-instance v0, Lo/getOs;

    invoke-direct {v0, p0, p1, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    return-object v0

    .line 82
    :cond_6
    invoke-static {p2}, Lo/withSessionEndFields;->isNanValue(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    sget-object v0, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    if-eq p1, v0, :cond_8

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 85
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Query. NaN supports only equality comparisons (via whereEqualTo())."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_8
    :goto_2
    new-instance v0, Lo/getOs;

    invoke-direct {v0, p0, p1, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    return-object v0

    .line 89
    :cond_9
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_a

    .line 90
    new-instance p1, Lo/getContents;

    invoke-direct {p1, p0, p2}, Lo/getContents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 91
    :cond_a
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_b

    .line 92
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session$1;

    invoke-direct {p1, p0, p2}, Lo/AutoValue_CrashlyticsReport_Session$1;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 93
    :cond_b
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_c

    .line 94
    new-instance p1, Lo/AutoValue_CrashlyticsReport_FilesPayload_File;

    invoke-direct {p1, p0, p2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 95
    :cond_c
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v0, :cond_d

    .line 96
    new-instance p1, Lo/setEvents;

    invoke-direct {p1, p0, p2}, Lo/setEvents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p1

    .line 98
    :cond_d
    new-instance v0, Lo/getOs;

    invoke-direct {v0, p0, p1, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 158
    instance-of v1, p1, Lo/getOs;

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    check-cast p1, Lo/getOs;

    .line 162
    iget-object v1, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    iget-object v2, p1, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    iget-object v2, p1, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    iget-object p1, p1, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v1

    invoke-static {v1}, Lo/withSessionEndFields;->canonicalId(Lo/writeRawMessageSetExtension;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object v0
.end method

.method public getOperator()Lo/isCrashed$onNavigationEvent;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    return-object v0
.end method

.method public getValue()Lo/writeRawMessageSetExtension;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    iget-object v0, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v1, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-object v1, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isInequality()Z
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lo/isCrashed$onNavigationEvent;

    .line 135
    sget-object v1, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches(Lo/setDiskUsed;)Z
    .locals 4

    .line 104
    iget-object v0, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {p1, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    invoke-static {p1, v0}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/getOs;->matchesComparison(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    .line 111
    invoke-static {p1}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v0

    iget-object v1, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    invoke-static {v1}, Lo/withSessionEndFields;->typeOrder(Lo/writeRawMessageSetExtension;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    .line 112
    invoke-static {p1, v0}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/getOs;->matchesComparison(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected matchesComparison(I)Z
    .locals 3

    .line 116
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    iget-object v1, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    aput-object v0, p1, v1

    const-string v0, "Unknown FieldFilter operator: %s"

    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :pswitch_0
    if-ltz p1, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_1
    if-lez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_2
    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    :pswitch_3
    if-nez p1, :cond_3

    return v2

    :cond_3
    return v1

    :pswitch_4
    if-gtz p1, :cond_4

    return v2

    :cond_4
    return v1

    :pswitch_5
    if-gez p1, :cond_5

    return v2

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/getOs;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/getOs;->operator:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getOs;->value:Lo/writeRawMessageSetExtension;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
