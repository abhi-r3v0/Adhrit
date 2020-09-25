.class public Lo/CrashlyticsReport$Session$OperatingSystem$Builder;
.super Lo/CrashlyticsReport$Session$Event$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsReport$Session$Event$Application<",
        "Lo/writeBool;",
        "Lo/writeFixed64;",
        "Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_RESUME_TOKEN:Lo/SessionProtobufHelper;


# instance fields
.field private final serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    sput-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->EMPTY_RESUME_TOKEN:Lo/SessionProtobufHelper;

    return-void
.end method

.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;)V
    .locals 7

    .line 61
    invoke-static {}, Lo/writeInt32;->onPostMessage()Lo/reverseIterator;

    move-result-object v2

    sget-object v4, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    sget-object v5, Lo/CrashlyticsReport$Type$extraCallback;->LISTEN_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p4

    .line 59
    invoke-direct/range {v0 .. v6}, Lo/CrashlyticsReport$Session$Event$Application;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/reverseIterator;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;)V

    .line 66
    iput-object p3, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    return-void
.end method


# virtual methods
.method public bridge synthetic inhibitBackoff()V
    .locals 0

    .line 38
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->inhibitBackoff()V

    return-void
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStarted()Z
    .locals 1

    .line 38
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lo/writeFixed64;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->onNext(Lo/writeFixed64;)V

    return-void
.end method

.method public onNext(Lo/writeFixed64;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->reset()V

    .line 106
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeWatchChange(Lo/writeFixed64;)Lo/CrashlyticsReport$Session$OperatingSystem;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersionFromListenResponse(Lo/writeFixed64;)Lo/withNdkPayload;

    move-result-object p1

    .line 108
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    check-cast v1, Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;

    invoke-interface {v1, p1, v0}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder$extraCallback;->onWatchChange(Lo/withNdkPayload;Lo/CrashlyticsReport$Session$OperatingSystem;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 38
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 38
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->stop()V

    return-void
.end method

.method public unwatchTarget(I)V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unwatching targets requires an open stream"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lo/writeBool;->onNavigationEvent()Lo/writeBool$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 94
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeBool$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/writeBool$onPostMessage;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lo/writeBool$onPostMessage;->ICustomTabsCallback(I)Lo/writeBool$onPostMessage;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeBool;

    .line 98
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->writeRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public watchQuery(Lo/setBatteryVelocity;)V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Watching queries requires an open stream"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lo/writeBool;->onNavigationEvent()Lo/writeBool$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 78
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeBool$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/writeBool$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 79
    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTarget(Lo/setBatteryVelocity;)Lo/writeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeBool$onPostMessage;->onNavigationEvent(Lo/writeString;)Lo/writeBool$onPostMessage;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeListenRequestLabels(Lo/setBatteryVelocity;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lo/writeBool$onPostMessage;->ICustomTabsCallback(Ljava/util/Map;)Lo/writeBool$onPostMessage;

    .line 86
    :cond_0
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeBool;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->writeRequest(Ljava/lang/Object;)V

    return-void
.end method
