.class final Lo/writeThread;
.super Lo/getSessionAppSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getSessionAppSize<",
        "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/getSessionAppSize;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/attemptUploadWithRetry;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;TUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    check-cast p2, Lo/getEventAppExecutionSize$onMessageChannelReady;

    .line 2226
    iget-object v0, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 3100
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 81
    iget-object v1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 3115
    iget-boolean v1, v1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 3120
    iget-boolean v1, v1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 83
    sget-object p3, Lo/writeThread$5;->extraCallback:[I

    .line 3290
    iget-object v1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 4105
    iget-object v1, v1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 190
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Type cannot be packed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 5105
    iget-object p2, p2, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 191
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->ICustomTabsService(Ljava/util/List;)V

    .line 179
    iget-object p1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 4125
    iget-object p1, p1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->extraCallback:Lo/getEventLogSize$onNavigationEvent;

    .line 180
    invoke-static {v0, p3, p1, p5, p6}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/getEventLogSize$onNavigationEvent;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object p5

    goto/16 :goto_0

    .line 170
    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->postMessage(Ljava/util/List;)V

    goto/16 :goto_0

    .line 163
    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->updateVisuals(Ljava/util/List;)V

    goto :goto_0

    .line 156
    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->newSession(Ljava/util/List;)V

    goto :goto_0

    .line 149
    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor(Ljava/util/List;)V

    goto :goto_0

    .line 142
    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V

    goto :goto_0

    .line 135
    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->asInterface(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->onTransact(Ljava/util/List;)V

    goto :goto_0

    .line 121
    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult(Ljava/util/List;)V

    goto :goto_0

    .line 114
    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->extraCallback(Ljava/util/List;)V

    goto :goto_0

    .line 107
    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->onPostMessage(Ljava/util/List;)V

    goto :goto_0

    .line 100
    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/util/List;)V

    goto :goto_0

    .line 93
    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Ljava/util/List;)V

    goto :goto_0

    .line 86
    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1, p3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback(Ljava/util/List;)V

    .line 193
    :goto_0
    iget-object p1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {p4, p1, p3}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5290
    :cond_0
    iget-object v1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 6105
    iget-object v1, v1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 197
    sget-object v2, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->getInterfaceDescriptor:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 198
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->asInterface()I

    move-result p1

    .line 199
    iget-object p3, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 6125
    iget-object p3, p3, Lo/getEventAppExecutionSize$ICustomTabsCallback;->extraCallback:Lo/getEventLogSize$onNavigationEvent;

    .line 199
    invoke-interface {p3, p1}, Lo/getEventLogSize$onNavigationEvent;->extraCallback(I)Lo/getEventLogSize$ICustomTabsCallback;

    move-result-object p3

    if-nez p3, :cond_1

    .line 201
    invoke-static {v0, p1, p5, p6}, Lo/NativeSessionReport;->onPostMessage(IILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_1

    .line 208
    :cond_2
    sget-object p6, Lo/writeThread$5;->extraCallback:[I

    .line 6290
    iget-object v0, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 7105
    iget-object v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    move-object p1, v3

    goto/16 :goto_1

    .line 8235
    :pswitch_e
    iget-object p6, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 264
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 263
    invoke-interface {p1, p6, p3}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 7235
    :pswitch_f
    iget-object p6, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 258
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 257
    invoke-interface {p1, p6, p3}, Lo/attemptUploadWithRetry;->onPostMessage(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1

    .line 253
    :pswitch_10
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->newSession()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 234
    :pswitch_11
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p1

    goto/16 :goto_1

    .line 268
    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :pswitch_13
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->mayLaunchUrl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_1

    .line 246
    :pswitch_14
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->updateVisuals()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 243
    :pswitch_15
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->extraCommand()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 240
    :pswitch_16
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->requestPostMessageChannel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 237
    :pswitch_17
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->warmup()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 231
    :pswitch_18
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    .line 228
    :pswitch_19
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 225
    :pswitch_1a
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->asBinder()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 222
    :pswitch_1b
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->asInterface()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 219
    :pswitch_1c
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 216
    :pswitch_1d
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    .line 213
    :pswitch_1e
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->onPostMessage()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    .line 210
    :pswitch_1f
    invoke-interface {p1}, Lo/attemptUploadWithRetry;->ICustomTabsCallback()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 8295
    :goto_1
    iget-object p3, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    iget-boolean p3, p3, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    if-eqz p3, :cond_3

    .line 272
    iget-object p2, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {p4, p2, p1}, Lo/getBinaryImageSize;->onMessageChannelReady(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto :goto_3

    .line 274
    :cond_3
    sget-object p3, Lo/writeThread$5;->extraCallback:[I

    .line 9290
    iget-object p6, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 10105
    iget-object p6, p6, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 274
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p3, p3, p6

    const/16 p6, 0x11

    if-eq p3, p6, :cond_4

    const/16 p6, 0x12

    if-eq p3, p6, :cond_4

    goto :goto_2

    .line 277
    :cond_4
    iget-object p3, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 10266
    iget-object p6, p4, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {p6, p3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 10267
    instance-of p6, p3, Lo/getFrameSize;

    if-eqz p6, :cond_5

    .line 10268
    check-cast p3, Lo/getFrameSize;

    .line 11067
    invoke-virtual {p3, v3}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object p3

    :cond_5
    if-eqz p3, :cond_6

    .line 279
    invoke-static {p3, p1}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 285
    :cond_6
    :goto_2
    iget-object p2, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {p4, p2, p1}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    :goto_3
    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method final ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;
    .locals 1

    .line 48159
    iget-object p1, p1, Lo/writeSessionEventDevice;->onMessageChannelReady:Ljava/util/Map;

    new-instance v0, Lo/writeSessionEventDevice$extraCallback;

    invoke-direct {v0, p2, p3}, Lo/writeSessionEventDevice$extraCallback;-><init>(Ljava/lang/Object;I)V

    .line 48160
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getEventAppExecutionSize$onMessageChannelReady;

    return-object p1
.end method

.method final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1

    .line 2050
    check-cast p1, Lo/getEventAppExecutionSize$extraCallback;

    iget-object p1, p1, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    .line 2124
    iget-boolean v0, p1, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 2127
    iget-object v0, p1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0}, Lo/Report$Type;->ICustomTabsCallback()V

    const/4 v0, 0x1

    .line 2128
    iput-boolean v0, p1, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    :cond_0
    return-void
.end method

.method final ICustomTabsCallback(Lo/WireFormat$FieldType$2;)Z
    .locals 0

    .line 45
    instance-of p1, p1, Lo/getEventAppExecutionSize$extraCallback;

    return p1
.end method

.method final extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/sendReport;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 11115
    iget-boolean v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_2

    .line 303
    sget-object v1, Lo/writeThread$5;->extraCallback:[I

    .line 12105
    iget-object v2, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 424
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 425
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 30100
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 428
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 430
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v1

    .line 426
    invoke-static {v0, p2, p1, v1}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_0

    .line 412
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29100
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 416
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 418
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v1

    .line 414
    invoke-static {v0, p2, p1, v1}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    :cond_0
    return-void

    .line 28100
    :pswitch_2
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 408
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 407
    invoke-static {v0, p2, p1}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;)V

    return-void

    .line 21100
    :pswitch_3
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 362
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 361
    invoke-static {v0, p2, p1}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;)V

    return-void

    .line 27100
    :pswitch_4
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 402
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 27120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 400
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 26100
    :pswitch_5
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 395
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 26120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 393
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 25100
    :pswitch_6
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 388
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 25120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 386
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 24100
    :pswitch_7
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 381
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 24120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 379
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 23100
    :pswitch_8
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 374
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 23120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 372
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 22100
    :pswitch_9
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 367
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 22120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 365
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 20100
    :pswitch_a
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 356
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 20120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 354
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 19100
    :pswitch_b
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 349
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 19120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 347
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 18100
    :pswitch_c
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 342
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 18120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 340
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 17100
    :pswitch_d
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 335
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 17120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 333
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 16100
    :pswitch_e
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 328
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 16120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 326
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 15100
    :pswitch_f
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 321
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 15120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 319
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 14100
    :pswitch_10
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 314
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 14120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 312
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    return-void

    .line 13100
    :pswitch_11
    iget v1, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 307
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 13120
    iget-boolean v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 305
    invoke-static {v1, p2, p1, v0}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    sget-object v1, Lo/writeThread$5;->extraCallback:[I

    .line 30105
    iget-object v2, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 436
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 48100
    :pswitch_12
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 494
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 495
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p2

    .line 492
    invoke-interface {p1, v0, v1, p2}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_1

    .line 47100
    :pswitch_13
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 488
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 489
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p2

    .line 486
    invoke-interface {p1, v0, v1, p2}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    return-void

    .line 46100
    :pswitch_14
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 483
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    return-void

    .line 39100
    :pswitch_15
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 462
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/SessionProtobufHelper;

    invoke-interface {p1, v0, p2}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    return-void

    .line 45100
    :pswitch_16
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 480
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onNavigationEvent(II)V

    return-void

    .line 44100
    :pswitch_17
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 477
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->onNavigationEvent(IJ)V

    return-void

    .line 43100
    :pswitch_18
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 474
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onTransact(II)V

    return-void

    .line 42100
    :pswitch_19
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 471
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->onPostMessage(IJ)V

    return-void

    .line 41100
    :pswitch_1a
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 468
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onPostMessage(II)V

    return-void

    .line 40100
    :pswitch_1b
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 465
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->extraCallback(II)V

    return-void

    .line 38100
    :pswitch_1c
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 459
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    return-void

    .line 37100
    :pswitch_1d
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 456
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->ICustomTabsCallback(II)V

    return-void

    .line 36100
    :pswitch_1e
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 453
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    return-void

    .line 35100
    :pswitch_1f
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 450
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onNavigationEvent(II)V

    return-void

    .line 34100
    :pswitch_20
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 447
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->onMessageChannelReady(IJ)V

    return-void

    .line 33100
    :pswitch_21
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 444
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->extraCallback(IJ)V

    return-void

    .line 32100
    :pswitch_22
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 441
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/sendReport;->onNavigationEvent(IF)V

    return-void

    .line 31100
    :pswitch_23
    iget v0, v0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 438
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/sendReport;->ICustomTabsCallback(ID)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method final onNavigationEvent(Ljava/lang/Object;)Lo/getBinaryImageSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 60
    check-cast p1, Lo/getEventAppExecutionSize$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$extraCallback;->ICustomTabsCallback()Lo/getBinaryImageSize;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(Lo/SessionProtobufHelper;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionProtobufHelper;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    check-cast p2, Lo/getEventAppExecutionSize$onMessageChannelReady;

    .line 49235
    iget-object v0, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 530
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->newBuilderForType()Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/WireFormat$FieldType$2$extraCallback;->buildPartial()Lo/WireFormat$FieldType$2;

    move-result-object v0

    .line 532
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 50068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50070
    new-instance v1, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lo/CodedOutputStream$OutOfSpaceException$onNavigationEvent;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 534
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object p1

    .line 50076
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p1

    .line 50074
    invoke-interface {p1, v0, v1, p3}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 535
    iget-object p1, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {p4, p1, v0}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 537
    invoke-interface {v1}, Lo/attemptUploadWithRetry;->onNavigationEvent()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_0

    return-void

    .line 538
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 50073
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Direct buffers not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onPostMessage(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 11100
    iget p1, p1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    return p1
.end method

.method final onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 50
    check-cast p1, Lo/getEventAppExecutionSize$extraCallback;

    iget-object p1, p1, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    return-object p1
.end method

.method final onPostMessage(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/attemptUploadWithRetry;",
            "Ljava/lang/Object;",
            "Lo/writeSessionEventDevice;",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    check-cast p2, Lo/getEventAppExecutionSize$onMessageChannelReady;

    .line 48235
    iget-object v0, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/lang/Class;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object p1

    .line 518
    iget-object p2, p2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    invoke-virtual {p4, p2, p1}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    return-void
.end method
