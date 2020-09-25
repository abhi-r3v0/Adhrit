.class public Lo/AutoValue_CrashlyticsReport_Session_User$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final EMPTY_INSTANCE:Lo/AutoValue_CrashlyticsReport_Session_User$1;


# instance fields
.field private internalValue:Lo/writeRawMessageSetExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 33
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v1

    invoke-virtual {v1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;-><init>(Lo/writeRawMessageSetExtension;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->EMPTY_INSTANCE:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-void
.end method

.method public constructor <init>(Lo/writeRawMessageSetExtension;)V
    .locals 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iget v0, p1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v0}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v0

    .line 42
    sget-object v1, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsService:Lo/writeRawMessageSetExtension$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "ObjectValues should be backed by a MapValue"

    .line 41
    invoke-static {v0, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->isServerTimestamp(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "ServerTimestamps should not be used as an ObjectValue"

    .line 44
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    return-void
.end method

.method public static emptyObject()Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    .line 51
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->EMPTY_INSTANCE:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-object v0
.end method

.method private extractFieldMask(Lo/writeBytes;)Lo/CrashlyticsReport$CustomAttribute;
    .locals 5

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5036
    iget-object p1, p1, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 4090
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromSingleSegment(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    invoke-static {v3}, Lo/withSessionEndFields;->isMapValue(Lo/writeRawMessageSetExtension;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 5749
    iget v3, v1, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 5750
    iget-object v1, v1, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v1, Lo/writeBytes;

    goto :goto_1

    .line 5752
    :cond_1
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v1

    .line 73
    :goto_1
    invoke-direct {p0, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->extractFieldMask(Lo/writeBytes;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lo/CrashlyticsReport$CustomAttribute;->getMask()Ljava/util/Set;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 81
    invoke-virtual {v2, v3}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_4
    invoke-static {v0}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p1

    return-object p1
.end method

.method public static fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_User$1;"
        }
    .end annotation

    .line 36
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 37
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/writeBytes;->onNavigationEvent()Lo/writeBytes$ICustomTabsCallback;

    move-result-object v2

    invoke-virtual {v2, p0}, Lo/writeBytes$ICustomTabsCallback;->extraCallback(Ljava/util/Map;)Lo/writeBytes$ICustomTabsCallback;

    move-result-object p0

    invoke-virtual {v1, p0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes$ICustomTabsCallback;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p0

    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_User$1;-><init>(Lo/writeRawMessageSetExtension;)V

    return-object v0
.end method

.method public static newBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
    .locals 1

    .line 56
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->EMPTY_INSTANCE:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->toBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    instance-of v0, p1, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    iget-object p1, p1, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1}, Lo/withSessionEndFields;->equals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;
    .locals 5

    .line 98
    invoke-virtual {p1}, Lo/setRamUsed;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    return-object p1

    .line 101
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    .line 6749
    iget v2, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v2, v3, :cond_1

    .line 6750
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Lo/writeBytes;

    goto :goto_1

    .line 6752
    :cond_1
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v0

    .line 103
    :goto_1
    invoke-virtual {p1, v1}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    .line 8036
    iget-object v0, v0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 7112
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    goto :goto_2

    :cond_2
    move-object v0, v4

    .line 104
    :goto_2
    invoke-static {v0}, Lo/withSessionEndFields;->isMapValue(Lo/writeRawMessageSetExtension;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8749
    :cond_4
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne v1, v3, :cond_5

    .line 8750
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Lo/writeBytes;

    goto :goto_3

    .line 8752
    :cond_5
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v0

    .line 108
    :goto_3
    invoke-virtual {p1}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object p1

    .line 10036
    iget-object v0, v0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 9112
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    :cond_6
    return-object v4
.end method

.method public getFieldMask()Lo/CrashlyticsReport$CustomAttribute;
    .locals 3

    .line 65
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    .line 3749
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3750
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Lo/writeBytes;

    goto :goto_0

    .line 3752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v0

    .line 65
    :goto_0
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->extractFieldMask(Lo/writeBytes;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    .line 1749
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1750
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Lo/writeBytes;

    goto :goto_0

    .line 1752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v0

    .line 3036
    :goto_0
    iget-object v0, v0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2090
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProto()Lo/writeRawMessageSetExtension;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1;->internalValue:Lo/writeRawMessageSetExtension;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
    .locals 1

    .line 134
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;)V

    return-object v0
.end method
