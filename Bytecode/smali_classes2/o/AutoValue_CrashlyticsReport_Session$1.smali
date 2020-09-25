.class public final Lo/AutoValue_CrashlyticsReport_Session$1;
.super Lo/getOs;
.source ""


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 27
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    .line 28
    invoke-static {p2}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "InFilter expects an ArrayValue"

    invoke-static {p1, v0, p2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 3

    .line 33
    invoke-virtual {p0}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p0}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v0

    .line 1673
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 1674
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Lo/toByteString;

    goto :goto_0

    .line 1676
    :cond_0
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object v0

    .line 34
    :goto_0
    invoke-static {v0, p1}, Lo/withSessionEndFields;->contains(Lo/ByteString$CodedBuilder;Lo/writeRawMessageSetExtension;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
