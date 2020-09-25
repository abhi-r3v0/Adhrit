.class public Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_User$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private baseObject:Lo/AutoValue_CrashlyticsReport_Session_User$1;

.field private overlayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_User$1;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->baseObject:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 155
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->overlayMap:Ljava/util/Map;

    return-void
.end method

.method private applyOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Ljava/util/Map;)Lo/writeBytes;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/writeBytes;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->baseObject:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->get(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lo/withSessionEndFields;->isMapValue(Lo/writeRawMessageSetExtension;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    .line 242
    :goto_0
    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->toBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeBytes$ICustomTabsCallback;

    goto :goto_1

    .line 243
    :cond_1
    invoke-static {}, Lo/writeBytes;->onNavigationEvent()Lo/writeBytes$ICustomTabsCallback;

    move-result-object v0

    .line 245
    :goto_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 247
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 249
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 252
    invoke-virtual {p1, v5}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v6

    check-cast v6, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v6, v4}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->applyOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Ljava/util/Map;)Lo/writeBytes;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 254
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v3

    invoke-virtual {v3, v4}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v3

    invoke-virtual {v3}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    invoke-virtual {v0, v5, v3}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    goto :goto_3

    .line 257
    :cond_3
    instance-of v6, v4, Lo/writeRawMessageSetExtension;

    if-eqz v6, :cond_4

    .line 258
    check-cast v4, Lo/writeRawMessageSetExtension;

    invoke-virtual {v0, v5, v4}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    :goto_3
    const/4 v3, 0x1

    goto :goto_2

    .line 260
    :cond_4
    invoke-virtual {v0, v5}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Expected entry to be a Map, a Value or null"

    .line 261
    invoke-static {v3, v6, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v0, v5}, Lo/writeBytes$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/writeBytes$ICustomTabsCallback;

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 267
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeBytes;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private setOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 7

    .line 186
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->overlayMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 189
    invoke-virtual {p1, v1}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 192
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 194
    check-cast v3, Ljava/util/Map;

    :goto_1
    move-object v0, v3

    goto :goto_3

    .line 195
    :cond_0
    instance-of v4, v3, Lo/writeRawMessageSetExtension;

    if-eqz v4, :cond_2

    check-cast v3, Lo/writeRawMessageSetExtension;

    .line 1072
    iget v4, v3, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    invoke-static {v4}, Lo/writeRawMessageSetExtension$onPostMessage;->onMessageChannelReady(I)Lo/writeRawMessageSetExtension$onPostMessage;

    move-result-object v4

    .line 196
    sget-object v5, Lo/writeRawMessageSetExtension$onPostMessage;->ICustomTabsService:Lo/writeRawMessageSetExtension$onPostMessage;

    if-ne v4, v5, :cond_2

    .line 198
    new-instance v4, Ljava/util/HashMap;

    .line 1749
    iget v5, v3, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 1750
    iget-object v3, v3, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v3, Lo/writeBytes;

    goto :goto_2

    .line 1752
    :cond_1
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object v3

    .line 3036
    :goto_2
    iget-object v3, v3, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2090
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 199
    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 200
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    goto :goto_3

    .line 204
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {p1}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 3

    .line 215
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->EMPTY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->overlayMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->applyOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Ljava/util/Map;)Lo/writeBytes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    invoke-direct {v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_User$1;-><init>(Lo/writeRawMessageSetExtension;)V

    return-object v1

    .line 219
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->baseObject:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-object v0
.end method

.method public delete(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
    .locals 3

    .line 179
    invoke-virtual {p1}, Lo/setRamUsed;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot delete field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->setOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p0
.end method

.method public set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;
    .locals 3

    .line 166
    invoke-virtual {p1}, Lo/setRamUsed;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot set field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->setOverlay(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V

    return-object p0
.end method
