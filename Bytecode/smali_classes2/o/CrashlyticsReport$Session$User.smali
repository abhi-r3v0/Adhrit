.class public Lo/CrashlyticsReport$Session$User;
.super Lo/CrashlyticsReport$Session$Event$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$User$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsReport$Session$Event$Application<",
        "Lo/writeSFixed64;",
        "Lo/writeInt64NoTag;",
        "Lo/CrashlyticsReport$Session$User$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;


# instance fields
.field protected handshakeComplete:Z

.field private lastStreamToken:Lo/SessionProtobufHelper;

.field private final serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    sput-object v0, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    return-void
.end method

.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;Lo/CrashlyticsReport$Session$User$onPostMessage;)V
    .locals 7

    .line 74
    invoke-static {}, Lo/writeInt32;->onNavigationEvent()Lo/reverseIterator;

    move-result-object v2

    sget-object v4, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_CONNECTION_BACKOFF:Lo/CrashlyticsReport$Type$extraCallback;

    sget-object v5, Lo/CrashlyticsReport$Type$extraCallback;->WRITE_STREAM_IDLE:Lo/CrashlyticsReport$Type$extraCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p4

    .line 72
    invoke-direct/range {v0 .. v6}, Lo/CrashlyticsReport$Session$Event$Application;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/reverseIterator;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    .line 65
    sget-object p1, Lo/CrashlyticsReport$Session$User;->EMPTY_STREAM_TOKEN:Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$User;->lastStreamToken:Lo/SessionProtobufHelper;

    .line 79
    iput-object p3, p0, Lo/CrashlyticsReport$Session$User;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    return-void
.end method


# virtual methods
.method getLastStreamToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User;->lastStreamToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public bridge synthetic inhibitBackoff()V
    .locals 0

    .line 49
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->inhibitBackoff()V

    return-void
.end method

.method isHandshakeComplete()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStarted()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lo/writeInt64NoTag;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$User;->onNext(Lo/writeInt64NoTag;)V

    return-void
.end method

.method public onNext(Lo/writeInt64NoTag;)V
    .locals 6

    .line 1109
    iget-object v0, p1, Lo/writeInt64NoTag;->streamToken_:Lo/SessionProtobufHelper;

    .line 163
    iput-object v0, p0, Lo/CrashlyticsReport$Session$User;->lastStreamToken:Lo/SessionProtobufHelper;

    .line 165
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    .line 169
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    check-cast p1, Lo/CrashlyticsReport$Session$User$onPostMessage;

    invoke-interface {p1}, Lo/CrashlyticsReport$Session$User$onPostMessage;->onHandshakeComplete()V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->reset()V

    .line 176
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    .line 1321
    iget-object v1, p1, Lo/writeInt64NoTag;->commitTime_:Lo/getCustomHeaders;

    if-nez v1, :cond_1

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lo/writeInt64NoTag;->commitTime_:Lo/getCustomHeaders;

    .line 176
    :goto_0
    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v0

    .line 2179
    iget-object v1, p1, Lo/writeInt64NoTag;->writeResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 2192
    iget-object v4, p1, Lo/writeInt64NoTag;->writeResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v4, v3}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/writeFixed64NoTag;

    .line 182
    iget-object v5, p0, Lo/CrashlyticsReport$Session$User;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v5, v4, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMutationResult(Lo/writeFixed64NoTag;Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$Builder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_2
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    check-cast p1, Lo/CrashlyticsReport$Session$User$onPostMessage;

    invoke-interface {p1, v0, v2}, Lo/CrashlyticsReport$Session$User$onPostMessage;->onWriteResponse(Lo/withNdkPayload;Ljava/util/List;)V

    return-void
.end method

.method setLastStreamToken(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 125
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$User;->lastStreamToken:Lo/SessionProtobufHelper;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    .line 85
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 49
    invoke-super {p0}, Lo/CrashlyticsReport$Session$Event$Application;->stop()V

    return-void
.end method

.method protected tearDown()V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/CrashlyticsReport$Session$User;->writeMutations(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method writeHandshake()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Writing handshake requires an opened stream"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    xor-int/lit8 v0, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handshake already completed"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lo/writeSFixed64;->ICustomTabsCallback()Lo/writeSFixed64$ICustomTabsCallback;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$User;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSFixed64$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/writeSFixed64$ICustomTabsCallback;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object v0

    check-cast v0, Lo/writeSFixed64;

    invoke-virtual {p0, v0}, Lo/CrashlyticsReport$Session$User;->writeRequest(Ljava/lang/Object;)V

    return-void
.end method

.method writeMutations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$FilesPayload;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Writing mutations requires an opened stream"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-boolean v0, p0, Lo/CrashlyticsReport$Session$User;->handshakeComplete:Z

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Handshake must be complete before writing mutations"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lo/writeSFixed64;->ICustomTabsCallback()Lo/writeSFixed64$ICustomTabsCallback;

    move-result-object v0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$FilesPayload;

    .line 154
    iget-object v2, p0, Lo/CrashlyticsReport$Session$User;->serializer:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeMutation(Lo/CrashlyticsReport$FilesPayload;)Lo/writeSInt32;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSFixed64$ICustomTabsCallback;->onPostMessage(Lo/writeSInt32;)Lo/writeSFixed64$ICustomTabsCallback;

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsReport$Session$User;->lastStreamToken:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Lo/writeSFixed64$ICustomTabsCallback;->onMessageChannelReady(Lo/SessionProtobufHelper;)Lo/writeSFixed64$ICustomTabsCallback;

    .line 158
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSFixed64;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$User;->writeRequest(Ljava/lang/Object;)V

    return-void
.end method
