.class public final Lo/setEndedAt;
.super Lo/getOs;
.source ""


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 31
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/setEndedAt;->keys:Ljava/util/List;

    .line 33
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    invoke-static {v0, p2}, Lo/setEndedAt;->extractDocumentKeysFromArrayValue(Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static extractDocumentKeysFromArrayValue(Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isCrashed$onNavigationEvent;",
            "Lo/writeRawMessageSetExtension;",
            ")",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "extractDocumentKeysFromArrayValue requires IN or NOT_IN operators"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KeyFieldInFilter/KeyFieldNotInFilter expects an ArrayValue"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    iget v2, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 1674
    iget-object p1, p1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_2

    .line 1676
    :cond_2
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 47
    :goto_2
    invoke-virtual {p1}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/writeRawMessageSetExtension;

    .line 49
    invoke-static {v2}, Lo/withSessionEndFields;->isReferenceValue(Lo/writeRawMessageSetExtension;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Comparing on key with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but an array value was not a ReferenceValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {v3, v4, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2510
    iget v3, v2, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 2511
    iget-object v2, v2, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_3
    const-string v2, ""

    .line 53
    :goto_4
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lo/setEndedAt;->keys:Ljava/util/List;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
