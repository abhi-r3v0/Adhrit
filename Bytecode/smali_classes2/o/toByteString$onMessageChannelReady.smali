.class public final Lo/toByteString$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/ByteString$CodedBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/toByteString;",
        "Lo/toByteString$onMessageChannelReady;",
        ">;",
        "Lo/ByteString$CodedBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 253
    invoke-static {}, Lo/toByteString;->onMessageChannelReady()Lo/toByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 246
    invoke-direct {p0}, Lo/toByteString$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Iterable;)Lo/toByteString$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/toByteString$onMessageChannelReady;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lo/toByteString$onMessageChannelReady;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    invoke-static {v0, p1}, Lo/toByteString;->ICustomTabsCallback(Lo/toByteString;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final extraCallback()I
    .locals 1

    .line 278
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    .line 1054
    iget-object v0, v0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(I)Lo/toByteString$onMessageChannelReady;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lo/toByteString$onMessageChannelReady;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    invoke-static {v0, p1}, Lo/toByteString;->onPostMessage(Lo/toByteString;I)V

    return-object p0
.end method

.method public final onNavigationEvent(I)Lo/writeRawMessageSetExtension;
    .locals 1

    .line 288
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    .line 1065
    iget-object v0, v0, Lo/toByteString;->values_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    .line 267
    invoke-virtual {v0}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lo/toByteString$onMessageChannelReady;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/toByteString;

    invoke-static {v0, p1}, Lo/toByteString;->onMessageChannelReady(Lo/toByteString;Lo/writeRawMessageSetExtension;)V

    return-object p0
.end method
