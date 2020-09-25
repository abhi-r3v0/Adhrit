.class final Lo/WireFormat$FieldType$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CreateReportRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CreateReportRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:Lo/SessionReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getSessionAppSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/WireFormat$FieldType$2;


# direct methods
.method private constructor <init>(Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionReport<",
            "**>;",
            "Lo/getSessionAppSize<",
            "*>;",
            "Lo/WireFormat$FieldType$2;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    .line 49
    invoke-virtual {p2, p3}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/WireFormat$FieldType$2;)Z

    move-result p1

    iput-boolean p1, p0, Lo/WireFormat$FieldType$3;->ICustomTabsCallback:Z

    .line 50
    iput-object p2, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    .line 51
    iput-object p3, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    return-void
.end method

.method static extraCallback(Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/SessionReport<",
            "**>;",
            "Lo/getSessionAppSize<",
            "*>;",
            "Lo/WireFormat$FieldType$2;",
            ")",
            "Lo/WireFormat$FieldType$3<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lo/WireFormat$FieldType$3;

    invoke-direct {v0, p0, p1, p2}, Lo/WireFormat$FieldType$3;-><init>(Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType$2;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/sendReport;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lo/getBinaryImageSize;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getBinaryImageSize$ICustomTabsCallback;

    .line 108
    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->onMessageChannelReady()Lo/DefaultCreateReportSpiCall$extraCallback;

    move-result-object v3

    sget-object v4, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    instance-of v3, v1, Lo/getFrameSize$onNavigationEvent;

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->onNavigationEvent()I

    move-result v2

    check-cast v1, Lo/getFrameSize$onNavigationEvent;

    .line 2113
    iget-object v1, v1, Lo/getFrameSize$onNavigationEvent;->onPostMessage:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getFrameSize;

    .line 113
    invoke-virtual {v1}, Lo/WireFormat;->onPostMessage()Lo/SessionProtobufHelper;

    move-result-object v1

    .line 112
    invoke-interface {p2, v2, v1}, Lo/sendReport;->extraCallback(ILjava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->onNavigationEvent()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo/sendReport;->extraCallback(ILjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    .line 2127
    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V

    return-void
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->newBuilderForType()Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/WireFormat$FieldType$2$extraCallback;->buildPartial()Lo/WireFormat$FieldType$2;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;[BIILo/writeRawLittleEndian64$onPostMessage;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    move-object v0, p1

    check-cast v0, Lo/getEventAppExecutionSize;

    iget-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 136
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v1

    .line 138
    iput-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 140
    :cond_0
    check-cast p1, Lo/getEventAppExecutionSize$extraCallback;

    .line 141
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$extraCallback;->ICustomTabsCallback()Lo/getBinaryImageSize;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_e

    add-int/lit8 v3, p3, 0x1

    .line 3079
    aget-byte p3, p2, p3

    if-ltz p3, :cond_1

    .line 3081
    iput p3, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v4, v3

    goto :goto_1

    .line 3084
    :cond_1
    invoke-static {p3, p2, v3, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    move v4, p3

    .line 145
    :goto_1
    iget p3, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 146
    sget v3, Lo/DefaultCreateReportSpiCall;->extraCallback:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_4

    .line 147
    invoke-static {p3}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 148
    iget-object v2, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    iget-object v3, p5, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    iget-object v5, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    .line 151
    invoke-static {p3}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v6

    .line 149
    invoke-virtual {v2, v3, v5, v6}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/getEventAppExecutionSize$onMessageChannelReady;

    if-eqz v8, :cond_2

    .line 155
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object p3

    .line 3235
    iget-object v2, v8, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 155
    invoke-virtual {p3, v2}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p3

    .line 154
    invoke-static {p3, p2, v4, p4, p5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    .line 158
    iget-object v2, v8, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    iget-object v3, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 161
    invoke-static/range {v2 .. v7}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    :goto_2
    move-object v2, v8

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {p3, p2, v4, p4, p5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    move-object v3, v0

    :goto_3
    if-ge v4, p4, :cond_c

    add-int/lit8 v6, v4, 0x1

    .line 4079
    aget-byte v4, p2, v4

    if-ltz v4, :cond_5

    .line 4081
    iput v4, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_4

    .line 4084
    :cond_5
    invoke-static {v4, p2, v6, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v6

    .line 175
    :goto_4
    iget v4, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 176
    invoke-static {v4}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v7

    .line 177
    invoke-static {v4}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v8

    if-eq v7, v5, :cond_8

    const/4 v9, 0x3

    if-eq v7, v9, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_7

    .line 192
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v4

    .line 5235
    iget-object v7, v2, Lo/getEventAppExecutionSize$onMessageChannelReady;->onMessageChannelReady:Lo/WireFormat$FieldType$2;

    .line 193
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 192
    invoke-virtual {v4, v7}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v4

    .line 191
    invoke-static {v4, p2, v6, p4, p5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 195
    iget-object v6, v2, Lo/getEventAppExecutionSize$onMessageChannelReady;->extraCallback:Lo/getEventAppExecutionSize$ICustomTabsCallback;

    iget-object v7, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-ne v8, v5, :cond_a

    .line 199
    invoke-static {p2, v6, p5}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 200
    iget-object v3, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    check-cast v3, Lo/SessionProtobufHelper;

    goto :goto_3

    :cond_8
    if-nez v8, :cond_a

    add-int/lit8 p3, v6, 0x1

    .line 5079
    aget-byte v2, p2, v6

    if-ltz v2, :cond_9

    .line 5081
    iput v2, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_5

    .line 5084
    :cond_9
    invoke-static {v2, p2, p3, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p3

    :goto_5
    move v4, p3

    .line 182
    iget p3, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 183
    iget-object v2, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    iget-object v6, p5, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    iget-object v7, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    .line 185
    invoke-virtual {v2, v6, v7, p3}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getEventAppExecutionSize$onMessageChannelReady;

    goto :goto_3

    .line 208
    :cond_a
    :goto_6
    sget v7, Lo/DefaultCreateReportSpiCall;->onMessageChannelReady:I

    if-eq v4, v7, :cond_b

    .line 211
    invoke-static {v4, p2, v6, p4, p5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    goto :goto_3

    :cond_b
    move v4, v6

    :cond_c
    if-eqz v3, :cond_d

    .line 216
    invoke-static {p3, v5}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p3

    .line 215
    invoke-virtual {v1, p3, v3}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    :cond_d
    move p3, v4

    goto/16 :goto_0

    :cond_e
    if-ne p3, p4, :cond_f

    return-void

    .line 220
    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lo/getBinaryImageSize;->onPostMessage()Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    .line 5389
    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5390
    invoke-virtual {v0, v1}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 380
    iget-boolean v2, p0, Lo/WireFormat$FieldType$3;->ICustomTabsCallback:Z

    if-eqz v2, :cond_3

    .line 381
    iget-object v2, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v2, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    const/4 v2, 0x0

    .line 5773
    :goto_0
    iget-object v3, p1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 6179
    iget-object v3, v3, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 5774
    iget-object v3, p1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 6184
    iget-object v3, v3, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5774
    invoke-static {v3}, Lo/getBinaryImageSize;->ICustomTabsCallback(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5776
    :cond_0
    iget-object p1, p1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 6194
    iget-object v1, p1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 6196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 5776
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5777
    invoke-static {v1}, Lo/getBinaryImageSize;->ICustomTabsCallback(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    invoke-virtual {v1, p2}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lo/WireFormat$FieldType$3;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v0, p2}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 85
    iget-boolean v1, p0, Lo/WireFormat$FieldType$3;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-virtual {v1, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    invoke-static {v0, p1, p2}, Lo/NativeSessionReport;->ICustomTabsCallback(Lo/SessionReport;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lo/WireFormat$FieldType$3;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    invoke-static {v0, p1, p2}, Lo/NativeSessionReport;->onNavigationEvent(Lo/getSessionAppSize;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/attemptUploadWithRetry;",
            "Lo/writeSessionEventDevice;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lo/WireFormat$FieldType$3;->extraCallback:Lo/SessionReport;

    iget-object v1, p0, Lo/WireFormat$FieldType$3;->onNavigationEvent:Lo/getSessionAppSize;

    .line 5242
    invoke-virtual {v0, p1}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5243
    invoke-virtual {v1, p1}, Lo/getSessionAppSize;->onNavigationEvent(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v3

    .line 5246
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onNavigationEvent()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    .line 5263
    invoke-virtual {v0, p1, v2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5282
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onMessageChannelReady()I

    move-result v4

    .line 5283
    sget v6, Lo/DefaultCreateReportSpiCall;->extraCallback:I

    if-eq v4, v6, :cond_4

    .line 5284
    invoke-static {v4}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 5285
    iget-object v5, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    .line 5287
    invoke-static {v4}, Lo/DefaultCreateReportSpiCall;->onPostMessage(I)I

    move-result v4

    .line 5286
    invoke-virtual {v1, p3, v5, v4}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5289
    invoke-virtual {v1, p2, v4, p3, v3}, Lo/getSessionAppSize;->onPostMessage(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V

    goto :goto_1

    .line 5293
    :cond_2
    invoke-virtual {v0, v2, p2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z

    move-result v4

    goto :goto_2

    .line 5296
    :cond_3
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->extraCallback()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 5324
    :cond_5
    :goto_0
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onNavigationEvent()I

    move-result v8

    if-eq v8, v5, :cond_9

    .line 5329
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onMessageChannelReady()I

    move-result v8

    .line 5330
    sget v9, Lo/DefaultCreateReportSpiCall;->onNavigationEvent:I

    if-ne v8, v9, :cond_6

    .line 5331
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->warmup()I

    move-result v4

    .line 5332
    iget-object v6, p0, Lo/WireFormat$FieldType$3;->onPostMessage:Lo/WireFormat$FieldType$2;

    .line 5333
    invoke-virtual {v1, p3, v6, v4}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 5335
    :cond_6
    sget v9, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback:I

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 5337
    invoke-virtual {v1, p2, v6, p3, v3}, Lo/getSessionAppSize;->onPostMessage(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V

    goto :goto_0

    .line 5342
    :cond_7
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v7

    goto :goto_0

    .line 5345
    :cond_8
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->extraCallback()Z

    move-result v8

    if-nez v8, :cond_5

    .line 5351
    :cond_9
    invoke-interface {p2}, Lo/attemptUploadWithRetry;->onMessageChannelReady()I

    move-result v5

    sget v8, Lo/DefaultCreateReportSpiCall;->onMessageChannelReady:I

    if-ne v5, v8, :cond_c

    if-eqz v7, :cond_b

    if-eqz v6, :cond_a

    .line 5360
    invoke-virtual {v1, v7, v6, p3, v3}, Lo/getSessionAppSize;->onNavigationEvent(Lo/SessionProtobufHelper;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;)V

    goto :goto_1

    .line 5362
    :cond_a
    invoke-virtual {v0, v2, v4, v7}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;ILo/SessionProtobufHelper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    .line 5263
    invoke-virtual {v0, p1, v2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5352
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onPostMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    .line 5263
    invoke-virtual {v0, p1, v2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5264
    throw p2
.end method
