.class public final Lo/setGenerator;
.super Lo/getOs;
.source ""


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    .line 31
    invoke-static {p3}, Lo/withSessionEndFields;->isReferenceValue(Lo/writeRawMessageSetExtension;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "KeyFieldFilter expects a ReferenceValue"

    invoke-static {p1, p3, p2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 1510
    iget p2, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    .line 1511
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 32
    :goto_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    iput-object p1, p0, Lo/setGenerator;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-void
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    iget-object v0, p0, Lo/setGenerator;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Lo/setGenerator;->matchesComparison(I)Z

    move-result p1

    return p1
.end method
