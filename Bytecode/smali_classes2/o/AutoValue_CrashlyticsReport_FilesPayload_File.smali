.class public final Lo/AutoValue_CrashlyticsReport_FilesPayload_File;
.super Lo/getOs;
.source ""


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 27
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    .line 28
    invoke-static {p2}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ArrayContainsAnyFilter expects an ArrayValue"

    invoke-static {p1, v0, p2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 5

    .line 33
    invoke-virtual {p0}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1673
    :cond_0
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 1674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_0

    .line 1676
    :cond_1
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 37
    :goto_0
    invoke-virtual {p1}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    .line 38
    invoke-virtual {p0}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v3

    .line 2673
    iget v4, v3, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v4, v2, :cond_3

    .line 2674
    iget-object v3, v3, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v3, Lo/toByteString;

    goto :goto_1

    .line 2676
    :cond_3
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object v3

    .line 38
    :goto_1
    invoke-static {v3, v0}, Lo/withSessionEndFields;->contains(Lo/ByteString$CodedBuilder;Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method
