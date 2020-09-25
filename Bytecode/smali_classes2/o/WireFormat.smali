.class public Lo/WireFormat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field volatile extraCallback:Lo/WireFormat$FieldType$2;

.field volatile onMessageChannelReady:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ICustomTabsCallback(Lo/WireFormat$FieldType$2;)V
    .locals 1

    .line 406
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_1

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 421
    :cond_1
    :try_start_1
    iput-object p1, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    .line 422
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    :catch_0
    :try_start_2
    iput-object p1, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    .line 428
    sget-object p1, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object p1, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    .line 430
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_0
    instance-of v0, p1, Lo/WireFormat;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_1
    check-cast p1, Lo/WireFormat;

    .line 153
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    .line 154
    iget-object v1, p1, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lo/WireFormat;->onPostMessage()Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-virtual {p1}, Lo/WireFormat;->onPostMessage()Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 160
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->getDefaultInstanceForType()Lo/WireFormat$FieldType$2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 162
    :cond_4
    invoke-interface {v1}, Lo/WireFormat$FieldType$2;->getDefaultInstanceForType()Lo/WireFormat$FieldType$2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 357
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->getSerializedSize()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lo/WireFormat;->ICustomTabsCallback(Lo/WireFormat$FieldType$2;)V

    .line 224
    iget-object p1, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    return-object p1
.end method

.method public final onPostMessage()Lo/SessionProtobufHelper;
    .locals 1

    .line 370
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    return-object v0

    .line 378
    :cond_0
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    monitor-exit p0

    return-object v0

    .line 382
    :cond_1
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    if-nez v0, :cond_2

    .line 383
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lo/WireFormat;->extraCallback:Lo/WireFormat$FieldType$2;

    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->toByteString()Lo/SessionProtobufHelper;

    move-result-object v0

    iput-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    .line 387
    :goto_0
    iget-object v0, p0, Lo/WireFormat;->onMessageChannelReady:Lo/SessionProtobufHelper;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 388
    monitor-exit p0

    throw v0
.end method
