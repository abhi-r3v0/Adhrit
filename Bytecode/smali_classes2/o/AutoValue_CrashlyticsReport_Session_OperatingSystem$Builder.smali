.class public final Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# static fields
.field private static final LOCAL_WRITE_TIME_KEY:Ljava/lang/String; = "__local_write_time__"

.field private static final PREVIOUS_VALUE_KEY:Ljava/lang/String; = "__previous_value__"

.field private static final SERVER_TIMESTAMP_SENTINEL:Ljava/lang/String; = "server_timestamp"

.field private static final TYPE_KEY:Ljava/lang/String; = "__type__"


# instance fields
.field private final arg$1:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 7000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->arg$1:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method

.method public static getLocalWriteTime(Lo/writeRawMessageSetExtension;)Lo/getCustomHeaders;
    .locals 2

    .line 5749
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5750
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/writeBytes;

    goto :goto_0

    .line 5752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p0

    :goto_0
    const-string v0, "__local_write_time__"

    .line 92
    invoke-virtual {p0, v0}, Lo/writeBytes;->ICustomTabsCallback(Ljava/lang/String;)Lo/writeRawMessageSetExtension;

    move-result-object p0

    .line 6302
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 6303
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/getCustomHeaders;

    return-object p0

    .line 6305
    :cond_1
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p0

    return-object p0
.end method

.method public static getPreviousValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 2

    .line 3749
    :goto_0
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3750
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/writeBytes;

    goto :goto_1

    .line 3752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p0

    :goto_1
    const-string v0, "__previous_value__"

    .line 5036
    iget-object p0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 4112
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    .line 83
    :goto_2
    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->isServerTimestamp(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static isServerTimestamp(Lo/writeRawMessageSetExtension;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1749
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1750
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/writeBytes;

    goto :goto_0

    .line 1752
    :cond_0
    invoke-static {}, Lo/writeBytes;->ICustomTabsCallback()Lo/writeBytes;

    move-result-object p0

    :goto_0
    const-string v0, "__type__"

    .line 3036
    iget-object p0, p0, Lo/writeBytes;->fields_:Lo/WireFormat$1;

    .line 2112
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 3372
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 3373
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    const-string v0, "server_timestamp"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Lo/getStream;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 5

    .line 52
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    const-string v1, "server_timestamp"

    invoke-virtual {v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension;

    .line 54
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v1

    .line 56
    invoke-static {}, Lo/getCustomHeaders;->onNavigationEvent()Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lo/getStream;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/getCustomHeaders$onMessageChannelReady;->extraCallback(J)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lo/getStream;->getNanoseconds()I

    move-result p0

    invoke-virtual {v2, p0}, Lo/getCustomHeaders$onMessageChannelReady;->ICustomTabsCallback(I)Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object p0

    .line 55
    invoke-virtual {v1, p0}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(Lo/getCustomHeaders$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    .line 62
    invoke-static {}, Lo/writeBytes;->onNavigationEvent()Lo/writeBytes$ICustomTabsCallback;

    move-result-object v1

    const-string v2, "__type__"

    .line 63
    invoke-virtual {v1, v2, v0}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    move-result-object v0

    const-string v1, "__local_write_time__"

    .line 64
    invoke-virtual {v0, v1, p0}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "__previous_value__"

    .line 67
    invoke-virtual {p0, v0, p1}, Lo/writeBytes$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Lo/writeRawMessageSetExtension;)Lo/writeBytes$ICustomTabsCallback;

    .line 70
    :cond_0
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/writeBytes$ICustomTabsCallback;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p0

    invoke-virtual {p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/writeRawMessageSetExtension;

    return-object p0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 8000
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->arg$1:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lo/getOrCreateBodyBuilder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->lambda$new$0$FirebaseMessaging(Lo/getOrCreateBodyBuilder;)V

    return-void
.end method
