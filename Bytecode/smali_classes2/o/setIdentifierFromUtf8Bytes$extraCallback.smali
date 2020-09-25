.class public final Lo/setIdentifierFromUtf8Bytes$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setIdentifierFromUtf8Bytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/setIdentifierFromUtf8Bytes;",
        "Lo/setIdentifierFromUtf8Bytes$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lo/setIdentifierFromUtf8Bytes;->access$000()Lo/setIdentifierFromUtf8Bytes;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setIdentifierFromUtf8Bytes$5;)V
    .locals 0

    .line 247
    invoke-direct {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearName()Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 312
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0}, Lo/setIdentifierFromUtf8Bytes;->access$200(Lo/setIdentifierFromUtf8Bytes;)V

    return-object p0
.end method

.method public final clearReadTime()Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0}, Lo/setIdentifierFromUtf8Bytes;->access$600(Lo/setIdentifierFromUtf8Bytes;)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/setIdentifierFromUtf8Bytes;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNameBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 283
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/setIdentifierFromUtf8Bytes;->getNameBytes()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTime()Lo/getCustomHeaders;
    .locals 1

    .line 352
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/setIdentifierFromUtf8Bytes;->getReadTime()Lo/getCustomHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final hasReadTime()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {v0}, Lo/setIdentifierFromUtf8Bytes;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public final mergeReadTime(Lo/getCustomHeaders;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p1}, Lo/setIdentifierFromUtf8Bytes;->access$500(Lo/setIdentifierFromUtf8Bytes;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p1}, Lo/setIdentifierFromUtf8Bytes;->access$100(Lo/setIdentifierFromUtf8Bytes;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setNameBytes(Lo/SessionProtobufHelper;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 328
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p1}, Lo/setIdentifierFromUtf8Bytes;->access$300(Lo/setIdentifierFromUtf8Bytes;Lo/SessionProtobufHelper;)V

    return-object p0
.end method

.method public final setReadTime(Lo/getCustomHeaders$onMessageChannelReady;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/setIdentifierFromUtf8Bytes;->access$400(Lo/setIdentifierFromUtf8Bytes;Lo/getCustomHeaders;)V

    return-object p0
.end method

.method public final setReadTime(Lo/getCustomHeaders;)Lo/setIdentifierFromUtf8Bytes$extraCallback;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lo/setIdentifierFromUtf8Bytes$extraCallback;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/setIdentifierFromUtf8Bytes;

    invoke-static {v0, p1}, Lo/setIdentifierFromUtf8Bytes;->access$400(Lo/setIdentifierFromUtf8Bytes;Lo/getCustomHeaders;)V

    return-object p0
.end method
