.class final Lo/writeSessionEventAppExecutionException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/attemptUploadWithRetry;


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/writeSessionAppClsId;


# direct methods
.method constructor <init>(Lo/writeSessionAppClsId;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    const-string v0, "input"

    .line 66
    invoke-static {p1, v0}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeSessionAppClsId;

    iput-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    .line 67
    iput-object p0, p1, Lo/writeSessionAppClsId;->onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

    return-void
.end method

.method private ICustomTabsCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 204
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    iget v1, v1, Lo/writeSessionAppClsId;->onPostMessage:I

    iget-object v2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    iget v2, v2, Lo/writeSessionAppClsId;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1, v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback(I)I

    move-result v0

    .line 211
    invoke-interface {p1}, Lo/CreateReportRequest;->extraCallback()Ljava/lang/Object;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    iget v3, v2, Lo/writeSessionAppClsId;->onPostMessage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo/writeSessionAppClsId;->onPostMessage:I

    .line 213
    invoke-interface {p1, v1, p0, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 214
    invoke-interface {p1, v1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V

    .line 216
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    iget p2, p1, Lo/writeSessionAppClsId;->onPostMessage:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/writeSessionAppClsId;->onPostMessage:I

    .line 218
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1, v0}, Lo/writeSessionAppClsId;->onPostMessage(I)V

    return-object v1

    .line 205
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asInterface()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/writeSessionEventDevice;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    sget-object v0, Lo/writeSessionEventAppExecutionException$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    .line 1317
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50199
    :pswitch_0
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 50198
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide p1

    .line 1315
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50200
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50193
    :pswitch_1
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 50192
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 1313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50194
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50187
    :pswitch_2
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 50186
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->newSession()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50188
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50181
    :pswitch_3
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 50180
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide p1

    .line 1309
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50182
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50175
    :pswitch_4
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_4

    .line 50174
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result p1

    .line 1307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50176
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50169
    :pswitch_5
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 50168
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide p1

    .line 1305
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50170
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50163
    :pswitch_6
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 50162
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result p1

    .line 1303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50164
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50157
    :pswitch_7
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 50156
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lo/writeSessionEventAppExecutionException;->ICustomTabsCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 50158
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50151
    :pswitch_8
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_8

    .line 50150
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide p1

    .line 1299
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50152
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50145
    :pswitch_9
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_9

    .line 50144
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asBinder()I

    move-result p1

    .line 1297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50146
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50139
    :pswitch_a
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v0, :cond_a

    .line 50138
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result p1

    .line 1295
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 50140
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50133
    :pswitch_b
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 50132
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide p1

    .line 1293
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 50134
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50127
    :pswitch_c
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v0, :cond_c

    .line 50126
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result p1

    .line 1291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50128
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50121
    :pswitch_d
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_d

    .line 50120
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    .line 1289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 50122
    :cond_d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50115
    :pswitch_e
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 50114
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide p1

    .line 1287
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 50116
    :cond_e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50109
    :pswitch_f
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-ne p1, v2, :cond_f

    .line 50108
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p1

    return-object p1

    .line 50110
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 50103
    :pswitch_10
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-nez p1, :cond_10

    .line 49153
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result p1

    .line 1283
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 50104
    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    .line 225
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v1}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result v1

    iput v1, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    .line 229
    :try_start_0
    invoke-interface {p1}, Lo/CreateReportRequest;->extraCallback()Ljava/lang/Object;

    move-result-object v1

    .line 230
    invoke-interface {p1, v1, p0, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 231
    invoke-interface {p1, v1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 233
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    iget p2, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 239
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    return-object v1

    .line 234
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 239
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    .line 240
    throw p1
.end method

.method private onPostMessage(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 764
    instance-of v0, p1, Lo/stringToByteString;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 765
    check-cast p1, Lo/stringToByteString;

    .line 35103
    :cond_0
    iget p2, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p2}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 34246
    iget-object p2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p2}, Lo/writeSessionAppClsId;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p2

    .line 767
    invoke-interface {p1, p2}, Lo/stringToByteString;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    .line 768
    iget-object p2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p2}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 771
    :cond_1
    iget-object p2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p2}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p2

    .line 772
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p2, v0, :cond_0

    .line 774
    iput p2, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 35104
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    if-eqz p2, :cond_5

    .line 36103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 35165
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->newSession()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36104
    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 37103
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 36159
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onTransact()Ljava/lang/String;

    move-result-object v0

    .line 780
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 784
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 785
    iget v2, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v2, :cond_3

    .line 787
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 37104
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 761
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide v0

    return-wide v0

    .line 2104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    instance-of v0, p1, Lo/writeSessionEventApp;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 288
    move-object v0, p1

    check-cast v0, Lo/writeSessionEventApp;

    .line 289
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 291
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 295
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/writeSessionEventApp;->onPostMessage(D)V

    .line 296
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 22225
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 312
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 300
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/writeSessionEventApp;->onPostMessage(D)V

    .line 301
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 304
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 305
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 307
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 315
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 317
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    .line 319
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 321
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    .line 23225
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 338
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 326
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onNavigationEvent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 330
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 331
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 333
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v0

    return-wide v0

    .line 5104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 756
    invoke-direct {p0, p1, v0}, Lo/writeSessionEventAppExecutionException;->onPostMessage(Ljava/util/List;Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 877
    move-object v0, p1

    check-cast v0, Lo/getEventAppExecutionExceptionSize;

    .line 878
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 880
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 881
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 883
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 884
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 38329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 38330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 901
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 889
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 890
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 893
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 894
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 896
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 904
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 906
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 907
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 909
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 39329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 39330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 927
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 915
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 919
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 920
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 922
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result v0

    return v0

    .line 9104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->newSession()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final ICustomTabsService(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 935
    move-object v0, p1

    check-cast v0, Lo/getEventAppExecutionExceptionSize;

    .line 936
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 938
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 939
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 941
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 942
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 40329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 40330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 959
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 947
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 948
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 951
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 952
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 954
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 962
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 964
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 965
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 967
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 41329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 41330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 985
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 973
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 977
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 978
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 980
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final asBinder()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v0

    return-wide v0

    .line 7104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final asBinder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, p1, v0}, Lo/writeSessionEventAppExecutionException;->onPostMessage(Ljava/util/List;Z)V

    return-void
.end method

.method public final asInterface()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asBinder()I

    move-result v0

    return v0

    .line 6104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final asInterface(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    instance-of v0, p1, Lo/encodeZigZag32;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 694
    move-object v0, p1

    check-cast v0, Lo/encodeZigZag32;

    .line 695
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 697
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 698
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 700
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    .line 701
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 32329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 32330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 718
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 706
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    .line 707
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 710
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 711
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 713
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 721
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 723
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 724
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 726
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 33329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 33330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 744
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 732
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asInterface()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 736
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 737
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 739
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final extraCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0, p1, p2}, Lo/writeSessionEventAppExecutionException;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 520
    move-object v0, p1

    check-cast v0, Lo/getEventAppExecutionExceptionSize;

    .line 521
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 523
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 524
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 526
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asBinder()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 527
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 28329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 28330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 544
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 532
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->asBinder()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 533
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 536
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 537
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 539
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 547
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 549
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 550
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 552
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asBinder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 29329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 29330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 570
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 558
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->asBinder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 562
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 563
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 565
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 809
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    .line 811
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/writeSessionEventAppExecutionException;->ICustomTabsCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 815
    :cond_1
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 818
    iput v1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    :cond_2
    :goto_0
    return-void

    .line 807
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    iget v1, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1, v0}, Lo/writeSessionAppClsId;->extraCallback(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCommand()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide v0

    return-wide v0

    .line 20104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final getInterfaceDescriptor()Lo/SessionProtobufHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0

    .line 16104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final getInterfaceDescriptor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    .line 993
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 994
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 1005
    :cond_0
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 1006
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1009
    :cond_1
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 1010
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_0

    .line 1012
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 1017
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 996
    :cond_3
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    .line 998
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 1000
    :cond_4
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 1001
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 42324
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1020
    :cond_6
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    .line 1031
    :cond_7
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1035
    :cond_8
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 1036
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_7

    .line 1038
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 1043
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1022
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    .line 1024
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 1026
    :cond_b
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    .line 43324
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final mayLaunchUrl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide v0

    return-wide v0

    .line 22104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onTransact()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final newSession(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1051
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 1052
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 1054
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    .line 1056
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 1058
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/makeTag;->extraCallback(J)V

    .line 1059
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 44225
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1075
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1063
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/makeTag;->extraCallback(J)V

    .line 1064
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1067
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 1068
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 1070
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 1078
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 1080
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    .line 1082
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 1084
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    .line 45225
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1101
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1089
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->updateVisuals()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1093
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 1094
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 1096
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 91
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    return v0
.end method

.method public final onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    invoke-direct {p0, p1, p2}, Lo/writeSessionEventAppExecutionException;->ICustomTabsCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    instance-of v0, p1, Lo/getSessionDeviceSize;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    .line 346
    check-cast p1, Lo/getSessionDeviceSize;

    .line 347
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 358
    :cond_0
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result v0

    invoke-virtual {p1, v0}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    .line 359
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 363
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_0

    .line 365
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 370
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 349
    :cond_3
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    .line 351
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 353
    :cond_4
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result v0

    invoke-virtual {p1, v0}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    .line 354
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 23324
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 373
    :cond_6
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    .line 384
    :cond_7
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 388
    :cond_8
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 389
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_7

    .line 391
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 396
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 375
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    .line 377
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 379
    :cond_b
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    .line 24324
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/CreateReportRequest<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 839
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    .line 841
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/writeSessionEventAppExecutionException;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 848
    iput v1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    :cond_2
    :goto_0
    return-void

    .line 837
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    .line 78
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    .line 83
    :goto_0
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eqz v0, :cond_2

    iget v1, p0, Lo/writeSessionEventAppExecutionException;->onNavigationEvent:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 173
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/writeSessionEventAppExecutionException;->ICustomTabsCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 462
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 463
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 465
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 466
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 468
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/makeTag;->extraCallback(J)V

    .line 469
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 26329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 26330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 486
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 474
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/makeTag;->extraCallback(J)V

    .line 475
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 478
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 479
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 481
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 489
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 491
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 492
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 494
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 27329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 27330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 512
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 500
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 504
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 505
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 507
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/Map;Lo/getTagWireType$extraCallback;Lo/writeSessionEventDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/getTagWireType$extraCallback<",
            "TK;TV;>;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1237
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 1238
    iget-object v2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v2, v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback(I)I

    move-result v0

    .line 1239
    iget-object v2, p2, Lo/getTagWireType$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 1240
    iget-object v3, p2, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1243
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lo/writeSessionEventAppExecutionException;->onNavigationEvent()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 1244
    iget-object v5, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v5}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_1

    .line 1259
    :try_start_1
    invoke-virtual {p0}, Lo/writeSessionEventAppExecutionException;->extraCallback()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1260
    :cond_0
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1253
    :cond_1
    iget-object v4, p2, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    iget-object v5, p2, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1256
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1255
    invoke-direct {p0, v4, v5, p3}, Lo/writeSessionEventAppExecutionException;->onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v4, p2, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lo/writeSessionEventAppExecutionException;->onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1266
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo/writeSessionEventAppExecutionException;->extraCallback()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 1267
    :cond_3
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1, v0}, Lo/writeSessionAppClsId;->onPostMessage(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p2, v0}, Lo/writeSessionAppClsId;->onPostMessage(I)V

    .line 1275
    throw p1

    .line 49104
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback()F

    move-result v0

    return v0

    .line 3104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onPostMessage(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 189
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/writeSessionEventAppExecutionException;->onPostMessage(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 404
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 405
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 407
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 408
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 410
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/makeTag;->extraCallback(J)V

    .line 411
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 24329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 24330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 428
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 416
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/makeTag;->extraCallback(J)V

    .line 417
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 420
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 421
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 423
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 431
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 433
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 434
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 436
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 25329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 25330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 454
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 442
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 446
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 447
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 449
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onPostMessage()J

    move-result-wide v0

    return-wide v0

    .line 4104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onRelationshipValidationResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 578
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 579
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 581
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_1

    .line 583
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 585
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/makeTag;->extraCallback(J)V

    .line 586
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 30225
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 602
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 590
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/makeTag;->extraCallback(J)V

    .line 591
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 594
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 595
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 597
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 605
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 607
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_7

    .line 609
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 611
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    return-void

    .line 31225
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 628
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 616
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 620
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 621
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 623
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final onTransact()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result v0

    return v0

    .line 8104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final onTransact(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    .line 636
    check-cast p1, Lo/getEventAppExecutionExceptionSize;

    .line 637
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 648
    :cond_0
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 649
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 653
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_0

    .line 655
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 660
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 639
    :cond_3
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    .line 641
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 643
    :cond_4
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 644
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_4

    return-void

    .line 31324
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 663
    :cond_6
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    .line 674
    :cond_7
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 678
    :cond_8
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 679
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_7

    .line 681
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 686
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 665
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_c

    .line 667
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 669
    :cond_b
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_b

    return-void

    .line 32324
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final postMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    return v0

    .line 18104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final postMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    instance-of v0, p1, Lo/makeTag;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 1167
    move-object v0, p1

    check-cast v0, Lo/makeTag;

    .line 1168
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 1170
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 1171
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 1173
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/makeTag;->extraCallback(J)V

    .line 1174
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 47329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 47330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1191
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1179
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/makeTag;->extraCallback(J)V

    .line 1180
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1183
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 1184
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 1186
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 1194
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 1196
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 1197
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 1199
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 48329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 48330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1217
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1205
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->mayLaunchUrl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1209
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 1210
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 1212
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final requestPostMessageChannel()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService()I

    move-result v0

    return v0

    .line 19104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final updateVisuals()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result v0

    return v0

    .line 21104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final updateVisuals(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    instance-of v0, p1, Lo/getEventAppExecutionExceptionSize;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 1109
    move-object v0, p1

    check-cast v0, Lo/getEventAppExecutionExceptionSize;

    .line 1110
    iget p1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 1112
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->warmup()I

    move-result p1

    .line 1113
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 1115
    :cond_0
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 1116
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 45329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 45330
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1133
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1121
    :cond_3
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    .line 1122
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1125
    :cond_4
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result p1

    .line 1126
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq p1, v1, :cond_3

    .line 1128
    iput p1, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 1136
    :cond_5
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    .line 1138
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    .line 1139
    iget-object v1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 1141
    :cond_6
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 46329
    iget-object p1, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {p1}, Lo/writeSessionAppClsId;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-ne p1, v1, :cond_7

    return-void

    .line 46330
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1159
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1147
    :cond_9
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1151
    :cond_a
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 1152
    iget v1, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v1, :cond_9

    .line 1154
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void
.end method

.method public final warmup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17103
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->warmup()I

    move-result v0

    return v0

    .line 17104
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public final warmup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SessionProtobufHelper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 38103
    :cond_0
    iget v0, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    invoke-static {v0}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 37246
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v0

    .line 861
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lo/writeSessionEventAppExecutionException;->onPostMessage:Lo/writeSessionAppClsId;

    invoke-virtual {v0}, Lo/writeSessionAppClsId;->onMessageChannelReady()I

    move-result v0

    .line 866
    iget v2, p0, Lo/writeSessionEventAppExecutionException;->extraCallback:I

    if-eq v0, v2, :cond_0

    .line 868
    iput v0, p0, Lo/writeSessionEventAppExecutionException;->onMessageChannelReady:I

    return-void

    .line 38104
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 857
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onRelationshipValidationResult()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method
