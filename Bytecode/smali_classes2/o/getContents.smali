.class public final Lo/getContents;
.super Lo/getOs;
.source ""


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 25
    sget-object v0, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    return-void
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 2

    .line 30
    invoke-virtual {p0}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_0

    .line 1676
    :cond_0
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 31
    :goto_0
    invoke-virtual {p0}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v0

    invoke-static {p1, v0}, Lo/withSessionEndFields;->contains(Lo/ByteString$CodedBuilder;Lo/writeRawMessageSetExtension;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
