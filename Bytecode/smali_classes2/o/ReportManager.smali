.class final Lo/ReportManager;
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


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final onMessageChannelReady:Lsun/misc/Unsafe;


# instance fields
.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:Z

.field private final asBinder:I

.field private final asInterface:[Ljava/lang/Object;

.field final extraCallback:Lo/getDefaultDefault;

.field private final extraCommand:Lo/getThreadSize;

.field private final getInterfaceDescriptor:[I

.field private final mayLaunchUrl:Lo/WireFormat$FieldType;

.field private final newSession:Z

.field final onNavigationEvent:Lo/WireFormat$FieldType$2;

.field private final onPostMessage:[I

.field private final onRelationshipValidationResult:I

.field private final onTransact:Z

.field private final requestPostMessageChannel:Lo/SessionReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SessionReport<",
            "**>;"
        }
    .end annotation
.end field

.field private final updateVisuals:Lo/getSessionAppSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation
.end field

.field private final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 92
    sput-object v0, Lo/ReportManager;->ICustomTabsCallback:[I

    .line 101
    invoke-static {}, Lo/CreateReportSpiCall;->extraCallback()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILo/WireFormat$FieldType$2;ZZ[IIILo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lo/WireFormat$FieldType$2;",
            "ZZ[III",
            "Lo/getDefaultDefault;",
            "Lo/getThreadSize;",
            "Lo/SessionReport<",
            "**>;",
            "Lo/getSessionAppSize<",
            "*>;",
            "Lo/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lo/ReportManager;->onPostMessage:[I

    .line 191
    iput-object p2, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    .line 192
    iput p3, p0, Lo/ReportManager;->onRelationshipValidationResult:I

    .line 193
    iput p4, p0, Lo/ReportManager;->asBinder:I

    .line 195
    instance-of p1, p5, Lo/getEventAppExecutionSize;

    iput-boolean p1, p0, Lo/ReportManager;->onTransact:Z

    .line 196
    iput-boolean p6, p0, Lo/ReportManager;->newSession:Z

    if-eqz p14, :cond_0

    .line 197
    invoke-virtual {p14, p5}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/WireFormat$FieldType$2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    .line 198
    iput-boolean p7, p0, Lo/ReportManager;->ICustomTabsService:Z

    .line 200
    iput-object p8, p0, Lo/ReportManager;->getInterfaceDescriptor:[I

    .line 201
    iput p9, p0, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    .line 202
    iput p10, p0, Lo/ReportManager;->warmup:I

    .line 204
    iput-object p11, p0, Lo/ReportManager;->extraCallback:Lo/getDefaultDefault;

    .line 205
    iput-object p12, p0, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    .line 206
    iput-object p13, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 207
    iput-object p14, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    .line 208
    iput-object p5, p0, Lo/ReportManager;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    .line 209
    iput-object p15, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    return-void
.end method

.method private ICustomTabsCallback(II)I
    .locals 4

    .line 5858
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 54435
    iget-object v3, p0, Lo/ReportManager;->onPostMessage:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static ICustomTabsCallback([BIILo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeRawLittleEndian64$onPostMessage;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4351
    sget-object v0, Lo/ReportManager$2;->onMessageChannelReady:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 4405
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4402
    :pswitch_0
    invoke-static {p0, p1, p5}, Lo/writeRawLittleEndian64;->onPostMessage([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    goto/16 :goto_5

    .line 4398
    :pswitch_1
    invoke-static {p0, p1, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 4399
    iget-wide p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {p1, p2}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_2
    add-int/lit8 p2, p1, 0x1

    .line 53820
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 53822
    iput p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move p0, p2

    goto :goto_0

    .line 53825
    :cond_0
    invoke-static {p1, p0, p2, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 4395
    :goto_0
    iget p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    .line 4391
    :pswitch_3
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object p3

    invoke-virtual {p3, p4}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object p3

    .line 4390
    invoke-static {p3, p0, p1, p2, p5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    goto/16 :goto_5

    .line 4385
    :pswitch_4
    invoke-static {p0, p1, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 4386
    iget-wide p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_5
    add-int/lit8 p2, p1, 0x1

    .line 53814
    aget-byte p1, p0, p1

    if-ltz p1, :cond_1

    .line 53816
    iput p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move p0, p2

    goto :goto_1

    .line 53819
    :cond_1
    invoke-static {p1, p0, p2, p5}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 4381
    :goto_1
    iget p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_5

    .line 53813
    :pswitch_6
    invoke-static {p0, p1}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 4374
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_2

    .line 4370
    :pswitch_7
    invoke-static {p0, p1}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_3

    .line 4365
    :pswitch_8
    invoke-static {p0, p1}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p0, p1, 0x4

    goto :goto_5

    .line 53812
    :pswitch_9
    invoke-static {p0, p1}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    .line 4360
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    :goto_3
    add-int/lit8 p0, p1, 0x8

    goto :goto_5

    .line 4357
    :pswitch_a
    invoke-static {p0, p1, p5}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    goto :goto_5

    .line 4353
    :pswitch_b
    invoke-static {p0, p1, p5}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result p0

    .line 4354
    iget-wide p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_4

    :cond_2
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    :goto_5
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ICustomTabsCallback(ILjava/lang/Object;Lo/sendReport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5620
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5621
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    return-void

    .line 5623
    :cond_0
    check-cast p1, Lo/SessionProtobufHelper;

    invoke-interface {p2, p0, p1}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/SessionReport;Lo/getSessionAppSize;Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lo/getBinaryImageSize$ICustomTabsCallback<",
            "TET;>;>(",
            "Lo/SessionReport<",
            "TUT;TUB;>;",
            "Lo/getSessionAppSize<",
            "TET;>;TT;",
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

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 3862
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onNavigationEvent()I

    move-result v3

    .line 53616
    iget v4, v1, Lo/ReportManager;->onRelationshipValidationResult:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    iget v4, v1, Lo/ReportManager;->asBinder:I

    if-gt v3, v4, :cond_1

    .line 53617
    invoke-direct {v1, v3, v5}, Lo/ReportManager;->ICustomTabsCallback(II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_b

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    .line 4322
    iget v0, v1, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_2
    iget v2, v1, Lo/ReportManager;->warmup:I

    if-ge v0, v2, :cond_2

    .line 4323
    iget-object v2, v1, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v2, v2, v0

    .line 4324
    invoke-direct {v1, v10, v2, v13, v9}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v13, :cond_3

    .line 4327
    invoke-virtual {v9, v10, v13}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 3869
    :cond_4
    :try_start_1
    iget-boolean v4, v1, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-nez v4, :cond_5

    move-object/from16 v14, p2

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    iget-object v4, v1, Lo/ReportManager;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    move-object/from16 v14, p2

    .line 3872
    invoke-virtual {v14, v11, v4, v3}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/writeSessionEventDevice;Lo/WireFormat$FieldType$2;I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    if-nez v2, :cond_6

    .line 3876
    invoke-virtual/range {p2 .. p3}, Lo/getSessionAppSize;->onNavigationEvent(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v2

    :cond_6
    move-object v15, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object v6, v15

    move-object v7, v13

    move-object/from16 v8, p1

    .line 3879
    invoke-virtual/range {v2 .. v8}, Lo/getSessionAppSize;->ICustomTabsCallback(Lo/attemptUploadWithRetry;Ljava/lang/Object;Lo/writeSessionEventDevice;Lo/getBinaryImageSize;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    move-object v2, v15

    goto :goto_0

    :cond_7
    if-nez v13, :cond_8

    .line 3894
    invoke-virtual {v9, v10}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 3897
    :cond_8
    invoke-virtual {v9, v13, v0}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v3, :cond_0

    .line 4322
    iget v0, v1, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_4
    iget v2, v1, Lo/ReportManager;->warmup:I

    if-ge v0, v2, :cond_9

    .line 4323
    iget-object v2, v1, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v2, v2, v0

    .line 4324
    invoke-direct {v1, v10, v2, v13, v9}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    if-eqz v13, :cond_a

    .line 4327
    invoke-virtual {v9, v10, v13}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v14, p2

    .line 53620
    :try_start_2
    iget-object v6, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/high16 v8, 0xff00000

    and-int/2addr v8, v6

    ushr-int/lit8 v8, v8, 0x14

    const/4 v15, 0x1

    const v16, 0xfffff

    packed-switch v8, :pswitch_data_0

    if-nez v13, :cond_18

    .line 4297
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_a

    :pswitch_0
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4291
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v7

    invoke-interface {v0, v7, v11}, Lo/attemptUploadWithRetry;->extraCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v7

    .line 4288
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53811
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53809
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_1
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4284
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->mayLaunchUrl()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4283
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53806
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53804
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_2
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4279
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->updateVisuals()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4278
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53801
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53799
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_3
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4274
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->extraCommand()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4273
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53796
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53794
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_4
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4269
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->requestPostMessageChannel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4268
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53791
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53789
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    .line 4255
    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->postMessage()I

    move-result v5

    .line 53781
    iget-object v7, v1, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v8, v4, 0x3

    shl-int/2addr v8, v15

    add-int/2addr v8, v15

    aget-object v7, v7, v8

    check-cast v7, Lo/getEventLogSize$extraCallback;

    if-eqz v7, :cond_d

    .line 4257
    invoke-interface {v7}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_5

    .line 4262
    :cond_c
    invoke-static {v3, v5, v13, v9}, Lo/NativeSessionReport;->onPostMessage(IILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :cond_d
    :goto_5
    and-int v6, v6, v16

    int-to-long v6, v6

    .line 4258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v6, v7, v5}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53786
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53784
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_6
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4250
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->warmup()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4249
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53780
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53778
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_7
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4245
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v7

    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53775
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53773
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_0

    .line 53763
    :pswitch_8
    :try_start_4
    iget-object v7, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v8, v4, 0x2

    aget v7, v7, v8
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    and-int v7, v7, v16

    move-object/from16 v17, v13

    int-to-long v12, v7

    .line 53762
    :try_start_5
    invoke-static {v10, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v7

    if-ne v7, v3, :cond_e

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_f

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4230
    invoke-static {v10, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 4232
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    .line 4231
    invoke-interface {v0, v4, v11}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v4

    .line 4229
    invoke-static {v7, v4}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4233
    invoke-static {v10, v5, v6, v4}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_f
    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4239
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v7

    .line 4238
    invoke-interface {v0, v7, v11}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v7

    .line 4235
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4240
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    .line 53770
    :goto_6
    iget-object v4, v1, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v8

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53768
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v17, v13

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v17, v13

    .line 4223
    invoke-direct {v1, v10, v6, v0}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILo/attemptUploadWithRetry;)V

    .line 53760
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53758
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4219
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 4218
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53756
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53754
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4214
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onTransact()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4213
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53751
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53749
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_c
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4209
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->asBinder()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4208
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53746
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53744
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_d
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4204
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->asInterface()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4203
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53741
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53739
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_e
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4199
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4198
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53736
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53734
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_f
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4194
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4193
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53731
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53729
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_10
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4189
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onPostMessage()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 4188
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53726
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53724
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_11
    move-object/from16 v17, v13

    and-int v5, v6, v16

    int-to-long v5, v5

    .line 4184
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 4183
    invoke-static {v10, v5, v6, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53721
    iget-object v5, v1, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v4, v4, 0x2

    aget v4, v5, v4

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53719
    invoke-static {v10, v4, v5, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_12
    move-object/from16 v17, v13

    .line 53694
    iget-object v3, v1, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    aget-object v3, v3, v4

    .line 53715
    iget-object v4, v1, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v7

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53696
    invoke-static {v10, v4, v5}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_10

    .line 53702
    iget-object v6, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v6}, Lo/WireFormat$FieldType;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v6

    .line 53703
    invoke-static {v10, v4, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 53704
    :cond_10
    iget-object v7, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v7, v6}, Lo/WireFormat$FieldType;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 53706
    iget-object v7, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v7}, Lo/WireFormat$FieldType;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v7

    .line 53707
    iget-object v8, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v8, v7, v6}, Lo/WireFormat$FieldType;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53708
    invoke-static {v10, v4, v5, v7}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v7

    .line 53710
    :cond_11
    :goto_7
    iget-object v4, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 53711
    invoke-interface {v4, v6}, Lo/WireFormat$FieldType;->extraCallback(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 53712
    invoke-interface {v5, v3}, Lo/WireFormat$FieldType;->onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;

    move-result-object v3

    .line 53710
    invoke-interface {v0, v4, v3, v11}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/util/Map;Lo/getTagWireType$extraCallback;Lo/writeSessionEventDevice;)V

    goto :goto_8

    :pswitch_13
    move-object/from16 v17, v13

    and-int v3, v6, v16

    int-to-long v5, v3

    .line 4175
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v3

    .line 53691
    iget-object v4, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    .line 53692
    invoke-virtual {v4, v10, v5, v6}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 53691
    invoke-interface {v0, v4, v3, v11}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V

    goto :goto_8

    :pswitch_14
    move-object/from16 v17, v13

    .line 4166
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4167
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4166
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->postMessage(Ljava/util/List;)V

    goto :goto_8

    :pswitch_15
    move-object/from16 v17, v13

    .line 4162
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4163
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4162
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->updateVisuals(Ljava/util/List;)V

    goto :goto_8

    :pswitch_16
    move-object/from16 v17, v13

    .line 4158
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4159
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4158
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->newSession(Ljava/util/List;)V

    goto :goto_8

    :pswitch_17
    move-object/from16 v17, v13

    .line 4154
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4155
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4154
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor(Ljava/util/List;)V

    :goto_8
    move-object/from16 v13, v17

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v17, v13

    .line 4141
    iget-object v5, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v6, v6, v16

    int-to-long v6, v6

    .line 4142
    invoke-virtual {v5, v10, v6, v7}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 4143
    invoke-interface {v0, v5}, Lo/attemptUploadWithRetry;->ICustomTabsService(Ljava/util/List;)V

    .line 53685
    iget-object v6, v1, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    add-int/2addr v4, v15

    aget-object v4, v6, v4

    check-cast v4, Lo/getEventLogSize$extraCallback;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v13, v17

    .line 4145
    :try_start_6
    invoke-static {v3, v5, v4, v13, v9}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v13, v17

    goto/16 :goto_e

    :catch_0
    move-object/from16 v13, v17

    goto/16 :goto_c

    .line 4136
    :pswitch_19
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4137
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4136
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4132
    :pswitch_1a
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4133
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4132
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->asInterface(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4128
    :pswitch_1b
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4129
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4128
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onTransact(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4124
    :pswitch_1c
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4125
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4124
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4120
    :pswitch_1d
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4121
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4120
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->extraCallback(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4116
    :pswitch_1e
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4117
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4116
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onPostMessage(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4112
    :pswitch_1f
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4113
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4112
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4108
    :pswitch_20
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4109
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4108
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4104
    :pswitch_21
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4105
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4104
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4100
    :pswitch_22
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4101
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4100
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->postMessage(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4096
    :pswitch_23
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4097
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4096
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->updateVisuals(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4092
    :pswitch_24
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4093
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4092
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->newSession(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4088
    :pswitch_25
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4089
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4088
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4075
    :pswitch_26
    iget-object v5, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v6, v6, v16

    int-to-long v6, v6

    .line 4076
    invoke-virtual {v5, v10, v6, v7}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 4077
    invoke-interface {v0, v5}, Lo/attemptUploadWithRetry;->ICustomTabsService(Ljava/util/List;)V

    .line 53670
    iget-object v6, v1, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v15

    add-int/2addr v4, v15

    aget-object v4, v6, v4

    check-cast v4, Lo/getEventLogSize$extraCallback;

    .line 4079
    invoke-static {v3, v5, v4, v13, v9}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    .line 4070
    :pswitch_27
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4071
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4070
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4066
    :pswitch_28
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4067
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4066
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->warmup(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4061
    :pswitch_29
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v3

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 53663
    iget-object v6, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    .line 53664
    invoke-virtual {v6, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 53663
    invoke-interface {v0, v4, v3, v11}, Lo/attemptUploadWithRetry;->extraCallback(Ljava/util/List;Lo/CreateReportRequest;Lo/writeSessionEventDevice;)V

    goto/16 :goto_0

    :pswitch_2a
    const/high16 v3, 0x20000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_12

    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_13

    .line 53653
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 53654
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 53653
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub(Ljava/util/List;)V

    goto/16 :goto_0

    .line 53656
    :cond_13
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->asBinder(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4049
    :pswitch_2b
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4050
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4049
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->asInterface(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4045
    :pswitch_2c
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4046
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4045
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onTransact(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4041
    :pswitch_2d
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4042
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4041
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4037
    :pswitch_2e
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4038
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4037
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->extraCallback(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4033
    :pswitch_2f
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4034
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4033
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onPostMessage(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4029
    :pswitch_30
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4030
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4029
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onNavigationEvent(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4025
    :pswitch_31
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4026
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4025
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4021
    :pswitch_32
    iget-object v3, v1, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    and-int v4, v6, v16

    int-to-long v4, v4

    .line 4022
    invoke-virtual {v3, v10, v4, v5}, Lo/getThreadSize;->ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 4021
    invoke-interface {v0, v3}, Lo/attemptUploadWithRetry;->ICustomTabsCallback(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4003
    :pswitch_33
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_14

    and-int v3, v6, v16

    int-to-long v5, v3

    .line 4006
    invoke-static {v10, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 4008
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    .line 4007
    invoke-interface {v0, v4, v11}, Lo/attemptUploadWithRetry;->extraCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v4

    .line 4005
    invoke-static {v3, v4}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4009
    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 4015
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v3

    .line 4014
    invoke-interface {v0, v3, v11}, Lo/attemptUploadWithRetry;->extraCallback(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v3

    .line 4011
    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4016
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3998
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->mayLaunchUrl()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 3999
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3994
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->updateVisuals()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3995
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3990
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->extraCommand()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 3991
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3986
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->requestPostMessageChannel()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3987
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3973
    :pswitch_38
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->postMessage()I

    move-result v5

    .line 53635
    iget-object v7, v1, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v8, v4, 0x3

    shl-int/2addr v8, v15

    add-int/2addr v8, v15

    aget-object v7, v7, v8

    check-cast v7, Lo/getEventLogSize$extraCallback;

    if-eqz v7, :cond_16

    .line 3975
    invoke-interface {v7}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    .line 3980
    :cond_15
    invoke-static {v3, v5, v13, v9}, Lo/NativeSessionReport;->onPostMessage(IILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :cond_16
    :goto_9
    and-int v3, v6, v16

    int-to-long v6, v3

    .line 3976
    invoke-static {v10, v6, v7, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3977
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3968
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->warmup()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3969
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3964
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3965
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3946
    :pswitch_3b
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_17

    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3949
    invoke-static {v10, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3951
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    .line 3950
    invoke-interface {v0, v4, v11}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v4

    .line 3948
    invoke-static {v3, v4}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3952
    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_17
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3958
    invoke-direct {v1, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v3

    .line 3957
    invoke-interface {v0, v3, v11}, Lo/attemptUploadWithRetry;->onMessageChannelReady(Lo/CreateReportRequest;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v3

    .line 3954
    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3959
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 3941
    :pswitch_3c
    invoke-direct {v1, v10, v6, v0}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILo/attemptUploadWithRetry;)V

    .line 3942
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3937
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    .line 3938
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3933
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onTransact()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3934
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3929
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->asBinder()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3925
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->asInterface()I

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 3926
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3921
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onRelationshipValidationResult()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 3922
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3917
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback$Stub()J

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 3918
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3913
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->onPostMessage()F

    move-result v3

    invoke-static {v10, v5, v6, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JF)V

    .line 3914
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v3, v6, v16

    int-to-long v5, v3

    .line 3909
    invoke-interface/range {p4 .. p4}, Lo/attemptUploadWithRetry;->ICustomTabsCallback()D

    move-result-wide v7

    invoke-static {v10, v5, v6, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JD)V

    .line 3910
    invoke-direct {v1, v10, v4}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 4299
    :cond_18
    :goto_a
    invoke-virtual {v9, v13, v0}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z

    move-result v3
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v3, :cond_0

    .line 4322
    iget v0, v1, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_b
    iget v2, v1, Lo/ReportManager;->warmup:I

    if-ge v0, v2, :cond_19

    .line 4323
    iget-object v2, v1, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v2, v2, v0

    .line 4324
    invoke-direct {v1, v10, v2, v13, v9}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    if-eqz v13, :cond_1a

    .line 4327
    invoke-virtual {v9, v10, v13}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catch_1
    :goto_c
    if-nez v13, :cond_1b

    .line 4313
    :try_start_7
    invoke-virtual {v9, v10}, Lo/SessionReport;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 4315
    :cond_1b
    invoke-virtual {v9, v13, v0}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v3, :cond_0

    .line 4322
    iget v0, v1, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_d
    iget v2, v1, Lo/ReportManager;->warmup:I

    if-ge v0, v2, :cond_1c

    .line 4323
    iget-object v2, v1, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v2, v2, v0

    .line 4324
    invoke-direct {v1, v10, v2, v13, v9}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    if-eqz v13, :cond_1d

    .line 4327
    invoke-virtual {v9, v10, v13}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    return-void

    :catchall_2
    move-exception v0

    .line 4322
    :goto_e
    iget v2, v1, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_f
    iget v3, v1, Lo/ReportManager;->warmup:I

    if-ge v2, v3, :cond_1e

    .line 4323
    iget-object v3, v1, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v3, v3, v2

    .line 4324
    invoke-direct {v1, v10, v3, v13, v9}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    if-eqz v13, :cond_1f

    .line 4327
    invoke-virtual {v9, v10, v13}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4329
    :cond_1f
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method private ICustomTabsCallback(Lo/sendReport;ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/sendReport;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 3826
    iget-object v0, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 53615
    iget-object v1, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x3

    shl-int/lit8 p4, p4, 0x1

    aget-object p4, v1, p4

    .line 3828
    invoke-interface {v0, p4}, Lo/WireFormat$FieldType;->onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;

    move-result-object p4

    iget-object v0, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 3829
    invoke-interface {v0, p3}, Lo/WireFormat$FieldType;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 3826
    invoke-interface {p1, p2, p4, p3}, Lo/sendReport;->onNavigationEvent(ILo/getTagWireType$extraCallback;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 54434
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5829
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private extraCallback(I)I
    .locals 1

    .line 5675
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    aget p1, v0, p1

    return p1
.end method

.method private static extraCallback(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5731
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method static extraCallback(Lo/WireFormat$FieldType$1;Lo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)Lo/ReportManager;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/WireFormat$FieldType$1;",
            "Lo/getDefaultDefault;",
            "Lo/getThreadSize;",
            "Lo/SessionReport<",
            "**>;",
            "Lo/getSessionAppSize<",
            "*>;",
            "Lo/WireFormat$FieldType;",
            ")",
            "Lo/ReportManager<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 220
    instance-of v1, v0, Lo/isUploading;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_35

    .line 221
    check-cast v0, Lo/isUploading;

    .line 7213
    iget v1, v0, Lo/isUploading;->extraCallback:I

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_0

    sget-object v1, Lo/uploadReport;->onMessageChannelReady:Lo/uploadReport;

    goto :goto_0

    :cond_0
    sget-object v1, Lo/uploadReport;->extraCallback:Lo/uploadReport;

    .line 6247
    :goto_0
    sget-object v8, Lo/uploadReport;->extraCallback:Lo/uploadReport;

    if-ne v1, v8, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 8199
    :goto_1
    iget-object v1, v0, Lo/isUploading;->ICustomTabsCallback:Ljava/lang/String;

    .line 6250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 6253
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v11, 0xd800

    if-lt v9, v11, :cond_3

    and-int/lit16 v9, v9, 0x1fff

    const/4 v12, 0x1

    const/16 v13, 0xd

    :goto_2
    add-int/lit8 v14, v12, 0x1

    .line 6257
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v11, :cond_2

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v9, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_2

    :cond_2
    shl-int/2addr v12, v13

    or-int/2addr v9, v12

    goto :goto_3

    :cond_3
    const/4 v14, 0x1

    :goto_3
    add-int/lit8 v12, v14, 0x1

    .line 6265
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_5

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_4
    add-int/lit8 v16, v12, 0x1

    .line 6269
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v11, :cond_4

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v14

    or-int/2addr v13, v12

    add-int/lit8 v14, v14, 0xd

    move/from16 v12, v16

    goto :goto_4

    :cond_4
    shl-int/2addr v12, v14

    or-int/2addr v13, v12

    move/from16 v12, v16

    :cond_5
    if-nez v13, :cond_6

    .line 6296
    sget-object v13, Lo/ReportManager;->ICustomTabsCallback:[I

    move-object v5, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_12

    :cond_6
    add-int/lit8 v13, v12, 0x1

    .line 6299
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v11, :cond_8

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_5
    add-int/lit8 v16, v13, 0x1

    .line 6303
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_7

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move/from16 v13, v16

    goto :goto_5

    :cond_7
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move/from16 v13, v16

    :cond_8
    add-int/lit8 v14, v13, 0x1

    .line 6311
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_a

    and-int/lit16 v13, v13, 0x1fff

    const/16 v16, 0xd

    :goto_6
    add-int/lit8 v17, v14, 0x1

    .line 6315
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v11, :cond_9

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v16

    or-int/2addr v13, v14

    add-int/lit8 v16, v16, 0xd

    move/from16 v14, v17

    goto :goto_6

    :cond_9
    shl-int v14, v14, v16

    or-int/2addr v13, v14

    move/from16 v14, v17

    :cond_a
    add-int/lit8 v16, v14, 0x1

    .line 6323
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v11, :cond_c

    and-int/lit16 v14, v14, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_7
    add-int/lit8 v18, v2, 0x1

    .line 6327
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_b

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v14, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_7

    :cond_b
    shl-int v2, v2, v16

    or-int/2addr v14, v2

    move/from16 v2, v18

    goto :goto_8

    :cond_c
    move/from16 v2, v16

    :goto_8
    add-int/lit8 v16, v2, 0x1

    .line 6335
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_e

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v19, v3, 0x1

    .line 6339
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v11, :cond_d

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v2, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v19

    goto :goto_9

    :cond_d
    shl-int v3, v3, v16

    or-int/2addr v2, v3

    move/from16 v3, v19

    goto :goto_a

    :cond_e
    move/from16 v3, v16

    :goto_a
    add-int/lit8 v16, v3, 0x1

    .line 6347
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v11, :cond_10

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v10, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v19, v10, 0x1

    .line 6351
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v11, :cond_f

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v16

    or-int/2addr v3, v10

    add-int/lit8 v16, v16, 0xd

    move/from16 v10, v19

    goto :goto_b

    :cond_f
    shl-int v10, v10, v16

    or-int/2addr v3, v10

    move/from16 v10, v19

    goto :goto_c

    :cond_10
    move/from16 v10, v16

    :goto_c
    add-int/lit8 v16, v10, 0x1

    .line 6359
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v11, :cond_12

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v6, v16

    const/16 v16, 0xd

    :goto_d
    add-int/lit8 v20, v6, 0x1

    .line 6363
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_11

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v16

    or-int/2addr v10, v6

    add-int/lit8 v16, v16, 0xd

    move/from16 v6, v20

    goto :goto_d

    :cond_11
    shl-int v6, v6, v16

    or-int/2addr v10, v6

    move/from16 v6, v20

    goto :goto_e

    :cond_12
    move/from16 v6, v16

    :goto_e
    add-int/lit8 v16, v6, 0x1

    .line 6371
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_14

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_f
    add-int/lit8 v21, v4, 0x1

    .line 6375
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v11, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v6, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v21

    goto :goto_f

    :cond_13
    shl-int v4, v4, v16

    or-int/2addr v6, v4

    move/from16 v4, v21

    goto :goto_10

    :cond_14
    move/from16 v4, v16

    :goto_10
    add-int/lit8 v16, v4, 0x1

    .line 6383
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v11, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v16

    const/16 v16, 0xd

    :goto_11
    add-int/lit8 v22, v5, 0x1

    .line 6387
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v11, :cond_15

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v16

    or-int/2addr v4, v5

    add-int/lit8 v16, v16, 0xd

    move/from16 v5, v22

    goto :goto_11

    :cond_15
    shl-int v5, v5, v16

    or-int/2addr v4, v5

    move/from16 v16, v22

    :cond_16
    add-int v5, v4, v10

    add-int/2addr v5, v6

    .line 6394
    new-array v5, v5, [I

    shl-int/lit8 v6, v12, 0x1

    add-int/2addr v6, v13

    move v13, v2

    move v2, v12

    move/from16 v12, v16

    .line 6399
    :goto_12
    sget-object v11, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    .line 8203
    iget-object v7, v0, Lo/isUploading;->onNavigationEvent:[Ljava/lang/Object;

    move/from16 v23, v6

    .line 8208
    iget-object v6, v0, Lo/isUploading;->onPostMessage:Lo/WireFormat$FieldType$2;

    .line 6402
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v24, v12

    mul-int/lit8 v12, v3, 0x3

    .line 6403
    new-array v12, v12, [I

    const/16 v22, 0x1

    shl-int/lit8 v3, v3, 0x1

    .line 6404
    new-array v3, v3, [Ljava/lang/Object;

    add-int v25, v4, v10

    move/from16 v27, v4

    move/from16 v10, v24

    move/from16 v28, v25

    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_13
    if-ge v10, v8, :cond_34

    add-int/lit8 v29, v10, 0x1

    .line 6415
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v30, v8

    const v8, 0xd800

    if-lt v10, v8, :cond_18

    and-int/lit16 v10, v10, 0x1fff

    move/from16 v8, v29

    const/16 v29, 0xd

    :goto_14
    add-int/lit8 v31, v8, 0x1

    .line 6419
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v32, v4

    const v4, 0xd800

    if-lt v8, v4, :cond_17

    and-int/lit16 v4, v8, 0x1fff

    shl-int v4, v4, v29

    or-int/2addr v10, v4

    add-int/lit8 v29, v29, 0xd

    move/from16 v8, v31

    move/from16 v4, v32

    goto :goto_14

    :cond_17
    shl-int v4, v8, v29

    or-int/2addr v10, v4

    move/from16 v4, v31

    goto :goto_15

    :cond_18
    move/from16 v32, v4

    move/from16 v4, v29

    :goto_15
    add-int/lit8 v8, v4, 0x1

    .line 6427
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v29, v8

    const v8, 0xd800

    if-lt v4, v8, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v29

    const/16 v29, 0xd

    :goto_16
    add-int/lit8 v31, v8, 0x1

    .line 6431
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v33, v15

    const v15, 0xd800

    if-lt v8, v15, :cond_19

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v29

    or-int/2addr v4, v8

    add-int/lit8 v29, v29, 0xd

    move/from16 v8, v31

    move/from16 v15, v33

    goto :goto_16

    :cond_19
    shl-int v8, v8, v29

    or-int/2addr v4, v8

    move/from16 v8, v31

    goto :goto_17

    :cond_1a
    move/from16 v33, v15

    move/from16 v8, v29

    :goto_17
    and-int/lit16 v15, v4, 0xff

    move/from16 v29, v13

    and-int/lit16 v13, v4, 0x400

    if-eqz v13, :cond_1b

    add-int/lit8 v13, v24, 0x1

    .line 6441
    aput v26, v5, v24

    move/from16 v24, v13

    :cond_1b
    const/16 v13, 0x33

    move/from16 v35, v14

    if-lt v15, v13, :cond_23

    add-int/lit8 v13, v8, 0x1

    .line 6450
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v14, 0xd800

    if-lt v8, v14, :cond_1d

    and-int/lit16 v8, v8, 0x1fff

    const/16 v36, 0xd

    :goto_18
    add-int/lit8 v37, v13, 0x1

    .line 6454
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v14, :cond_1c

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v36

    or-int/2addr v8, v13

    add-int/lit8 v36, v36, 0xd

    move/from16 v13, v37

    const v14, 0xd800

    goto :goto_18

    :cond_1c
    shl-int v13, v13, v36

    or-int/2addr v8, v13

    move/from16 v13, v37

    :cond_1d
    add-int/lit8 v14, v15, -0x33

    move/from16 v36, v13

    const/16 v13, 0x9

    if-eq v14, v13, :cond_20

    const/16 v13, 0x11

    if-ne v14, v13, :cond_1e

    goto :goto_19

    :cond_1e
    const/16 v13, 0xc

    if-ne v14, v13, :cond_1f

    and-int/lit8 v13, v9, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1f

    .line 6469
    div-int/lit8 v13, v26, 0x3

    shl-int/2addr v13, v14

    add-int/2addr v13, v14

    add-int/lit8 v14, v23, 0x1

    aget-object v23, v7, v23

    aput-object v23, v3, v13

    move/from16 v23, v14

    :cond_1f
    const/4 v14, 0x1

    goto :goto_1a

    .line 6465
    :cond_20
    :goto_19
    div-int/lit8 v13, v26, 0x3

    const/4 v14, 0x1

    shl-int/2addr v13, v14

    add-int/2addr v13, v14

    add-int/lit8 v22, v23, 0x1

    aget-object v23, v7, v23

    aput-object v23, v3, v13

    move/from16 v23, v22

    :goto_1a
    shl-int/2addr v8, v14

    .line 6475
    aget-object v13, v7, v8

    .line 6476
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 6477
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 6479
    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lo/ReportManager;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 6484
    aput-object v13, v7, v8

    .line 6487
    :goto_1b
    invoke-virtual {v11, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    add-int/lit8 v8, v8, 0x1

    .line 6491
    aget-object v13, v7, v8

    move/from16 v31, v14

    .line 6492
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_22

    .line 6493
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 6495
    :cond_22
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lo/ReportManager;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 6496
    aput-object v13, v7, v8

    .line 6499
    :goto_1c
    invoke-virtual {v11, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move-object/from16 v16, v1

    move/from16 v13, v23

    move/from16 v14, v31

    move/from16 v34, v36

    const v1, 0xd800

    move-object/from16 v23, v0

    move/from16 v36, v2

    move/from16 v31, v4

    move-object v0, v5

    const/4 v5, 0x0

    goto/16 :goto_27

    :cond_23
    add-int/lit8 v13, v23, 0x1

    .line 6502
    aget-object v14, v7, v23

    check-cast v14, Ljava/lang/String;

    invoke-static {v6, v14}, Lo/ReportManager;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move-object/from16 v23, v0

    const/16 v0, 0x9

    if-eq v15, v0, :cond_2b

    const/16 v0, 0x11

    if-ne v15, v0, :cond_24

    goto/16 :goto_20

    :cond_24
    const/16 v0, 0x1b

    if-eq v15, v0, :cond_2a

    const/16 v0, 0x31

    if-ne v15, v0, :cond_25

    goto :goto_1e

    :cond_25
    const/16 v0, 0xc

    if-eq v15, v0, :cond_29

    const/16 v0, 0x1e

    if-eq v15, v0, :cond_29

    const/16 v0, 0x2c

    if-ne v15, v0, :cond_26

    goto :goto_1d

    :cond_26
    const/16 v0, 0x32

    if-ne v15, v0, :cond_28

    add-int/lit8 v0, v27, 0x1

    .line 6515
    aput v26, v5, v27

    .line 6516
    div-int/lit8 v27, v26, 0x3

    const/16 v22, 0x1

    shl-int/lit8 v27, v27, 0x1

    add-int/lit8 v31, v13, 0x1

    aget-object v13, v7, v13

    aput-object v13, v3, v27

    and-int/lit16 v13, v4, 0x800

    if-eqz v13, :cond_27

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v13, v31, 0x1

    .line 6518
    aget-object v31, v7, v31

    aput-object v31, v3, v27

    move/from16 v27, v0

    move/from16 v31, v4

    goto :goto_21

    :cond_27
    move/from16 v27, v0

    move-object v0, v5

    move/from16 v13, v31

    move/from16 v31, v4

    goto :goto_22

    :cond_28
    move/from16 v31, v4

    const/4 v4, 0x1

    goto :goto_21

    :cond_29
    :goto_1d
    and-int/lit8 v0, v9, 0x1

    move/from16 v31, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    .line 6512
    div-int/lit8 v0, v26, 0x3

    shl-int/2addr v0, v4

    add-int/2addr v0, v4

    add-int/lit8 v22, v13, 0x1

    aget-object v13, v7, v13

    aput-object v13, v3, v0

    goto :goto_1f

    :cond_2a
    :goto_1e
    move/from16 v31, v4

    const/4 v4, 0x1

    .line 6507
    div-int/lit8 v0, v26, 0x3

    shl-int/2addr v0, v4

    add-int/2addr v0, v4

    add-int/lit8 v22, v13, 0x1

    aget-object v13, v7, v13

    aput-object v13, v3, v0

    :goto_1f
    move-object v0, v5

    move/from16 v13, v22

    goto :goto_22

    :cond_2b
    :goto_20
    move/from16 v31, v4

    const/4 v4, 0x1

    .line 6504
    div-int/lit8 v0, v26, 0x3

    shl-int/2addr v0, v4

    add-int/2addr v0, v4

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v3, v0

    :cond_2c
    :goto_21
    move-object v0, v5

    .line 6522
    :goto_22
    invoke-virtual {v11, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v14, v4

    and-int/lit8 v4, v9, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    const/16 v4, 0x11

    if-gt v15, v4, :cond_30

    add-int/lit8 v4, v8, 0x1

    .line 6524
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v8, 0xd800

    if-lt v5, v8, :cond_2e

    and-int/lit16 v5, v5, 0x1fff

    const/16 v16, 0xd

    :goto_23
    add-int/lit8 v34, v4, 0x1

    .line 6528
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v8, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v5, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v34

    goto :goto_23

    :cond_2d
    shl-int v4, v4, v16

    or-int/2addr v5, v4

    goto :goto_24

    :cond_2e
    move/from16 v34, v4

    :goto_24
    const/4 v4, 0x1

    shl-int/lit8 v16, v2, 0x1

    .line 6537
    div-int/lit8 v4, v5, 0x20

    add-int v16, v16, v4

    .line 6538
    aget-object v4, v7, v16

    .line 6539
    instance-of v8, v4, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2f

    .line 6540
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_25

    .line 6542
    :cond_2f
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 6543
    aput-object v4, v7, v16

    :goto_25
    move-object/from16 v16, v1

    move/from16 v36, v2

    .line 6546
    invoke-virtual {v11, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6547
    rem-int/lit8 v5, v5, 0x20

    move v8, v2

    const v1, 0xd800

    const/16 v2, 0x12

    goto :goto_26

    :cond_30
    move-object/from16 v16, v1

    move/from16 v36, v2

    const v1, 0xd800

    move/from16 v34, v8

    const/16 v2, 0x12

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_26
    if-lt v15, v2, :cond_31

    const/16 v2, 0x31

    if-gt v15, v2, :cond_31

    add-int/lit8 v2, v28, 0x1

    .line 6556
    aput v14, v0, v28

    move/from16 v28, v2

    :cond_31
    :goto_27
    add-int/lit8 v2, v26, 0x1

    .line 6560
    aput v10, v12, v26

    add-int/lit8 v4, v2, 0x1

    move/from16 v10, v31

    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_28

    :cond_32
    const/4 v1, 0x0

    :goto_28
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_33

    const/high16 v10, 0x10000000

    goto :goto_29

    :cond_33
    const/4 v10, 0x0

    :goto_29
    or-int/2addr v1, v10

    shl-int/lit8 v10, v15, 0x14

    or-int/2addr v1, v10

    or-int/2addr v1, v14

    .line 6561
    aput v1, v12, v2

    add-int/lit8 v26, v4, 0x1

    shl-int/lit8 v1, v5, 0x14

    or-int/2addr v1, v8

    .line 6566
    aput v1, v12, v4

    move-object v5, v0

    move-object/from16 v1, v16

    move-object/from16 v0, v23

    move/from16 v8, v30

    move/from16 v4, v32

    move/from16 v15, v33

    move/from16 v10, v34

    move/from16 v14, v35

    move/from16 v2, v36

    move/from16 v23, v13

    move/from16 v13, v29

    goto/16 :goto_13

    :cond_34
    move-object/from16 v23, v0

    move/from16 v32, v4

    move-object v0, v5

    move/from16 v29, v13

    move/from16 v35, v14

    move/from16 v33, v15

    .line 6569
    new-instance v1, Lo/ReportManager;

    move-object/from16 v2, v23

    .line 9208
    iget-object v14, v2, Lo/isUploading;->onPostMessage:Lo/WireFormat$FieldType$2;

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v12

    move-object v11, v3

    move/from16 v12, v35

    move-object/from16 v17, v0

    move/from16 v18, v32

    move/from16 v19, v25

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    .line 6574
    invoke-direct/range {v9 .. v24}, Lo/ReportManager;-><init>([I[Ljava/lang/Object;IILo/WireFormat$FieldType$2;ZZ[IIILo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)V

    return-object v1

    .line 230
    :cond_35
    check-cast v0, Lo/extraCallback$onNavigationEvent;

    .line 10073
    sget-object v0, Lo/uploadReport;->extraCallback:Lo/uploadReport;

    if-nez v0, :cond_36

    const/4 v7, 0x1

    goto :goto_2a

    :cond_36
    const/4 v7, 0x0

    :goto_2a
    const/4 v0, 0x0

    .line 9623
    array-length v1, v0

    if-nez v1, :cond_37

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2b

    .line 10350
    :cond_37
    iget v1, v0, Lo/getSessionOSSize;->onMessageChannelReady:I

    .line 11350
    iget v2, v0, Lo/getSessionOSSize;->onMessageChannelReady:I

    move v4, v1

    move v5, v2

    .line 9631
    :goto_2b
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    .line 9633
    new-array v2, v2, [I

    const/16 v22, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 9634
    new-array v3, v1, [Ljava/lang/Object;

    .line 9638
    array-length v1, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2c
    if-ge v6, v1, :cond_3a

    .line 11360
    sget-object v10, Lo/getSessionEventSize;->asInterface:Lo/getSessionEventSize;

    if-nez v10, :cond_38

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 13135
    :cond_38
    iget v10, v0, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    const/16 v11, 0x12

    if-lt v10, v11, :cond_39

    .line 14135
    iget v10, v0, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    const/16 v11, 0x31

    if-gt v10, v11, :cond_39

    add-int/lit8 v9, v9, 0x1

    :cond_39
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3a
    if-lez v8, :cond_3b

    .line 9647
    new-array v1, v8, [I

    goto :goto_2e

    :cond_3b
    move-object v1, v0

    :goto_2e
    if-lez v9, :cond_3c

    .line 9648
    new-array v6, v9, [I

    goto :goto_2f

    :cond_3c
    move-object v6, v0

    .line 9654
    :goto_2f
    sget-object v8, Lo/ReportManager;->ICustomTabsCallback:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 9659
    :goto_30
    array-length v14, v0

    if-ge v9, v14, :cond_47

    .line 14350
    iget v14, v0, Lo/getSessionOSSize;->onMessageChannelReady:I

    move/from16 p0, v4

    move v15, v5

    .line 14736
    invoke-static {v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 19135
    iget v4, v0, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    if-nez v7, :cond_40

    move/from16 v16, v7

    .line 19166
    iget-object v7, v0, Lo/getSessionEventSize;->asBinder:Lo/getSessionEventSize$onMessageChannelReady;

    .line 19343
    iget-boolean v7, v7, Lo/getSessionEventSize$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v7, :cond_3f

    .line 20171
    iget-object v7, v0, Lo/getSessionEventSize;->asBinder:Lo/getSessionEventSize$onMessageChannelReady;

    sget-object v0, Lo/getSessionEventSize$onMessageChannelReady;->onPostMessage:Lo/getSessionEventSize$onMessageChannelReady;

    if-ne v7, v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_31

    :cond_3d
    const/4 v0, 0x0

    :goto_31
    move-object/from16 v24, v6

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    .line 14739
    invoke-static {v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    .line 20409
    iget v6, v0, Lo/getSessionOSSize;->onPostMessage:I

    .line 14740
    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    move/from16 v25, v15

    goto :goto_33

    :cond_3e
    const/4 v0, 0x0

    goto :goto_32

    :cond_3f
    move-object/from16 v24, v6

    goto :goto_32

    :cond_40
    move-object/from16 v24, v6

    move/from16 v16, v7

    :goto_32
    move/from16 v25, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 22350
    :goto_33
    iget v15, v0, Lo/getSessionOSSize;->onMessageChannelReady:I

    .line 14752
    aput v15, v2, v10

    add-int/lit8 v15, v10, 0x1

    move-object/from16 v26, v3

    .line 22421
    iget-boolean v3, v0, Lo/getSessionOSSize;->extraCallback:Z

    move/from16 v27, v9

    if-eqz v3, :cond_41

    const/high16 v3, 0x20000000

    goto :goto_34

    :cond_41
    const/4 v3, 0x0

    .line 23414
    :goto_34
    iget-boolean v9, v0, Lo/getSessionOSSize;->onNavigationEvent:Z

    if-eqz v9, :cond_42

    const/high16 v0, 0x10000000

    goto :goto_35

    :cond_42
    const/4 v0, 0x0

    :goto_35
    or-int/2addr v0, v3

    shl-int/lit8 v3, v4, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v5

    .line 14755
    aput v0, v2, v15

    add-int/lit8 v0, v10, 0x2

    shl-int/lit8 v3, v6, 0x14

    or-int/2addr v3, v7

    .line 14758
    aput v3, v2, v0

    .line 23433
    sget-object v0, Lo/getSessionOSSize$4;->onNavigationEvent:[I

    .line 9668
    array-length v0, v8

    if-ge v11, v0, :cond_43

    aget v0, v8, v11

    if-ne v0, v14, :cond_43

    add-int/lit8 v0, v11, 0x1

    .line 9670
    aput v10, v8, v11

    move v11, v0

    .line 30360
    :cond_43
    sget-object v0, Lo/getSessionEventSize;->asInterface:Lo/getSessionEventSize;

    if-nez v0, :cond_45

    add-int/lit8 v0, v12, 0x1

    .line 9674
    aput v10, v1, v12

    move v12, v0

    const/4 v0, 0x0

    const/16 v4, 0x12

    :cond_44
    const/16 v5, 0x31

    goto :goto_36

    :cond_45
    const/4 v0, 0x0

    .line 32135
    iget v3, v0, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_44

    .line 33135
    iget v3, v0, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    const/16 v5, 0x31

    if-gt v3, v5, :cond_46

    add-int/lit8 v3, v13, 0x1

    .line 9679
    invoke-static {v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    aput v7, v24, v13

    move v13, v3

    :cond_46
    :goto_36
    add-int/lit8 v9, v27, 0x1

    add-int/lit8 v10, v10, 0x3

    move/from16 v4, p0

    move/from16 v7, v16

    move-object/from16 v6, v24

    move/from16 v5, v25

    move-object/from16 v3, v26

    goto/16 :goto_30

    :cond_47
    move-object/from16 v26, v3

    move/from16 p0, v4

    move/from16 v25, v5

    move-object/from16 v24, v6

    move/from16 v16, v7

    if-nez v1, :cond_48

    .line 9686
    sget-object v1, Lo/ReportManager;->ICustomTabsCallback:[I

    :cond_48
    if-nez v24, :cond_49

    .line 9689
    sget-object v6, Lo/ReportManager;->ICustomTabsCallback:[I

    goto :goto_37

    :cond_49
    move-object/from16 v6, v24

    .line 9691
    :goto_37
    array-length v0, v8

    array-length v3, v1

    add-int/2addr v0, v3

    array-length v3, v6

    add-int/2addr v0, v3

    new-array v9, v0, [I

    .line 9693
    array-length v0, v8

    const/4 v3, 0x0

    invoke-static {v8, v3, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9694
    array-length v0, v8

    array-length v4, v1

    invoke-static {v1, v3, v9, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9696
    array-length v0, v8

    array-length v4, v1

    add-int/2addr v0, v4

    array-length v4, v6

    invoke-static {v6, v3, v9, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9703
    new-instance v0, Lo/ReportManager;

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 9708
    array-length v11, v8

    array-length v3, v8

    array-length v1, v1

    add-int v12, v3, v1

    move-object v1, v0

    move-object/from16 v3, v26

    move/from16 v4, p0

    move/from16 v5, v25

    move/from16 v7, v16

    move v8, v10

    move v10, v11

    move v11, v12

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v1 .. v16}, Lo/ReportManager;-><init>([I[Ljava/lang/Object;IILo/WireFormat$FieldType$2;ZZ[IIILo/getDefaultDefault;Lo/getThreadSize;Lo/SessionReport;Lo/getSessionAppSize;Lo/WireFormat$FieldType;)V

    return-object v0
.end method

.method private extraCallback(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5814
    iget-boolean v0, p0, Lo/ReportManager;->newSession:Z

    if-eqz v0, :cond_0

    return-void

    .line 54433
    :cond_0
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 5824
    invoke-static {p1, v1, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 5821
    invoke-static {p1, v1, v2, p2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/Object;[BIIIIIIJIJLo/writeRawLittleEndian64$onPostMessage;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 4485
    sget-object v11, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/getEventLogSize$asBinder;

    .line 4486
    invoke-interface {v11}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 4487
    invoke-interface {v11}, Lo/getEventLogSize$asBinder;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 4489
    :goto_0
    invoke-interface {v11, v12}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v11

    .line 4491
    sget-object v12, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const/4 v10, 0x3

    const-wide/16 v14, 0x0

    const/4 v12, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    if-ne v6, v10, :cond_1c

    .line 4633
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 4632
    invoke-static/range {p6 .. p12}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_1
    if-ne v6, v12, :cond_2

    .line 4624
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->onTransact([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_2
    if-nez v6, :cond_1c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 4626
    invoke-static/range {p5 .. p10}, Lo/writeRawLittleEndian64;->ICustomTabsCallback(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_2
    if-ne v6, v12, :cond_3

    .line 4616
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->onRelationshipValidationResult([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_3
    if-nez v6, :cond_1c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 4618
    invoke-static/range {p5 .. p10}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_3
    if-ne v6, v12, :cond_4

    .line 4588
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v6, :cond_1c

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 4590
    invoke-static/range {v2 .. v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4594
    :goto_1
    check-cast v1, Lo/getEventAppExecutionSize;

    iget-object v3, v1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 4595
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    .line 53974
    :cond_5
    iget-object v4, v0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v5, v8, 0x3

    shl-int/2addr v5, v13

    add-int/2addr v5, v13

    aget-object v4, v4, v5

    check-cast v4, Lo/getEventLogSize$extraCallback;

    .line 4606
    iget-object v5, v0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    move/from16 v6, p6

    .line 4603
    invoke-static {v6, v11, v4, v3, v5}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getFileName;

    if-eqz v3, :cond_6

    .line 4610
    iput-object v3, v1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_6
    move v1, v2

    goto/16 :goto_14

    :pswitch_4
    if-ne v6, v12, :cond_1c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 4582
    invoke-static/range {p5 .. p10}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_5
    if-ne v6, v12, :cond_1c

    .line 4571
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 4570
    invoke-static/range {p6 .. p12}, Lo/writeRawLittleEndian64;->onNavigationEvent(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_6
    if-ne v6, v12, :cond_1c

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v14

    if-nez v1, :cond_c

    add-int/lit8 v1, v4, 0x1

    .line 53968
    aget-byte v4, v3, v4

    if-ltz v4, :cond_7

    .line 53970
    iput v4, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_2

    .line 53973
    :cond_7
    invoke-static {v4, v3, v1, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53940
    :goto_2
    iget v4, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz v4, :cond_b

    const-string v6, ""

    if-nez v4, :cond_8

    .line 53944
    invoke-interface {v11, v6}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 53946
    :cond_8
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 53947
    invoke-interface {v11, v8}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/2addr v1, v4

    :goto_4
    if-ge v1, v5, :cond_1d

    .line 53951
    invoke-static {v3, v1, v7}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53952
    iget v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v8, :cond_1d

    .line 53955
    invoke-static {v3, v4, v7}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53956
    iget v4, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz v4, :cond_a

    if-nez v4, :cond_9

    .line 53960
    invoke-interface {v11, v6}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 53962
    :cond_9
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 53963
    invoke-interface {v11, v8}, Lo/getEventLogSize$asBinder;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53958
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 53942
    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onNavigationEvent()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_c
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 4563
    invoke-static/range {p5 .. p10}, Lo/writeRawLittleEndian64;->onNavigationEvent(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_7
    if-ne v6, v12, :cond_d

    .line 4553
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->ICustomTabsCallback$Stub([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_d
    if-nez v6, :cond_1c

    .line 53920
    check-cast v11, Lo/encodeZigZag32;

    .line 53921
    invoke-static {v3, v4, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53922
    iget-wide v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const/4 v4, 0x0

    cmp-long v6, v8, v14

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v11, v6}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    :goto_6
    if-ge v1, v5, :cond_1d

    add-int/lit8 v6, v1, 0x1

    .line 53932
    aget-byte v8, v3, v1

    if-ltz v8, :cond_f

    .line 53934
    iput v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_7

    .line 53937
    :cond_f
    invoke-static {v8, v3, v6, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v6

    .line 53925
    :goto_7
    iget v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v8, :cond_1d

    .line 53928
    invoke-static {v3, v6, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53929
    iget-wide v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v11, v6}, Lo/encodeZigZag32;->ICustomTabsCallback(Z)V

    goto :goto_6

    :pswitch_8
    if-ne v6, v12, :cond_11

    .line 4545
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_11
    if-ne v6, v9, :cond_1c

    .line 53902
    check-cast v11, Lo/getEventAppExecutionExceptionSize;

    .line 53903
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    :goto_9
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_1d

    add-int/lit8 v4, v1, 0x1

    .line 53914
    aget-byte v6, v3, v1

    if-ltz v6, :cond_12

    .line 53916
    iput v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_a

    .line 53919
    :cond_12
    invoke-static {v6, v3, v4, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53907
    :goto_a
    iget v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v6, :cond_1d

    .line 53910
    invoke-static {v3, v4}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lo/getEventAppExecutionExceptionSize;->onMessageChannelReady(I)V

    goto :goto_9

    :pswitch_9
    if-ne v6, v12, :cond_13

    .line 4535
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->onPostMessage([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_13
    if-ne v6, v13, :cond_1c

    .line 53884
    check-cast v11, Lo/makeTag;

    .line 53885
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/makeTag;->extraCallback(J)V

    :goto_b
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_1d

    add-int/lit8 v4, v1, 0x1

    .line 53896
    aget-byte v6, v3, v1

    if-ltz v6, :cond_14

    .line 53898
    iput v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_c

    .line 53901
    :cond_14
    invoke-static {v6, v3, v4, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53889
    :goto_c
    iget v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v6, :cond_1d

    .line 53892
    invoke-static {v3, v4}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/makeTag;->extraCallback(J)V

    goto :goto_b

    :pswitch_a
    if-ne v6, v12, :cond_15

    .line 4525
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_15
    if-nez v6, :cond_1c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 4527
    invoke-static/range {p5 .. p10}, Lo/writeRawLittleEndian64;->onPostMessage(I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :pswitch_b
    if-ne v6, v12, :cond_16

    .line 4515
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->extraCallback([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_16
    if-nez v6, :cond_1c

    .line 53866
    check-cast v11, Lo/makeTag;

    .line 53867
    invoke-static {v3, v4, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53868
    iget-wide v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-virtual {v11, v8, v9}, Lo/makeTag;->extraCallback(J)V

    :goto_d
    if-ge v1, v5, :cond_1d

    add-int/lit8 v4, v1, 0x1

    .line 53878
    aget-byte v6, v3, v1

    if-ltz v6, :cond_17

    .line 53880
    iput v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_e

    .line 53883
    :cond_17
    invoke-static {v6, v3, v4, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53871
    :goto_e
    iget v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v6, :cond_1d

    .line 53874
    invoke-static {v3, v4, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53875
    iget-wide v8, v7, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-virtual {v11, v8, v9}, Lo/makeTag;->extraCallback(J)V

    goto :goto_d

    :pswitch_c
    if-ne v6, v12, :cond_18

    .line 4505
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->onMessageChannelReady([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto/16 :goto_14

    :cond_18
    if-ne v6, v9, :cond_1c

    .line 53846
    check-cast v11, Lo/getSessionDeviceSize;

    .line 53858
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 53847
    invoke-virtual {v11, v1}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    :goto_f
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_1d

    add-int/lit8 v4, v1, 0x1

    .line 53859
    aget-byte v6, v3, v1

    if-ltz v6, :cond_19

    .line 53861
    iput v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_10

    .line 53864
    :cond_19
    invoke-static {v6, v3, v4, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53851
    :goto_10
    iget v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v6, :cond_1d

    .line 53865
    invoke-static {v3, v4}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 53854
    invoke-virtual {v11, v1}, Lo/getSessionDeviceSize;->ICustomTabsCallback(F)V

    goto :goto_f

    :pswitch_d
    if-ne v6, v12, :cond_1a

    .line 4497
    invoke-static {v3, v4, v11, v7}, Lo/writeRawLittleEndian64;->asBinder([BILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto :goto_14

    :cond_1a
    if-ne v6, v13, :cond_1c

    .line 53826
    check-cast v11, Lo/writeSessionEventApp;

    .line 53838
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 53827
    invoke-virtual {v11, v8, v9}, Lo/writeSessionEventApp;->onPostMessage(D)V

    :goto_11
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_1d

    add-int/lit8 v4, v1, 0x1

    .line 53839
    aget-byte v6, v3, v1

    if-ltz v6, :cond_1b

    .line 53841
    iput v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_12

    .line 53844
    :cond_1b
    invoke-static {v6, v3, v4, v7}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v4

    .line 53831
    :goto_12
    iget v6, v7, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ne v2, v6, :cond_1d

    .line 53845
    invoke-static {v3, v4}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 53834
    invoke-virtual {v11, v8, v9}, Lo/writeSessionEventApp;->onPostMessage(D)V

    goto :goto_11

    :cond_1c
    :goto_13
    move v1, v4

    :cond_1d
    :goto_14
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final onMessageChannelReady(IILjava/util/Map;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/getEventLogSize$extraCallback;",
            "TUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5478
    iget-object v0, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 54350
    iget-object v1, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    const/4 v2, 0x1

    shl-int/2addr p1, v2

    aget-object p1, v1, p1

    .line 5479
    invoke-interface {v0, p1}, Lo/WireFormat$FieldType;->onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;

    move-result-object p1

    .line 5480
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5481
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    invoke-interface {p4}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 5484
    invoke-virtual {p6}, Lo/SessionReport;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p5

    .line 5487
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 54351
    iget-object v4, p1, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v4, v2, v1}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v1

    iget-object v4, p1, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v5, 0x2

    .line 54352
    invoke-static {v4, v5, v3}, Lo/getBinaryImageSize;->ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5488
    invoke-static {v1}, Lo/SessionProtobufHelper;->extraCallback(I)Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;

    move-result-object v1

    .line 54353
    iget-object v3, v1, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->onPostMessage:Lcom/google/protobuf/CodedOutputStream;

    .line 5491
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 54354
    iget-object v6, p1, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v3, v6, v2, v4}, Lo/getBinaryImageSize;->extraCallback(Lcom/google/protobuf/CodedOutputStream;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)V

    .line 54355
    iget-object v4, p1, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    invoke-static {v3, v4, v5, v0}, Lo/getBinaryImageSize;->extraCallback(Lcom/google/protobuf/CodedOutputStream;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54357
    iget-object v0, v1, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->onPostMessage:Lcom/google/protobuf/CodedOutputStream;

    .line 54363
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->asInterface()I

    move-result v0

    if-nez v0, :cond_2

    .line 54362
    new-instance v0, Lo/SessionProtobufHelper$asInterface;

    iget-object v1, v1, Lo/SessionProtobufHelper$ICustomTabsCallback$Stub;->ICustomTabsCallback:[B

    invoke-direct {v0, v1}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    .line 5496
    invoke-virtual {p6, p5, p2, v0}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;ILo/SessionProtobufHelper;)V

    .line 5497
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 54364
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did not write as much data as expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 5494
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    return-object p5
.end method

.method private onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 51023
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1370
    invoke-direct {p0, p2, p3}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1375
    invoke-static {p2, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1377
    invoke-static {v2, p2}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1378
    invoke-static {p1, v0, v1, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1379
    invoke-direct {p0, p1, p3}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1381
    invoke-static {p1, v0, v1, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1382
    invoke-direct {p0, p1, p3}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private onNavigationEvent(Ljava/lang/Object;[BIIIIIIIJILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 4689
    sget-object v12, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    .line 4690
    iget-object v7, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x3

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-ne v5, v7, :cond_d

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 4821
    invoke-direct {v0, v6}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 4820
    invoke-static/range {v2 .. v7}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4823
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 4824
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 4827
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    .line 4829
    :cond_1
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    .line 4830
    invoke-static {v15, v3}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4829
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    if-nez v5, :cond_d

    .line 4811
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4812
    iget-wide v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v3, v4}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_2
    if-nez v5, :cond_d

    .line 4804
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4805
    iget v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v3}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3
    if-nez v5, :cond_d

    .line 4790
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->extraCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v3

    .line 4791
    iget v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 54047
    iget-object v5, v0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/2addr v6, v7

    shl-int/2addr v6, v15

    add-int/2addr v6, v15

    aget-object v5, v5, v6

    check-cast v5, Lo/getEventLogSize$extraCallback;

    if-eqz v5, :cond_4

    .line 4793
    invoke-interface {v5}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 54048
    :cond_2
    check-cast v1, Lo/getEventAppExecutionSize;

    iget-object v5, v1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 54049
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 54050
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v5

    .line 54051
    iput-object v5, v1, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_3
    int-to-long v6, v4

    .line 4798
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_d

    .line 4794
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    :pswitch_4
    const/4 v2, 0x2

    if-ne v5, v2, :cond_d

    .line 4783
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4784
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    const/4 v2, 0x2

    if-ne v5, v2, :cond_d

    .line 4767
    invoke-direct {v0, v6}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v2

    move/from16 v5, p4

    .line 4766
    invoke-static {v2, v3, v4, v5, v11}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4769
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 4770
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_6

    .line 4773
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 4775
    :cond_6
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    .line 4776
    invoke-static {v15, v3}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4775
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4778
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_6
    const/4 v2, 0x2

    if-ne v5, v2, :cond_d

    add-int/lit8 v2, v4, 0x1

    .line 54041
    aget-byte v4, v3, v4

    if-ltz v4, :cond_7

    .line 54043
    iput v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_4

    .line 54046
    :cond_7
    invoke-static {v4, v3, v2, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4748
    :goto_4
    iget v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-nez v4, :cond_8

    const-string v3, ""

    .line 4750
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_8
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_a

    add-int v5, v2, v4

    .line 4753
    invoke-static {v3, v2, v5}, Lo/CompositeCreateReportSpiCall$1;->onPostMessage([BII)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    .line 4754
    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4756
    :cond_a
    :goto_5
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lo/getEventLogSize;->extraCallback:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4757
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 4760
    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_7
    if-nez v5, :cond_d

    .line 4740
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4741
    iget-wide v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    :goto_7
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_d

    .line 4733
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_9
    if-ne v5, v15, :cond_d

    .line 4725
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_d

    add-int/lit8 v2, v4, 0x1

    .line 54035
    aget-byte v4, v3, v4

    if-ltz v4, :cond_c

    .line 54037
    iput v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_8

    .line 54040
    :cond_c
    invoke-static {v4, v3, v2, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4718
    :goto_8
    iget v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_b
    if-nez v5, :cond_d

    .line 4709
    invoke-static {v3, v4, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v2

    .line 4710
    iget-wide v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_d

    .line 54034
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 4701
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    add-int/lit8 v2, v4, 0x4

    goto :goto_b

    :pswitch_d
    if-ne v5, v15, :cond_d

    .line 54033
    invoke-static/range {p2 .. p3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 4694
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_a
    add-int/lit8 v2, v4, 0x8

    .line 4832
    :goto_b
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :cond_d
    :goto_c
    move v2, v4

    :goto_d
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNavigationEvent(Ljava/lang/Object;[BIIIJLo/writeRawLittleEndian64$onPostMessage;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-wide/from16 v2, p6

    move-object/from16 v9, p8

    .line 4657
    sget-object v4, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    .line 53975
    iget-object v5, v0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v6, p5, 0x3

    const/4 v10, 0x1

    shl-int/2addr v6, v10

    aget-object v5, v5, v6

    .line 4659
    invoke-virtual {v4, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 4660
    iget-object v11, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v11, v6}, Lo/WireFormat$FieldType;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4662
    iget-object v11, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v11}, Lo/WireFormat$FieldType;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v11

    .line 4663
    iget-object v12, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v12, v11, v6}, Lo/WireFormat$FieldType;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4664
    invoke-virtual {v4, v1, v2, v3, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v11

    .line 4666
    :cond_0
    iget-object v1, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 4670
    invoke-interface {v1, v5}, Lo/WireFormat$FieldType;->onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;

    move-result-object v11

    iget-object v1, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 4671
    invoke-interface {v1, v6}, Lo/WireFormat$FieldType;->extraCallback(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    add-int/lit8 v1, p3, 0x1

    .line 54025
    aget-byte v2, v7, p3

    if-ltz v2, :cond_1

    .line 54027
    iput v2, v9, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_0

    .line 54030
    :cond_1
    invoke-static {v2, v7, v1, v9}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53977
    :goto_0
    iget v2, v9, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    if-ltz v2, :cond_8

    sub-int v3, v8, v1

    if-gt v2, v3, :cond_8

    add-int v13, v1, v2

    .line 53982
    iget-object v2, v11, Lo/getTagWireType$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 53983
    iget-object v3, v11, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    move-object v14, v2

    move-object v15, v3

    :goto_1
    if-ge v1, v13, :cond_6

    add-int/lit8 v2, v1, 0x1

    .line 53985
    aget-byte v1, v7, v1

    if-gez v1, :cond_2

    .line 53987
    invoke-static {v1, v7, v2, v9}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53988
    iget v2, v9, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    :cond_2
    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v4, v1, 0x7

    if-eq v3, v10, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    goto :goto_2

    .line 54002
    :cond_3
    iget-object v3, v11, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 54032
    iget v3, v3, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->updateVisuals:I

    if-ne v4, v3, :cond_5

    .line 54003
    iget-object v4, v11, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    iget-object v1, v11, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 54009
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v6, p8

    .line 54004
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->ICustomTabsCallback([BIILo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 54011
    iget-object v15, v9, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_1

    .line 53994
    :cond_4
    iget-object v3, v11, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 54031
    iget v3, v3, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->updateVisuals:I

    if-ne v4, v3, :cond_5

    .line 53995
    iget-object v4, v11, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v6, p8

    .line 53996
    invoke-static/range {v1 .. v6}, Lo/ReportManager;->ICustomTabsCallback([BIILo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    .line 53997
    iget-object v14, v9, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    goto :goto_1

    .line 54018
    :cond_5
    :goto_2
    invoke-static {v1, v7, v2, v8, v9}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v1

    goto :goto_1

    :cond_6
    if-ne v1, v13, :cond_7

    .line 54023
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v13

    .line 54021
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 53979
    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private static onNavigationEvent(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5735
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private onNavigationEvent(I)Lo/CreateReportRequest;
    .locals 3

    .line 4842
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 4843
    iget-object v0, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lo/CreateReportRequest;

    if-eqz v0, :cond_0

    return-object v0

    .line 4847
    :cond_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    iget-object v1, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 4848
    iget-object v1, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 51025
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    .line 51026
    aget v2, v0, p3

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v4, v1

    add-int/lit8 p3, p3, 0x2

    .line 51030
    aget v0, v0, p3

    and-int/2addr v0, v3

    int-to-long v0, v0

    .line 51029
    invoke-static {p2, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1395
    :cond_1
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1396
    invoke-static {p2, v4, v5}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 1398
    invoke-static {v0, p2}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1399
    invoke-static {p1, v4, v5, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51034
    iget-object p2, p0, Lo/ReportManager;->onPostMessage:[I

    aget p2, p2, p3

    and-int/2addr p2, v3

    int-to-long p2, p2

    .line 51032
    invoke-static {p1, p2, p3, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 1402
    invoke-static {p1, v4, v5, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51038
    iget-object p2, p0, Lo/ReportManager;->onPostMessage:[I

    aget p2, p2, p3

    and-int/2addr p2, v3

    int-to-long p2, p2

    .line 51036
    invoke-static {p1, p2, p3, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    :cond_3
    return-void
.end method

.method private onNavigationEvent(Ljava/lang/Object;Lo/sendReport;)V
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2544
    iget-boolean v3, v0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_0

    .line 2545
    iget-object v3, v0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v3, v1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v3

    .line 53493
    iget-object v5, v3, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2547
    invoke-virtual {v3}, Lo/getBinaryImageSize;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v3

    .line 2548
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    .line 2553
    iget-object v7, v0, Lo/ReportManager;->onPostMessage:[I

    array-length v7, v7

    .line 2554
    sget-object v8, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_1c

    .line 53494
    iget-object v12, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v13, v10, 0x1

    aget v13, v12, v13

    .line 53495
    aget v14, v12, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v13

    ushr-int/lit8 v15, v15, 0x14

    .line 2562
    iget-boolean v4, v0, Lo/ReportManager;->newSession:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    .line 2563
    aget v4, v12, v4

    and-int v12, v4, v16

    move/from16 v17, v10

    if-eq v12, v6, :cond_1

    int-to-long v9, v12

    .line 2567
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v12

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 2573
    iget-object v9, v0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v9, v5}, Lo/getSessionAppSize;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 2574
    iget-object v9, v0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v9, v2, v5}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 2575
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v13, v16

    int-to-long v9, v9

    packed-switch v15, :pswitch_data_0

    move-object v13, v5

    move/from16 v12, v17

    :cond_5
    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_17

    .line 53612
    :pswitch_0
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v12, v17, 0x2

    aget v4, v4, v12

    and-int v4, v4, v16

    int-to-long v12, v4

    .line 53611
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    if-eqz v18, :cond_7

    .line 2901
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move/from16 v12, v17

    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v9

    .line 2900
    invoke-interface {v2, v14, v4, v9}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto :goto_5

    :cond_7
    move/from16 v12, v17

    :goto_5
    move-object v13, v5

    goto :goto_3

    :pswitch_1
    move/from16 v12, v17

    .line 53608
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v13, v12, 0x2

    aget v4, v4, v13

    and-int v4, v4, v16

    move-object v13, v5

    int-to-long v4, v4

    .line 53607
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_8

    const/16 v18, 0x1

    goto :goto_6

    :cond_8
    const/16 v18, 0x0

    :goto_6
    if-eqz v18, :cond_5

    .line 53609
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2895
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto :goto_3

    :pswitch_2
    move-object v13, v5

    move/from16 v12, v17

    .line 53604
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53603
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_9

    const/16 v18, 0x1

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    :goto_7
    if-eqz v18, :cond_5

    .line 53605
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2890
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onTransact(II)V

    goto :goto_3

    :pswitch_3
    move-object v13, v5

    move/from16 v12, v17

    .line 53600
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53599
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_a

    const/16 v18, 0x1

    goto :goto_8

    :cond_a
    const/16 v18, 0x0

    :goto_8
    if-eqz v18, :cond_5

    .line 53601
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2885
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_3

    :pswitch_4
    move-object v13, v5

    move/from16 v12, v17

    .line 53596
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53595
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_b

    const/16 v18, 0x1

    goto :goto_9

    :cond_b
    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_5

    .line 53597
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2880
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_3

    :pswitch_5
    move-object v13, v5

    move/from16 v12, v17

    .line 53592
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53591
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_c

    const/16 v18, 0x1

    goto :goto_a

    :cond_c
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_5

    .line 53593
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2875
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_3

    :pswitch_6
    move-object v13, v5

    move/from16 v12, v17

    .line 53588
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53587
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_d

    const/16 v18, 0x1

    goto :goto_b

    :cond_d
    const/16 v18, 0x0

    :goto_b
    if-eqz v18, :cond_5

    .line 53589
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2870
    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_3

    :pswitch_7
    move-object v13, v5

    move/from16 v12, v17

    .line 53585
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53584
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_e

    const/16 v18, 0x1

    goto :goto_c

    :cond_e
    const/16 v18, 0x0

    :goto_c
    if-eqz v18, :cond_5

    .line 2865
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/SessionProtobufHelper;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_3

    :pswitch_8
    move-object v13, v5

    move/from16 v12, v17

    .line 53582
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53581
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_f

    const/16 v18, 0x1

    goto :goto_d

    :cond_f
    const/16 v18, 0x0

    :goto_d
    if-eqz v18, :cond_5

    .line 2859
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2860
    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v5

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_3

    :pswitch_9
    move-object v13, v5

    move/from16 v12, v17

    .line 53573
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53572
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_10

    const/16 v18, 0x1

    goto :goto_e

    :cond_10
    const/16 v18, 0x0

    :goto_e
    if-eqz v18, :cond_5

    .line 2854
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 53574
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 53575
    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 53577
    :cond_11
    check-cast v4, Lo/SessionProtobufHelper;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_3

    :pswitch_a
    move-object v13, v5

    move/from16 v12, v17

    .line 53569
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53568
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_12

    const/16 v18, 0x1

    goto :goto_f

    :cond_12
    const/16 v18, 0x0

    :goto_f
    if-eqz v18, :cond_5

    .line 53570
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2849
    invoke-interface {v2, v14, v4}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_3

    :pswitch_b
    move-object v13, v5

    move/from16 v12, v17

    .line 53565
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53564
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_13

    const/16 v18, 0x1

    goto :goto_10

    :cond_13
    const/16 v18, 0x0

    :goto_10
    if-eqz v18, :cond_5

    .line 53566
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2844
    invoke-interface {v2, v14, v4}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto/16 :goto_3

    :pswitch_c
    move-object v13, v5

    move/from16 v12, v17

    .line 53561
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53560
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_14

    const/16 v18, 0x1

    goto :goto_11

    :cond_14
    const/16 v18, 0x0

    :goto_11
    if-eqz v18, :cond_5

    .line 53562
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2839
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    :pswitch_d
    move-object v13, v5

    move/from16 v12, v17

    .line 53557
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53556
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_15

    const/16 v18, 0x1

    goto :goto_12

    :cond_15
    const/16 v18, 0x0

    :goto_12
    if-eqz v18, :cond_5

    .line 53558
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 2834
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onNavigationEvent(II)V

    goto/16 :goto_3

    :pswitch_e
    move-object v13, v5

    move/from16 v12, v17

    .line 53553
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53552
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_16

    const/16 v18, 0x1

    goto :goto_13

    :cond_16
    const/16 v18, 0x0

    :goto_13
    if-eqz v18, :cond_5

    .line 53554
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2829
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto/16 :goto_3

    :pswitch_f
    move-object v13, v5

    move/from16 v12, v17

    .line 53549
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53548
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_17

    const/16 v18, 0x1

    goto :goto_14

    :cond_17
    const/16 v18, 0x0

    :goto_14
    if-eqz v18, :cond_5

    .line 53550
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 2824
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->extraCallback(IJ)V

    goto/16 :goto_3

    :pswitch_10
    move-object v13, v5

    move/from16 v12, v17

    .line 53545
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53544
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_18

    const/16 v18, 0x1

    goto :goto_15

    :cond_18
    const/16 v18, 0x0

    :goto_15
    if-eqz v18, :cond_5

    .line 53546
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 2819
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onNavigationEvent(IF)V

    goto/16 :goto_3

    :pswitch_11
    move-object v13, v5

    move/from16 v12, v17

    .line 53541
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v12, 0x2

    aget v4, v4, v5

    and-int v4, v4, v16

    int-to-long v4, v4

    .line 53540
    invoke-static {v1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v14, :cond_19

    const/16 v18, 0x1

    goto :goto_16

    :cond_19
    const/16 v18, 0x0

    :goto_16
    if-eqz v18, :cond_5

    .line 53542
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 2814
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->ICustomTabsCallback(ID)V

    goto/16 :goto_3

    :pswitch_12
    move-object v13, v5

    move/from16 v12, v17

    .line 2810
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Lo/ReportManager;->ICustomTabsCallback(Lo/sendReport;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    move-object v13, v5

    move/from16 v12, v17

    .line 53538
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2804
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2806
    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v9

    .line 2802
    invoke-static {v4, v5, v2, v9}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_3

    :pswitch_14
    move-object v13, v5

    move/from16 v12, v17

    .line 53537
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2799
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v14, 0x1

    .line 2798
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_15
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53536
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2795
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2794
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_16
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53535
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2791
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2790
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_17
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53534
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2787
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2786
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_18
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53533
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2783
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2782
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_19
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53532
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2779
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2778
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1a
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53531
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2775
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2774
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1b
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53530
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2770
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2769
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1c
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53529
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2766
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2765
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1d
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53528
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2762
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2761
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1e
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53527
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2758
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2757
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_1f
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53526
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2754
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2753
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_20
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53525
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2750
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2749
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_21
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x1

    .line 53524
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2746
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2745
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_22
    move-object v13, v5

    move/from16 v12, v17

    .line 53523
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2741
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v14, 0x0

    .line 2740
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_23
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x0

    .line 53522
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2737
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2736
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_24
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x0

    .line 53521
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2733
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2732
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_25
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x0

    .line 53520
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2729
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2728
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_26
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x0

    .line 53519
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2725
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2724
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_27
    move-object v13, v5

    move/from16 v12, v17

    const/4 v14, 0x0

    .line 53518
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2721
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2720
    invoke-static {v4, v5, v2, v14}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_3

    :pswitch_28
    move-object v13, v5

    move/from16 v12, v17

    .line 53517
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2717
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2716
    invoke-static {v4, v5, v2}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_3

    :pswitch_29
    move-object v13, v5

    move/from16 v12, v17

    .line 53516
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2711
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2713
    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v9

    .line 2709
    invoke-static {v4, v5, v2, v9}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_3

    :pswitch_2a
    move-object v13, v5

    move/from16 v12, v17

    .line 53515
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2706
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2705
    invoke-static {v4, v5, v2}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_3

    :pswitch_2b
    move-object v13, v5

    move/from16 v12, v17

    .line 53514
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2702
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v15, 0x0

    .line 2701
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_2c
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53513
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2698
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2697
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_2d
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53512
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2694
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2693
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_2e
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53511
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2690
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2689
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_2f
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53510
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2686
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2685
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_30
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53509
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2682
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2681
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_31
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53508
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2678
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2677
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_32
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 53507
    iget-object v4, v0, Lo/ReportManager;->onPostMessage:[I

    aget v4, v4, v12

    .line 2674
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2673
    invoke-static {v4, v5, v2, v15}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_17

    :pswitch_33
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2669
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v5

    .line 2668
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_17

    :pswitch_34
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2663
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto/16 :goto_17

    :pswitch_35
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2658
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onTransact(II)V

    goto/16 :goto_17

    :pswitch_36
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2653
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_17

    :pswitch_37
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2648
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_17

    :pswitch_38
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2643
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_17

    :pswitch_39
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2638
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_17

    :pswitch_3a
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2633
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/SessionProtobufHelper;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_17

    :pswitch_3b
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2627
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2628
    invoke-direct {v0, v12}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v5

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_17

    :pswitch_3c
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2622
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 53501
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 53502
    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 53504
    :cond_1a
    check-cast v4, Lo/SessionProtobufHelper;

    invoke-interface {v2, v14, v4}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_17

    :pswitch_3d
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 53500
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v4

    .line 2617
    invoke-interface {v2, v14, v4}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_17

    :pswitch_3e
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2612
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto :goto_17

    :pswitch_3f
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2607
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto :goto_17

    :pswitch_40
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2602
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/sendReport;->onNavigationEvent(II)V

    goto :goto_17

    :pswitch_41
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2597
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto :goto_17

    :pswitch_42
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 2592
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->extraCallback(IJ)V

    goto :goto_17

    :pswitch_43
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 53499
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v4

    .line 2587
    invoke-interface {v2, v14, v4}, Lo/sendReport;->onNavigationEvent(IF)V

    goto :goto_17

    :pswitch_44
    move-object v13, v5

    move/from16 v12, v17

    const/4 v15, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_1b

    .line 53498
    invoke-static {v1, v9, v10}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v4

    .line 2582
    invoke-interface {v2, v14, v4, v5}, Lo/sendReport;->ICustomTabsCallback(ID)V

    :cond_1b
    :goto_17
    add-int/lit8 v10, v12, 0x3

    move-object v5, v13

    goto/16 :goto_1

    :cond_1c
    :goto_18
    if-eqz v5, :cond_1e

    .line 2910
    iget-object v4, v0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v4, v2, v5}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 2911
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_18

    :cond_1d
    const/4 v5, 0x0

    goto :goto_18

    .line 2913
    :cond_1e
    iget-object v3, v0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 53613
    invoke-virtual {v3, v1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/sendReport;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method private static onPostMessage(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private final onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lo/SessionReport<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 54346
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    aget v3, v0, p2

    add-int/lit8 v1, p2, 0x1

    .line 54347
    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 5454
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 54349
    :cond_0
    iget-object v0, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    move-object v5, v0

    check-cast v5, Lo/getEventLogSize$extraCallback;

    if-nez v5, :cond_1

    return-object p3

    .line 5462
    :cond_1
    iget-object v0, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v0, p1}, Lo/WireFormat$FieldType;->extraCallback(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 5465
    invoke-direct/range {v1 .. v7}, Lo/ReportManager;->onMessageChannelReady(IILjava/util/Map;Lo/getEventLogSize$extraCallback;Ljava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 589
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 593
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 594
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 595
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static onPostMessage(Ljava/lang/Object;)Lo/getFileName;
    .locals 2

    .line 4334
    check-cast p0, Lo/getEventAppExecutionSize;

    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 4335
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4336
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v0

    .line 4337
    iput-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_0
    return-object v0
.end method

.method private onPostMessage(Ljava/lang/Object;ILo/attemptUploadWithRetry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5630
    invoke-interface {p3}, Lo/attemptUploadWithRetry;->ICustomTabsService()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 5631
    :cond_1
    iget-boolean v0, p0, Lo/ReportManager;->onTransact:Z

    if-eqz v0, :cond_2

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5634
    invoke-interface {p3}, Lo/attemptUploadWithRetry;->newSession()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_2
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 5638
    invoke-interface {p3}, Lo/attemptUploadWithRetry;->getInterfaceDescriptor()Lo/SessionProtobufHelper;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private onPostMessage(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5756
    iget-boolean v0, p0, Lo/ReportManager;->newSession:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 54429
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/2addr p2, v3

    aget p2, v0, p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5804
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5802
    :pswitch_0
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 5800
    :pswitch_1
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 5798
    :pswitch_2
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 5796
    :pswitch_3
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 5794
    :pswitch_4
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    .line 5792
    :pswitch_5
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    .line 5790
    :pswitch_6
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    .line 5788
    :pswitch_7
    sget-object p2, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 5786
    :pswitch_8
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 5777
    :pswitch_9
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5778
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 5779
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    .line 5780
    :cond_a
    instance-of p2, p1, Lo/SessionProtobufHelper;

    if-eqz p2, :cond_c

    .line 5781
    sget-object p2, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    .line 5783
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5775
    :pswitch_a
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 5773
    :pswitch_b
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    .line 5771
    :pswitch_c
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    .line 5769
    :pswitch_d
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    .line 5767
    :pswitch_e
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    .line 5765
    :pswitch_f
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    .line 5763
    :pswitch_10
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    .line 5761
    :pswitch_11
    invoke-static {p1, v0, v1}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 54432
    :cond_14
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 5809
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    :pswitch_data_0
    .packed-switch 0x0
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
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5403
    iget v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_0
    iget v1, p0, Lo/ReportManager;->warmup:I

    if-ge v0, v1, :cond_1

    .line 5404
    iget-object v1, p0, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v1, v1, v0

    .line 54344
    iget-object v2, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v2, v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 5405
    invoke-static {p1, v1, v2}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5409
    iget-object v4, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v4, v3}, Lo/WireFormat$FieldType;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5411
    :cond_1
    iget-object v0, p0, Lo/ReportManager;->getInterfaceDescriptor:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5413
    iget-object v2, p0, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    iget-object v3, p0, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lo/getThreadSize;->onNavigationEvent(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5415
    :cond_2
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 5416
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    .line 5417
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V
    .locals 12
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

    .line 2529
    invoke-interface {p2}, Lo/sendReport;->onPostMessage()Lo/sendReport$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/sendReport$ICustomTabsCallback;->onPostMessage:Lo/sendReport$ICustomTabsCallback;

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_1e

    .line 52279
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 52728
    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/sendReport;)V

    .line 52283
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    .line 52284
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v0

    .line 52730
    iget-object v1, v0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 52731
    iget-boolean v1, v0, Lo/getBinaryImageSize;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    .line 52732
    new-instance v1, Lo/getFrameSize$ICustomTabsCallback;

    iget-object v0, v0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 52735
    iget-object v7, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    if-nez v7, :cond_0

    .line 52736
    new-instance v7, Lo/Report$Type$ICustomTabsCallback;

    invoke-direct {v7, v0, v5}, Lo/Report$Type$ICustomTabsCallback;-><init>(Lo/Report$Type;B)V

    iput-object v7, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    .line 52738
    :cond_0
    iget-object v0, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    .line 52732
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/getFrameSize$ICustomTabsCallback;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 52734
    :cond_1
    iget-object v0, v0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 52739
    iget-object v1, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    if-nez v1, :cond_2

    .line 52740
    new-instance v1, Lo/Report$Type$ICustomTabsCallback;

    invoke-direct {v1, v0, v5}, Lo/Report$Type$ICustomTabsCallback;-><init>(Lo/Report$Type;B)V

    iput-object v1, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    .line 52742
    :cond_2
    iget-object v0, v0, Lo/Report$Type;->onPostMessage:Lo/Report$Type$ICustomTabsCallback;

    .line 52734
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 52287
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_3
    move-object v0, v3

    move-object v1, v0

    .line 52291
    :goto_1
    iget-object v7, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_2
    if-ltz v7, :cond_1b

    .line 52743
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v9, v7, 0x1

    aget v9, v8, v9

    .line 52744
    aget v8, v8, v7

    :goto_3
    if-eqz v0, :cond_5

    .line 52296
    iget-object v10, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v10, v0}, Lo/getSessionAppSize;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v8, :cond_5

    .line 52297
    iget-object v10, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v10, p2, v0}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 52298
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto :goto_3

    :cond_5
    and-int v10, v9, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_16

    .line 52939
    :pswitch_0
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52938
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52715
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52716
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    .line 52713
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52934
    :pswitch_1
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52933
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52936
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 52708
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto/16 :goto_16

    .line 52929
    :pswitch_2
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52928
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52931
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52703
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onTransact(II)V

    goto/16 :goto_16

    .line 52924
    :pswitch_3
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52923
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52926
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 52698
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_16

    .line 52919
    :pswitch_4
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52918
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_a

    const/4 v10, 0x1

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52921
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52693
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_16

    .line 52914
    :pswitch_5
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52913
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52916
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52688
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_16

    .line 52909
    :pswitch_6
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52908
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_c

    const/4 v10, 0x1

    goto :goto_a

    :cond_c
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52911
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52683
    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_16

    .line 52905
    :pswitch_7
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52904
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_d

    const/4 v10, 0x1

    goto :goto_b

    :cond_d
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52678
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/SessionProtobufHelper;

    .line 52677
    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_16

    .line 52901
    :pswitch_8
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52900
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_e

    const/4 v10, 0x1

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    :goto_c
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52671
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52672
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52891
    :pswitch_9
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52890
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_f

    const/4 v10, 0x1

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52666
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52893
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_10

    .line 52894
    check-cast v9, Ljava/lang/String;

    invoke-interface {p2, v8, v9}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    goto/16 :goto_16

    .line 52896
    :cond_10
    check-cast v9, Lo/SessionProtobufHelper;

    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_16

    .line 52886
    :pswitch_a
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52885
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_11

    const/4 v10, 0x1

    goto :goto_e

    :cond_11
    const/4 v10, 0x0

    :goto_e
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52888
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 52661
    invoke-interface {p2, v8, v9}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_16

    .line 52881
    :pswitch_b
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52880
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_12

    const/4 v10, 0x1

    goto :goto_f

    :cond_12
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52883
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52656
    invoke-interface {p2, v8, v9}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto/16 :goto_16

    .line 52876
    :pswitch_c
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52875
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_13

    const/4 v10, 0x1

    goto :goto_10

    :cond_13
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52878
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 52651
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto/16 :goto_16

    .line 52871
    :pswitch_d
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52870
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_14

    const/4 v10, 0x1

    goto :goto_11

    :cond_14
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52873
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 52646
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onNavigationEvent(II)V

    goto/16 :goto_16

    .line 52866
    :pswitch_e
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52865
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_15

    const/4 v10, 0x1

    goto :goto_12

    :cond_15
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52868
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 52641
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto/16 :goto_16

    .line 52861
    :pswitch_f
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52860
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_16

    const/4 v10, 0x1

    goto :goto_13

    :cond_16
    const/4 v10, 0x0

    :goto_13
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52863
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 52636
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->extraCallback(IJ)V

    goto/16 :goto_16

    .line 52856
    :pswitch_10
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52855
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_17

    const/4 v10, 0x1

    goto :goto_14

    :cond_17
    const/4 v10, 0x0

    :goto_14
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52858
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 52631
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onNavigationEvent(IF)V

    goto/16 :goto_16

    .line 52851
    :pswitch_11
    iget-object v10, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 52850
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v8, :cond_18

    const/4 v10, 0x1

    goto :goto_15

    :cond_18
    const/4 v10, 0x0

    :goto_15
    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52853
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    .line 52626
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->ICustomTabsCallback(ID)V

    goto/16 :goto_16

    :pswitch_12
    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52622
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v8, v9, v7}, Lo/ReportManager;->ICustomTabsCallback(Lo/sendReport;ILjava/lang/Object;I)V

    goto/16 :goto_16

    .line 52846
    :pswitch_13
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52616
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52618
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    .line 52614
    invoke-static {v8, v9, p2, v10}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52844
    :pswitch_14
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52609
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52607
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52842
    :pswitch_15
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52602
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52600
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52840
    :pswitch_16
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52595
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52593
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52838
    :pswitch_17
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52588
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52586
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52836
    :pswitch_18
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52581
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52579
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52834
    :pswitch_19
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52574
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52572
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52832
    :pswitch_1a
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52567
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52565
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52830
    :pswitch_1b
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52559
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52557
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52828
    :pswitch_1c
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52552
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52550
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52826
    :pswitch_1d
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52545
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52543
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52824
    :pswitch_1e
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52538
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52536
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52822
    :pswitch_1f
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52531
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52529
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52820
    :pswitch_20
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52524
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52522
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52818
    :pswitch_21
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52517
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52515
    invoke-static {v8, v9, p2, v4}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52816
    :pswitch_22
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52510
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52508
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52814
    :pswitch_23
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52503
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52501
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52812
    :pswitch_24
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52496
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52494
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52810
    :pswitch_25
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52489
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52487
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52808
    :pswitch_26
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52482
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52480
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52806
    :pswitch_27
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52475
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52473
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52804
    :pswitch_28
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52469
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52467
    invoke-static {v8, v9, p2}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_16

    .line 52802
    :pswitch_29
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52462
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52464
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    .line 52460
    invoke-static {v8, v9, p2, v10}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52800
    :pswitch_2a
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52456
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52454
    invoke-static {v8, v9, p2}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_16

    .line 52798
    :pswitch_2b
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52449
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52447
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52796
    :pswitch_2c
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52442
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52440
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52794
    :pswitch_2d
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52435
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52433
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52792
    :pswitch_2e
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52428
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52426
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52790
    :pswitch_2f
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52421
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52419
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52788
    :pswitch_30
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52414
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52412
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52786
    :pswitch_31
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52407
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52405
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52784
    :pswitch_32
    iget-object v8, p0, Lo/ReportManager;->onPostMessage:[I

    aget v8, v8, v7

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52400
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 52398
    invoke-static {v8, v9, p2, v5}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_16

    .line 52390
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52393
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52394
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    .line 52391
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52385
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52782
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 52386
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto/16 :goto_16

    .line 52380
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52780
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52381
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onTransact(II)V

    goto/16 :goto_16

    .line 52375
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52778
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 52376
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_16

    .line 52370
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52776
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52371
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_16

    .line 52365
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52774
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52366
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_16

    .line 52360
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52772
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52361
    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_16

    .line 52354
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52356
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/SessionProtobufHelper;

    .line 52355
    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_16

    .line 52348
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52349
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52350
    invoke-direct {p0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v10

    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_16

    .line 52343
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52344
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 52763
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_19

    .line 52764
    check-cast v9, Ljava/lang/String;

    invoke-interface {p2, v8, v9}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    goto/16 :goto_16

    .line 52766
    :cond_19
    check-cast v9, Lo/SessionProtobufHelper;

    invoke-interface {p2, v8, v9}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_16

    .line 52338
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52761
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v9

    .line 52339
    invoke-interface {p2, v8, v9}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_16

    .line 52333
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52759
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52334
    invoke-interface {p2, v8, v9}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto :goto_16

    .line 52328
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52757
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 52329
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto :goto_16

    .line 52323
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52755
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 52324
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onNavigationEvent(II)V

    goto :goto_16

    .line 52318
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52753
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 52319
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto :goto_16

    .line 52313
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52751
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    .line 52314
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->extraCallback(IJ)V

    goto :goto_16

    .line 52308
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52749
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v9

    .line 52309
    invoke-interface {p2, v8, v9}, Lo/sendReport;->onNavigationEvent(IF)V

    goto :goto_16

    .line 52303
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    and-int/2addr v9, v6

    int-to-long v9, v9

    .line 52747
    invoke-static {p1, v9, v10}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v9

    .line 52304
    invoke-interface {p2, v8, v9, v10}, Lo/sendReport;->ICustomTabsCallback(ID)V

    :cond_1a
    :goto_16
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_2

    :cond_1b
    :goto_17
    if-eqz v0, :cond_1d

    .line 52724
    iget-object p1, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {p1, p2, v0}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 52725
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v0, p1

    goto :goto_17

    :cond_1c
    move-object v0, v3

    goto :goto_17

    :cond_1d
    return-void

    .line 2532
    :cond_1e
    iget-boolean v0, p0, Lo/ReportManager;->newSession:Z

    if-eqz v0, :cond_27

    .line 52943
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1f

    .line 52944
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v0

    .line 53392
    iget-object v1, v0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 52946
    invoke-virtual {v0}, Lo/getBinaryImageSize;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v0

    .line 52947
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_18

    :cond_1f
    move-object v0, v3

    move-object v1, v0

    .line 52951
    :goto_18
    iget-object v7, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v7, :cond_24

    .line 53393
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v10, v8, 0x1

    aget v10, v9, v10

    .line 53394
    aget v9, v9, v8

    :goto_1a
    if-eqz v1, :cond_21

    .line 52957
    iget-object v11, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v11, v1}, Lo/getSessionAppSize;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v9, :cond_21

    .line 52958
    iget-object v11, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v11, p2, v1}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 52959
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1a

    :cond_20
    move-object v1, v3

    goto :goto_1a

    :cond_21
    and-int v11, v10, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_1b

    .line 53374
    :pswitch_45
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53377
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 53378
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 53375
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53369
    :pswitch_46
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53370
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto/16 :goto_1b

    .line 53364
    :pswitch_47
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53365
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->onTransact(II)V

    goto/16 :goto_1b

    .line 53359
    :pswitch_48
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53360
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_1b

    .line 53354
    :pswitch_49
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53355
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_1b

    .line 53349
    :pswitch_4a
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53350
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_1b

    .line 53344
    :pswitch_4b
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53345
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_1b

    .line 53338
    :pswitch_4c
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53340
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/SessionProtobufHelper;

    .line 53339
    invoke-interface {p2, v9, v10}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_1b

    .line 53332
    :pswitch_4d
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53333
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 53334
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53327
    :pswitch_4e
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53328
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10, p2}, Lo/ReportManager;->ICustomTabsCallback(ILjava/lang/Object;Lo/sendReport;)V

    goto/16 :goto_1b

    .line 53322
    :pswitch_4f
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53323
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    .line 53490
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 53323
    invoke-interface {p2, v9, v10}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_1b

    .line 53317
    :pswitch_50
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53318
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto/16 :goto_1b

    .line 53312
    :pswitch_51
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53313
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto/16 :goto_1b

    .line 53307
    :pswitch_52
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53308
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-interface {p2, v9, v10}, Lo/sendReport;->onNavigationEvent(II)V

    goto/16 :goto_1b

    .line 53302
    :pswitch_53
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53303
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto/16 :goto_1b

    .line 53297
    :pswitch_54
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53298
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->extraCallback(IJ)V

    goto/16 :goto_1b

    .line 53292
    :pswitch_55
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53293
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    .line 53489
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 53293
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onNavigationEvent(IF)V

    goto/16 :goto_1b

    .line 53287
    :pswitch_56
    invoke-direct {p0, p1, v9, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 53288
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    .line 53488
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 53288
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->ICustomTabsCallback(ID)V

    goto/16 :goto_1b

    .line 53284
    :pswitch_57
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, p2, v9, v10, v8}, Lo/ReportManager;->ICustomTabsCallback(Lo/sendReport;ILjava/lang/Object;I)V

    goto/16 :goto_1b

    .line 53277
    :pswitch_58
    invoke-direct {p0, v8}, Lo/ReportManager;->extraCallback(I)I

    move-result v9

    .line 53278
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53280
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 53276
    invoke-static {v9, v10, p2, v11}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53270
    :pswitch_59
    invoke-direct {p0, v8}, Lo/ReportManager;->extraCallback(I)I

    move-result v9

    .line 53271
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53269
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53263
    :pswitch_5a
    invoke-direct {p0, v8}, Lo/ReportManager;->extraCallback(I)I

    move-result v9

    .line 53264
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53262
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53256
    :pswitch_5b
    invoke-direct {p0, v8}, Lo/ReportManager;->extraCallback(I)I

    move-result v9

    .line 53257
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53255
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53249
    :pswitch_5c
    invoke-direct {p0, v8}, Lo/ReportManager;->extraCallback(I)I

    move-result v9

    .line 53250
    invoke-static {v10}, Lo/ReportManager;->onPostMessage(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53248
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53486
    :pswitch_5d
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53243
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53241
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53484
    :pswitch_5e
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53236
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53234
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53482
    :pswitch_5f
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53229
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53227
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53480
    :pswitch_60
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53221
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53219
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53478
    :pswitch_61
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53214
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53212
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53476
    :pswitch_62
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53207
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53205
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53474
    :pswitch_63
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53200
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53198
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53472
    :pswitch_64
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53193
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53191
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53470
    :pswitch_65
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53186
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53184
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53468
    :pswitch_66
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53179
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53177
    invoke-static {v9, v10, p2, v4}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53466
    :pswitch_67
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53171
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53169
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53464
    :pswitch_68
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53164
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53162
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53462
    :pswitch_69
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53157
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53155
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53460
    :pswitch_6a
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53150
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53148
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53458
    :pswitch_6b
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53143
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53141
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->ICustomTabsService(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53456
    :pswitch_6c
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53136
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53134
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53454
    :pswitch_6d
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53130
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53128
    invoke-static {v9, v10, p2}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_1b

    .line 53452
    :pswitch_6e
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53123
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53125
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 53121
    invoke-static {v9, v10, p2, v11}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53450
    :pswitch_6f
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53117
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53115
    invoke-static {v9, v10, p2}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;)V

    goto/16 :goto_1b

    .line 53448
    :pswitch_70
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53110
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53108
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->warmup(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53446
    :pswitch_71
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53103
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53101
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->newSession(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53444
    :pswitch_72
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53096
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53094
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53442
    :pswitch_73
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53089
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53087
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53440
    :pswitch_74
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53082
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53080
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53438
    :pswitch_75
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53075
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53073
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53436
    :pswitch_76
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53068
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53066
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53434
    :pswitch_77
    iget-object v9, p0, Lo/ReportManager;->onPostMessage:[I

    aget v9, v9, v8

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53061
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 53059
    invoke-static {v9, v10, p2, v5}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;Lo/sendReport;Z)V

    goto/16 :goto_1b

    .line 53051
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53054
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 53055
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 53052
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onNavigationEvent(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53046
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53432
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 53047
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onNavigationEvent(IJ)V

    goto/16 :goto_1b

    .line 53041
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53430
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 53042
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onTransact(II)V

    goto/16 :goto_1b

    .line 53036
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53428
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 53037
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onPostMessage(IJ)V

    goto/16 :goto_1b

    .line 53031
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53426
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 53032
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onPostMessage(II)V

    goto/16 :goto_1b

    .line 53026
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53424
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 53027
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onMessageChannelReady(II)V

    goto/16 :goto_1b

    .line 53021
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53422
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 53022
    invoke-interface {p2, v9, v10}, Lo/sendReport;->extraCallback(II)V

    goto/16 :goto_1b

    .line 53015
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53017
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/SessionProtobufHelper;

    .line 53016
    invoke-interface {p2, v9, v10}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_1b

    .line 53009
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53010
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 53011
    invoke-direct {p0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onPostMessage(ILjava/lang/Object;Lo/CreateReportRequest;)V

    goto/16 :goto_1b

    .line 53004
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53005
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 53413
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_22

    .line 53414
    check-cast v10, Ljava/lang/String;

    invoke-interface {p2, v9, v10}, Lo/sendReport;->onPostMessage(ILjava/lang/String;)V

    goto/16 :goto_1b

    .line 53416
    :cond_22
    check-cast v10, Lo/SessionProtobufHelper;

    invoke-interface {p2, v9, v10}, Lo/sendReport;->extraCallback(ILo/SessionProtobufHelper;)V

    goto/16 :goto_1b

    .line 52999
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53411
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v10

    .line 53000
    invoke-interface {p2, v9, v10}, Lo/sendReport;->ICustomTabsCallback(IZ)V

    goto/16 :goto_1b

    .line 52994
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53409
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 52995
    invoke-interface {p2, v9, v10}, Lo/sendReport;->ICustomTabsCallback(II)V

    goto :goto_1b

    .line 52989
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53407
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 52990
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->ICustomTabsCallback(IJ)V

    goto :goto_1b

    .line 52984
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53405
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    .line 52985
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onNavigationEvent(II)V

    goto :goto_1b

    .line 52979
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53403
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 52980
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->onMessageChannelReady(IJ)V

    goto :goto_1b

    .line 52974
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53401
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 52975
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->extraCallback(IJ)V

    goto :goto_1b

    .line 52969
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53399
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v10

    .line 52970
    invoke-interface {p2, v9, v10}, Lo/sendReport;->onNavigationEvent(IF)V

    goto :goto_1b

    .line 52964
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_23

    and-int/2addr v10, v6

    int-to-long v10, v10

    .line 53397
    invoke-static {p1, v10, v11}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 52965
    invoke-interface {p2, v9, v10, v11}, Lo/sendReport;->ICustomTabsCallback(ID)V

    :cond_23
    :goto_1b
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_19

    :cond_24
    :goto_1c
    if-eqz v1, :cond_26

    .line 53387
    iget-object v2, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v2, p2, v1}, Lo/getSessionAppSize;->extraCallback(Lo/sendReport;Ljava/util/Map$Entry;)V

    .line 53388
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1c

    :cond_25
    move-object v1, v3

    goto :goto_1c

    .line 53390
    :cond_26
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 53491
    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Lo/sendReport;)V

    return-void

    .line 2535
    :cond_27
    invoke-direct {p0, p1, p2}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;Lo/sendReport;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final extraCallback()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lo/ReportManager;->extraCallback:Lo/getDefaultDefault;

    iget-object v1, p0, Lo/ReportManager;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    invoke-interface {v0, v1}, Lo/getDefaultDefault;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;[BIILo/writeRawLittleEndian64$onPostMessage;)V
    .locals 27
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

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 5393
    iget-boolean v0, v15, Lo/ReportManager;->newSession:Z

    if-eqz v0, :cond_18

    .line 54097
    sget-object v9, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    .line 54102
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 54104
    invoke-static {v0, v12, v3, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54105
    iget v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v7, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v7, v3

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v5, v16, 0x7

    if-le v6, v1, :cond_1

    .line 54110
    div-int/lit8 v2, v2, 0x3

    .line 54308
    iget v0, v15, Lo/ReportManager;->onRelationshipValidationResult:I

    if-lt v6, v0, :cond_2

    iget v0, v15, Lo/ReportManager;->asBinder:I

    if-gt v6, v0, :cond_2

    .line 54309
    invoke-direct {v15, v6, v2}, Lo/ReportManager;->ICustomTabsCallback(II)I

    move-result v0

    goto :goto_2

    .line 54312
    :cond_1
    iget v0, v15, Lo/ReportManager;->onRelationshipValidationResult:I

    if-lt v6, v0, :cond_2

    iget v0, v15, Lo/ReportManager;->asBinder:I

    if-gt v6, v0, :cond_2

    .line 54313
    invoke-direct {v15, v6, v10}, Lo/ReportManager;->ICustomTabsCallback(II)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    move v4, v0

    if-ne v4, v8, :cond_3

    move/from16 v19, v6

    move v2, v7

    move-object/from16 v18, v9

    const/16 v17, 0x0

    const/16 v24, -0x1

    const/16 v26, 0x0

    goto/16 :goto_14

    .line 54119
    :cond_3
    iget-object v0, v15, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v1, v4, 0x1

    aget v3, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v3

    ushr-int/lit8 v2, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v3

    int-to-long v0, v0

    const/16 v8, 0x11

    const/4 v10, 0x2

    if-gt v2, v8, :cond_c

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-nez v5, :cond_4

    .line 54227
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v7

    .line 54228
    iget-wide v2, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    .line 54229
    invoke-static {v2, v3}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v19

    move-wide v2, v0

    move-object v0, v9

    move-object/from16 v1, p1

    move v8, v4

    move-wide/from16 v4, v19

    .line 54228
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    goto :goto_7

    :cond_4
    :goto_3
    move/from16 v17, v4

    move/from16 v19, v6

    move v15, v7

    goto/16 :goto_10

    :pswitch_1
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_f

    add-int/lit8 v0, v7, 0x1

    .line 54332
    aget-byte v1, v12, v7

    if-ltz v1, :cond_5

    .line 54334
    iput v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_4

    .line 54337
    :cond_5
    invoke-static {v1, v12, v0, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54220
    :goto_4
    iget v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 54221
    invoke-static {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v1

    .line 54220
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_f

    add-int/lit8 v0, v7, 0x1

    .line 54326
    aget-byte v1, v12, v7

    if-ltz v1, :cond_6

    .line 54328
    iput v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_5

    .line 54331
    :cond_6
    invoke-static {v1, v12, v0, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54213
    :goto_5
    iget v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_f

    .line 54205
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54206
    iget-object v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    move v1, v6

    :goto_7
    move v2, v8

    goto/16 :goto_16

    :pswitch_4
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_f

    .line 54192
    invoke-direct {v15, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v0

    .line 54191
    invoke-static {v0, v12, v7, v13, v11}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54193
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 54195
    iget-object v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 54197
    :cond_7
    iget-object v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    .line 54198
    invoke-static {v1, v4}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54197
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_5
    move-wide v1, v0

    move v8, v4

    if-ne v5, v10, :cond_f

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_8

    .line 54180
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->onMessageChannelReady([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    goto :goto_8

    .line 54182
    :cond_8
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->onPostMessage([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54184
    :goto_8
    iget-object v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v9, v14, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_6
    move-wide v1, v0

    move v10, v4

    if-nez v5, :cond_b

    .line 54172
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54173
    iget-wide v3, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 v19, 0x0

    cmp-long v5, v3, v19

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    :goto_9
    invoke-static {v14, v1, v2, v8}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    goto/16 :goto_d

    :pswitch_7
    move-wide v1, v0

    move v10, v4

    const/4 v0, 0x5

    if-ne v5, v0, :cond_b

    .line 54165
    invoke-static {v12, v7}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_8
    move-wide v1, v0

    move v10, v4

    if-ne v5, v8, :cond_b

    .line 54157
    invoke-static {v12, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v4

    move-object v0, v9

    move-wide v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_c

    :pswitch_9
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_b

    add-int/lit8 v0, v7, 0x1

    .line 54320
    aget-byte v1, v12, v7

    if-ltz v1, :cond_a

    .line 54322
    iput v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_a

    .line 54325
    :cond_a
    invoke-static {v1, v12, v0, v11}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 54150
    :goto_a
    iget v1, v11, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_a
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_b

    .line 54141
    invoke-static {v12, v7, v11}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v7

    .line 54142
    iget-wide v4, v11, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    goto :goto_e

    :pswitch_b
    move-wide v2, v0

    move v10, v4

    const/4 v0, 0x5

    if-ne v5, v0, :cond_b

    .line 54319
    invoke-static {v12, v7}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 54133
    invoke-static {v14, v2, v3, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JF)V

    :goto_b
    add-int/lit8 v0, v7, 0x4

    goto :goto_d

    :pswitch_c
    move-wide v2, v0

    move v10, v4

    if-ne v5, v8, :cond_b

    .line 54318
    invoke-static {v12, v7}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 54126
    invoke-static {v14, v2, v3, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JD)V

    :goto_c
    add-int/lit8 v0, v7, 0x8

    :goto_d
    move v1, v6

    :goto_e
    move v2, v10

    goto/16 :goto_16

    :cond_b
    move/from16 v19, v6

    move v15, v7

    move-object/from16 v18, v9

    move/from16 v17, v10

    goto :goto_11

    :cond_c
    move v8, v4

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_10

    if-ne v5, v10, :cond_f

    .line 54239
    invoke-virtual {v9, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getEventLogSize$asBinder;

    .line 54240
    invoke-interface {v2}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_e

    .line 54241
    invoke-interface {v2}, Lo/getEventLogSize$asBinder;->size()I

    move-result v3

    if-nez v3, :cond_d

    const/16 v3, 0xa

    goto :goto_f

    :cond_d
    shl-int/lit8 v3, v3, 0x1

    .line 54243
    :goto_f
    invoke-interface {v2, v3}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v2

    .line 54245
    invoke-virtual {v9, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v5, v2

    .line 54249
    invoke-direct {v15, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v19, v6

    move-object/from16 v6, p5

    .line 54248
    invoke-static/range {v0 .. v6}, Lo/writeRawLittleEndian64;->onNavigationEvent(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    move v2, v8

    goto/16 :goto_15

    :cond_f
    move/from16 v19, v6

    move v15, v7

    move/from16 v17, v8

    :goto_10
    move-object/from16 v18, v9

    :goto_11
    const/16 v24, -0x1

    const/16 v26, 0x0

    goto/16 :goto_12

    :cond_10
    move/from16 v19, v6

    const/16 v4, 0x31

    if-gt v2, v4, :cond_11

    int-to-long v3, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v2

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v7

    move/from16 v4, p4

    move v6, v5

    move/from16 v5, v16

    move/from16 p3, v6

    move/from16 v6, v19

    move v15, v7

    move/from16 v7, p3

    move/from16 v17, v8

    const/16 v24, -0x1

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, 0x0

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    .line 54256
    invoke-direct/range {v0 .. v14}, Lo/ReportManager;->onMessageChannelReady(Ljava/lang/Object;[BIIIIIIJIJLo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto :goto_13

    :cond_11
    move-wide/from16 v20, v0

    move/from16 v25, v2

    move/from16 p3, v5

    move v15, v7

    move/from16 v17, v8

    move-object/from16 v18, v9

    const/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v0, 0x32

    move/from16 v9, v25

    if-ne v9, v0, :cond_13

    move/from16 v7, p3

    if-ne v7, v10, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    .line 54275
    invoke-direct/range {v0 .. v8}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIIJLo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_15

    goto :goto_13

    :cond_12
    :goto_12
    move v2, v15

    goto :goto_14

    :cond_13
    move/from16 v7, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v3

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move-wide/from16 v10, v20

    move/from16 v12, v17

    move-object/from16 v13, p5

    .line 54283
    invoke-direct/range {v0 .. v13}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIIIIIIJILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_15

    :goto_13
    move v2, v0

    .line 54338
    :goto_14
    move-object/from16 v0, p1

    check-cast v0, Lo/getEventAppExecutionSize;

    iget-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 54339
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v3

    if-ne v1, v3, :cond_14

    .line 54340
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v1

    .line 54341
    iput-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_14
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 54301
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v17

    move-object/from16 v9, v18

    :goto_15
    move/from16 v1, v19

    :goto_16
    const/4 v8, -0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_16
    move v4, v13

    if-ne v0, v4, :cond_17

    return-void

    .line 54305
    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 5396
    invoke-virtual/range {v0 .. v6}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5507
    :goto_0
    iget v4, p0, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_13

    .line 5508
    iget-object v4, p0, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v4, v4, v2

    .line 54367
    iget-object v6, p0, Lo/ReportManager;->onPostMessage:[I

    aget v7, v6, v4

    add-int/lit8 v8, v4, 0x1

    .line 54368
    aget v8, v6, v8

    .line 5515
    iget-boolean v9, p0, Lo/ReportManager;->newSession:Z

    const v10, 0xfffff

    if-nez v9, :cond_0

    add-int/lit8 v9, v4, 0x2

    .line 5516
    aget v6, v6, v9

    and-int v9, v6, v10

    ushr-int/lit8 v6, v6, 0x14

    shl-int v6, v5, v6

    if-eq v9, v1, :cond_1

    .line 5521
    sget-object v1, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    int-to-long v11, v9

    invoke-virtual {v1, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v9

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v8

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    .line 54370
    iget-boolean v9, p0, Lo/ReportManager;->newSession:Z

    if-eqz v9, :cond_3

    .line 54371
    invoke-direct {p0, p1, v4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v9

    goto :goto_3

    :cond_3
    and-int v9, v3, v6

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_5

    return v0

    :cond_5
    const/high16 v9, 0xff00000

    and-int/2addr v9, v8

    ushr-int/lit8 v9, v9, 0x14

    const/16 v11, 0x9

    if-eq v9, v11, :cond_f

    const/16 v11, 0x11

    if-eq v9, v11, :cond_f

    const/16 v6, 0x1b

    if-eq v9, v6, :cond_c

    const/16 v6, 0x3c

    if-eq v9, v6, :cond_a

    const/16 v6, 0x44

    if-eq v9, v6, :cond_a

    const/16 v6, 0x31

    if-eq v9, v6, :cond_c

    const/16 v6, 0x32

    if-eq v9, v6, :cond_6

    goto/16 :goto_8

    .line 54402
    :cond_6
    iget-object v6, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    and-int v7, v8, v10

    int-to-long v7, v7

    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lo/WireFormat$FieldType;->onNavigationEvent(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 54403
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 54423
    iget-object v7, p0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v5

    aget-object v4, v7, v4

    .line 54407
    iget-object v7, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-interface {v7, v4}, Lo/WireFormat$FieldType;->onPostMessage(Ljava/lang/Object;)Lo/getTagWireType$extraCallback;

    move-result-object v4

    .line 54408
    iget-object v4, v4, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 54424
    iget-object v4, v4, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->requestPostMessageChannel:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 54408
    sget-object v7, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    if-ne v4, v7, :cond_9

    const/4 v4, 0x0

    .line 54413
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_8

    .line 54415
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v4

    .line 54417
    :cond_8
    invoke-interface {v4, v7}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v5, 0x0

    :cond_9
    if-nez v5, :cond_12

    return v0

    .line 54398
    :cond_a
    iget-object v6, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v9, v4, 0x2

    aget v6, v6, v9

    and-int/2addr v6, v10

    int-to-long v11, v6

    .line 54397
    invoke-static {p1, v11, v12}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v6

    if-ne v6, v7, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_12

    .line 5551
    invoke-direct {p0, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    and-int v5, v8, v10

    int-to-long v5, v5

    .line 54399
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 54400
    invoke-interface {v4, v5}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    return v0

    :cond_c
    and-int v6, v8, v10

    int-to-long v6, v6

    .line 54382
    invoke-static {p1, v6, v7}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 54383
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 54387
    invoke-direct {p0, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    const/4 v7, 0x0

    .line 54388
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 54389
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 54390
    invoke-interface {v4, v8}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-nez v5, :cond_12

    return v0

    .line 54375
    :cond_f
    iget-boolean v7, p0, Lo/ReportManager;->newSession:Z

    if-eqz v7, :cond_10

    .line 54376
    invoke-direct {p0, p1, v4}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    goto :goto_7

    :cond_10
    and-int/2addr v6, v3

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_12

    .line 5538
    invoke-direct {p0, v4}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v4

    and-int v5, v8, v10

    int-to-long v5, v5

    .line 54379
    invoke-static {p1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 54380
    invoke-interface {v4, v5}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    return v0

    :cond_12
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5565
    :cond_13
    iget-boolean v1, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_14

    .line 5566
    iget-object v1, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v1, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    invoke-virtual {p1}, Lo/getBinaryImageSize;->onPostMessage()Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    :cond_14
    return v5
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1409
    iget-boolean v2, v0, Lo/ReportManager;->newSession:Z

    const/high16 v3, 0xff00000

    const v4, 0xfffff

    const/4 v5, 0x1

    if-eqz v2, :cond_25

    .line 51039
    sget-object v2, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 51041
    :goto_0
    iget-object v9, v0, Lo/ReportManager;->onPostMessage:[I

    array-length v10, v9

    if-ge v7, v10, :cond_24

    add-int/lit8 v10, v7, 0x1

    .line 51568
    aget v10, v9, v10

    and-int v11, v10, v3

    ushr-int/lit8 v11, v11, 0x14

    .line 51570
    aget v9, v9, v7

    and-int/2addr v10, v4

    int-to-long v12, v10

    .line 51047
    sget-object v10, Lo/getSessionEventSize;->onNavigationEvent:Lo/getSessionEventSize;

    .line 51572
    iget v10, v10, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    if-lt v11, v10, :cond_0

    .line 51048
    sget-object v10, Lo/getSessionEventSize;->onMessageChannelReady:Lo/getSessionEventSize;

    .line 51573
    iget v10, v10, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    if-gt v11, v10, :cond_0

    .line 51049
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v7, 0x2

    aget v10, v10, v14

    and-int/2addr v10, v4

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_16

    .line 51653
    :pswitch_0
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51652
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_23

    .line 51556
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/WireFormat$FieldType$2;

    .line 51557
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 51554
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v9

    goto/16 :goto_15

    .line 51649
    :pswitch_1
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51648
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_23

    .line 51650
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 51548
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(IJ)I

    move-result v9

    goto/16 :goto_15

    .line 51645
    :pswitch_2
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51644
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_23

    .line 51646
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 51543
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(II)I

    move-result v9

    goto/16 :goto_15

    .line 51642
    :pswitch_3
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51641
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_23

    .line 51538
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(I)I

    move-result v9

    goto/16 :goto_15

    .line 51639
    :pswitch_4
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51638
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_23

    .line 51533
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(I)I

    move-result v9

    goto/16 :goto_15

    .line 51635
    :pswitch_5
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51634
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_6

    const/4 v10, 0x1

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_23

    .line 51636
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 51528
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onTransact(II)I

    move-result v9

    goto/16 :goto_15

    .line 51631
    :pswitch_6
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51630
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_7

    const/4 v10, 0x1

    goto :goto_8

    :cond_7
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_23

    .line 51632
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 51523
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(II)I

    move-result v9

    goto/16 :goto_15

    .line 51628
    :pswitch_7
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51627
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_8

    const/4 v10, 0x1

    goto :goto_9

    :cond_8
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_23

    .line 51518
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/SessionProtobufHelper;

    .line 51517
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v9

    goto/16 :goto_15

    .line 51625
    :pswitch_8
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51624
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_9

    const/4 v10, 0x1

    goto :goto_a

    :cond_9
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_23

    .line 51510
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 51511
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/lang/Object;Lo/CreateReportRequest;)I

    move-result v9

    goto/16 :goto_15

    .line 51622
    :pswitch_9
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51621
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_23

    .line 51500
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 51501
    instance-of v11, v10, Lo/SessionProtobufHelper;

    if-eqz v11, :cond_b

    .line 51502
    check-cast v10, Lo/SessionProtobufHelper;

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v9

    goto/16 :goto_15

    .line 51504
    :cond_b
    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v9

    goto/16 :goto_15

    .line 51619
    :pswitch_a
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51618
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_c

    const/4 v10, 0x1

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    :goto_c
    if-eqz v10, :cond_23

    .line 51495
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsService(I)I

    move-result v9

    goto/16 :goto_15

    .line 51616
    :pswitch_b
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51615
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_d

    const/4 v10, 0x1

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    :goto_d
    if-eqz v10, :cond_23

    .line 51490
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result v9

    goto/16 :goto_15

    .line 51613
    :pswitch_c
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51612
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_e

    const/4 v10, 0x1

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    if-eqz v10, :cond_23

    .line 51485
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result v9

    goto/16 :goto_15

    .line 51609
    :pswitch_d
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51608
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_f

    const/4 v10, 0x1

    goto :goto_f

    :cond_f
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_23

    .line 51610
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 51480
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(II)I

    move-result v9

    goto/16 :goto_15

    .line 51605
    :pswitch_e
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51604
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_10

    const/4 v10, 0x1

    goto :goto_10

    :cond_10
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_23

    .line 51606
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 51475
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(IJ)I

    move-result v9

    goto/16 :goto_15

    .line 51601
    :pswitch_f
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51600
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_11

    const/4 v10, 0x1

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_23

    .line 51602
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 51470
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(IJ)I

    move-result v9

    goto/16 :goto_15

    .line 51598
    :pswitch_10
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51597
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_12

    const/4 v10, 0x1

    goto :goto_12

    :cond_12
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_23

    .line 51465
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->asBinder(I)I

    move-result v9

    goto/16 :goto_15

    .line 51595
    :pswitch_11
    iget-object v10, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    and-int/2addr v10, v4

    int-to-long v10, v10

    .line 51594
    invoke-static {v1, v10, v11}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    if-ne v10, v9, :cond_13

    const/4 v10, 0x1

    goto :goto_13

    :cond_13
    const/4 v10, 0x0

    :goto_13
    if-eqz v10, :cond_23

    .line 51460
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->onTransact(I)I

    move-result v9

    goto/16 :goto_15

    .line 51454
    :pswitch_12
    iget-object v10, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 51456
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 51592
    iget-object v12, v0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v13, v7, 0x3

    shl-int/2addr v13, v5

    aget-object v12, v12, v13

    .line 51455
    invoke-interface {v10, v9, v11, v12}, Lo/WireFormat$FieldType;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto/16 :goto_15

    .line 51591
    :pswitch_13
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51450
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 51449
    invoke-static {v9, v10, v11}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/CreateReportRequest;)I

    move-result v9

    goto/16 :goto_15

    .line 51435
    :pswitch_14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51434
    invoke-static {v11}, Lo/NativeSessionReport;->onPostMessage(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51437
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_14

    int-to-long v12, v10

    .line 51438
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51441
    :cond_14
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51442
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51419
    :pswitch_15
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51418
    invoke-static {v11}, Lo/NativeSessionReport;->asBinder(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51421
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_15

    int-to-long v12, v10

    .line 51422
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51425
    :cond_15
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51426
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51403
    :pswitch_16
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51402
    invoke-static {v11}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51405
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_16

    int-to-long v12, v10

    .line 51406
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51409
    :cond_16
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51410
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51387
    :pswitch_17
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51386
    invoke-static {v11}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51389
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_17

    int-to-long v12, v10

    .line 51390
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51393
    :cond_17
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51394
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51371
    :pswitch_18
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51370
    invoke-static {v11}, Lo/NativeSessionReport;->onMessageChannelReady(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51373
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_18

    int-to-long v12, v10

    .line 51374
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51377
    :cond_18
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51378
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51355
    :pswitch_19
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51354
    invoke-static {v11}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51357
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_19

    int-to-long v12, v10

    .line 51358
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51361
    :cond_19
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51362
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51339
    :pswitch_1a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51338
    invoke-static {v11}, Lo/NativeSessionReport;->asInterface(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51341
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1a

    int-to-long v12, v10

    .line 51342
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51345
    :cond_1a
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51346
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51323
    :pswitch_1b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51322
    invoke-static {v11}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51325
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1b

    int-to-long v12, v10

    .line 51326
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51329
    :cond_1b
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51330
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51307
    :pswitch_1c
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51306
    invoke-static {v11}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51309
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1c

    int-to-long v12, v10

    .line 51310
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51313
    :cond_1c
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51314
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51291
    :pswitch_1d
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51290
    invoke-static {v11}, Lo/NativeSessionReport;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51293
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1d

    int-to-long v12, v10

    .line 51294
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51297
    :cond_1d
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51298
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto/16 :goto_14

    .line 51275
    :pswitch_1e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51274
    invoke-static {v11}, Lo/NativeSessionReport;->onNavigationEvent(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51277
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1e

    int-to-long v12, v10

    .line 51278
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51281
    :cond_1e
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51282
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto :goto_14

    .line 51259
    :pswitch_1f
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51258
    invoke-static {v11}, Lo/NativeSessionReport;->extraCallback(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51261
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_1f

    int-to-long v12, v10

    .line 51262
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51265
    :cond_1f
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51266
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto :goto_14

    .line 51243
    :pswitch_20
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51242
    invoke-static {v11}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51245
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_20

    int-to-long v12, v10

    .line 51246
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51249
    :cond_20
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51250
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    goto :goto_14

    .line 51227
    :pswitch_21
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 51226
    invoke-static {v11}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_23

    .line 51229
    iget-boolean v12, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v12, :cond_21

    int-to-long v12, v10

    .line 51230
    invoke-virtual {v2, v1, v12, v13, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51233
    :cond_21
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v9

    .line 51234
    invoke-static {v11}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v10

    :goto_14
    add-int/2addr v9, v10

    add-int/2addr v9, v11

    goto/16 :goto_15

    .line 51590
    :pswitch_22
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51221
    invoke-static {v9, v10}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51589
    :pswitch_23
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51216
    invoke-static {v9, v10}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51588
    :pswitch_24
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51212
    invoke-static {v9, v10}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51587
    :pswitch_25
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51209
    invoke-static {v9, v10}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51586
    :pswitch_26
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51205
    invoke-static {v9, v10}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51585
    :pswitch_27
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51200
    invoke-static {v9, v10}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51584
    :pswitch_28
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51195
    invoke-static {v9, v10}, Lo/NativeSessionReport;->newSession(ILjava/util/List;)I

    move-result v9

    goto/16 :goto_15

    .line 51583
    :pswitch_29
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51191
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 51190
    invoke-static {v9, v10, v11}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/CreateReportRequest;)I

    move-result v9

    goto :goto_15

    .line 51582
    :pswitch_2a
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51186
    invoke-static {v9, v10}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51581
    :pswitch_2b
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51183
    invoke-static {v9, v10}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51580
    :pswitch_2c
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51180
    invoke-static {v9, v10}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51579
    :pswitch_2d
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51177
    invoke-static {v9, v10}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51578
    :pswitch_2e
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51173
    invoke-static {v9, v10}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51577
    :pswitch_2f
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51169
    invoke-static {v9, v10}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51576
    :pswitch_30
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51165
    invoke-static {v9, v10}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51575
    :pswitch_31
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51161
    invoke-static {v9, v10}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v9

    goto :goto_15

    .line 51574
    :pswitch_32
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 51158
    invoke-static {v9, v10}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v9

    :goto_15
    add-int/2addr v8, v9

    goto/16 :goto_16

    .line 51149
    :pswitch_33
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51153
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/WireFormat$FieldType$2;

    .line 51154
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    .line 51151
    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v9

    goto :goto_15

    .line 51143
    :pswitch_34
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51145
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(IJ)I

    move-result v9

    goto :goto_15

    .line 51138
    :pswitch_35
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51139
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(II)I

    move-result v9

    goto :goto_15

    .line 51133
    :pswitch_36
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51134
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(I)I

    move-result v9

    goto :goto_15

    .line 51128
    :pswitch_37
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51129
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(I)I

    move-result v9

    goto :goto_15

    .line 51123
    :pswitch_38
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51124
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onTransact(II)I

    move-result v9

    goto :goto_15

    .line 51118
    :pswitch_39
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51119
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(II)I

    move-result v9

    goto :goto_15

    .line 51112
    :pswitch_3a
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51113
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/SessionProtobufHelper;

    .line 51114
    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v9

    goto :goto_15

    .line 51106
    :pswitch_3b
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51107
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 51108
    invoke-direct {v0, v7}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/lang/Object;Lo/CreateReportRequest;)I

    move-result v9

    goto/16 :goto_15

    .line 51096
    :pswitch_3c
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51097
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .line 51098
    instance-of v11, v10, Lo/SessionProtobufHelper;

    if-eqz v11, :cond_22

    .line 51099
    check-cast v10, Lo/SessionProtobufHelper;

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v9

    goto/16 :goto_15

    .line 51101
    :cond_22
    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v9

    goto/16 :goto_15

    .line 51091
    :pswitch_3d
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51092
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsService(I)I

    move-result v9

    goto/16 :goto_15

    .line 51086
    :pswitch_3e
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51087
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result v9

    goto/16 :goto_15

    .line 51081
    :pswitch_3f
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51082
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result v9

    goto/16 :goto_15

    .line 51076
    :pswitch_40
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51077
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(II)I

    move-result v9

    goto/16 :goto_15

    .line 51070
    :pswitch_41
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51072
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(IJ)I

    move-result v9

    goto/16 :goto_15

    .line 51065
    :pswitch_42
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51066
    invoke-static {v1, v12, v13}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(IJ)I

    move-result v9

    goto/16 :goto_15

    .line 51060
    :pswitch_43
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51061
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->asBinder(I)I

    move-result v9

    goto/16 :goto_15

    .line 51055
    :pswitch_44
    invoke-direct {v0, v1, v7}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 51056
    invoke-static {v9}, Lcom/google/protobuf/CodedOutputStream;->onTransact(I)I

    move-result v9

    goto/16 :goto_15

    :cond_23
    :goto_16
    add-int/lit8 v7, v7, 0x3

    goto/16 :goto_0

    .line 51565
    :cond_24
    iget-object v2, v0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 51654
    invoke-virtual {v2, v1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51655
    invoke-virtual {v2, v1}, Lo/SessionReport;->onRelationshipValidationResult(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v8, v1

    return v8

    .line 51658
    :cond_25
    sget-object v2, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 51661
    :goto_17
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    array-length v12, v11

    if-ge v8, v12, :cond_47

    add-int/lit8 v12, v8, 0x1

    .line 52221
    aget v12, v11, v12

    .line 52222
    aget v13, v11, v8

    and-int v14, v12, v3

    ushr-int/lit8 v14, v14, 0x14

    const/16 v15, 0x11

    if-gt v14, v15, :cond_26

    add-int/lit8 v15, v8, 0x2

    .line 51669
    aget v11, v11, v15

    and-int v15, v11, v4

    ushr-int/lit8 v16, v11, 0x14

    shl-int v16, v5, v16

    if-eq v15, v7, :cond_28

    int-to-long v6, v15

    .line 51674
    invoke-virtual {v2, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v7, v15

    goto :goto_19

    .line 51676
    :cond_26
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_27

    sget-object v6, Lo/getSessionEventSize;->onNavigationEvent:Lo/getSessionEventSize;

    .line 52224
    iget v6, v6, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    if-lt v14, v6, :cond_27

    .line 51677
    sget-object v6, Lo/getSessionEventSize;->onMessageChannelReady:Lo/getSessionEventSize;

    .line 52225
    iget v6, v6, Lo/getSessionEventSize;->ICustomTabsCallback$Stub:I

    if-gt v14, v6, :cond_27

    .line 51679
    iget-object v6, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v11, v8, 0x2

    aget v6, v6, v11

    and-int v11, v6, v4

    goto :goto_18

    :cond_27
    const/4 v11, 0x0

    :goto_18
    const/16 v16, 0x0

    :cond_28
    :goto_19
    and-int v6, v12, v4

    int-to-long v5, v6

    packed-switch v14, :pswitch_data_1

    goto :goto_1b

    .line 52201
    :pswitch_45
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 52205
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/WireFormat$FieldType$2;

    .line 52206
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    .line 52203
    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v5

    goto :goto_1a

    .line 52196
    :pswitch_46
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 52197
    invoke-static {v1, v5, v6}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(IJ)I

    move-result v5

    goto :goto_1a

    .line 52191
    :pswitch_47
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 52192
    invoke-static {v1, v5, v6}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(II)I

    move-result v5

    goto :goto_1a

    .line 52186
    :pswitch_48
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 52187
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(I)I

    move-result v5

    goto :goto_1a

    .line 52181
    :pswitch_49
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 52182
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(I)I

    move-result v5

    goto :goto_1a

    .line 52176
    :pswitch_4a
    invoke-direct {v0, v1, v13, v8}, Lo/ReportManager;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 52177
    invoke-static {v1, v5, v6}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onTransact(II)I

    move-result v5

    :goto_1a
    add-int/2addr v9, v5

    :cond_29
    :goto_1b
    const/4 v12, 0x1

    goto/16 :goto_2a

    .line 52266
    :pswitch_4b
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52265
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_2a

    const/4 v11, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v11, 0x0

    :goto_1c
    if-eqz v11, :cond_29

    .line 52267
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 52172
    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(II)I

    move-result v5

    goto :goto_1a

    .line 52263
    :pswitch_4c
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52262
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_2b

    const/4 v11, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v11, 0x0

    :goto_1d
    if-eqz v11, :cond_29

    .line 52167
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/SessionProtobufHelper;

    .line 52166
    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v5

    goto :goto_1a

    .line 52260
    :pswitch_4d
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52259
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_2c

    const/4 v11, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v11, 0x0

    :goto_1e
    if-eqz v11, :cond_29

    .line 52159
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 52160
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    invoke-static {v13, v5, v6}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/lang/Object;Lo/CreateReportRequest;)I

    move-result v5

    goto :goto_1a

    .line 52257
    :pswitch_4e
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52256
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_2d

    const/4 v11, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v11, 0x0

    :goto_1f
    if-eqz v11, :cond_29

    .line 52149
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 52150
    instance-of v6, v5, Lo/SessionProtobufHelper;

    if-eqz v6, :cond_2e

    .line 52151
    check-cast v5, Lo/SessionProtobufHelper;

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v5

    goto/16 :goto_1a

    .line 52153
    :cond_2e
    check-cast v5, Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_1a

    .line 52254
    :pswitch_4f
    iget-object v5, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v6, v8, 0x2

    aget v5, v5, v6

    and-int/2addr v5, v4

    int-to-long v5, v5

    .line 52253
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v13, :cond_2f

    const/4 v5, 0x1

    goto :goto_20

    :cond_2f
    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_29

    .line 52144
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsService(I)I

    move-result v5

    goto/16 :goto_1a

    .line 52251
    :pswitch_50
    iget-object v5, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v6, v8, 0x2

    aget v5, v5, v6

    and-int/2addr v5, v4

    int-to-long v5, v5

    .line 52250
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v13, :cond_30

    const/4 v5, 0x1

    goto :goto_21

    :cond_30
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_29

    .line 52139
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result v5

    goto/16 :goto_1a

    .line 52248
    :pswitch_51
    iget-object v5, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v6, v8, 0x2

    aget v5, v5, v6

    and-int/2addr v5, v4

    int-to-long v5, v5

    .line 52247
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v13, :cond_31

    const/4 v5, 0x1

    goto :goto_22

    :cond_31
    const/4 v5, 0x0

    :goto_22
    if-eqz v5, :cond_29

    .line 52134
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result v5

    goto/16 :goto_1a

    .line 52244
    :pswitch_52
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52243
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_32

    const/4 v11, 0x1

    goto :goto_23

    :cond_32
    const/4 v11, 0x0

    :goto_23
    if-eqz v11, :cond_29

    .line 52245
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 52129
    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(II)I

    move-result v5

    goto/16 :goto_1a

    .line 52240
    :pswitch_53
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52239
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_33

    const/4 v11, 0x1

    goto :goto_24

    :cond_33
    const/4 v11, 0x0

    :goto_24
    if-eqz v11, :cond_29

    .line 52241
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 52124
    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(IJ)I

    move-result v5

    goto/16 :goto_1a

    .line 52236
    :pswitch_54
    iget-object v11, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v14, v8, 0x2

    aget v11, v11, v14

    and-int/2addr v11, v4

    int-to-long v14, v11

    .line 52235
    invoke-static {v1, v14, v15}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v11

    if-ne v11, v13, :cond_34

    const/4 v11, 0x1

    goto :goto_25

    :cond_34
    const/4 v11, 0x0

    :goto_25
    if-eqz v11, :cond_29

    .line 52237
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 52119
    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(IJ)I

    move-result v5

    goto/16 :goto_1a

    .line 52233
    :pswitch_55
    iget-object v5, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v6, v8, 0x2

    aget v5, v5, v6

    and-int/2addr v5, v4

    int-to-long v5, v5

    .line 52232
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v13, :cond_35

    const/4 v5, 0x1

    goto :goto_26

    :cond_35
    const/4 v5, 0x0

    :goto_26
    if-eqz v5, :cond_29

    .line 52114
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->asBinder(I)I

    move-result v5

    goto/16 :goto_1a

    .line 52230
    :pswitch_56
    iget-object v5, v0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v6, v8, 0x2

    aget v5, v5, v6

    and-int/2addr v5, v4

    int-to-long v5, v5

    .line 52229
    invoke-static {v1, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-ne v5, v13, :cond_36

    const/4 v5, 0x1

    goto :goto_27

    :cond_36
    const/4 v5, 0x0

    :goto_27
    if-eqz v5, :cond_29

    .line 52109
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->onTransact(I)I

    move-result v5

    goto/16 :goto_1a

    .line 52103
    :pswitch_57
    iget-object v11, v0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    .line 52105
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 52227
    iget-object v6, v0, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v14, v8, 0x3

    const/4 v12, 0x1

    shl-int/2addr v14, v12

    aget-object v6, v6, v14

    .line 52104
    invoke-interface {v11, v13, v5, v6}, Lo/WireFormat$FieldType;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_58
    const/4 v12, 0x1

    .line 52098
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52099
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    .line 52096
    invoke-static {v13, v5, v6}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;Lo/CreateReportRequest;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_59
    const/4 v12, 0x1

    .line 52082
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52081
    invoke-static {v5}, Lo/NativeSessionReport;->onPostMessage(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52084
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_37

    int-to-long v14, v11

    .line 52085
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52088
    :cond_37
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52089
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5a
    const/4 v12, 0x1

    .line 52066
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52065
    invoke-static {v5}, Lo/NativeSessionReport;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52068
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_38

    int-to-long v14, v11

    .line 52069
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52072
    :cond_38
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52073
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5b
    const/4 v12, 0x1

    .line 52050
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52049
    invoke-static {v5}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52052
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_39

    int-to-long v14, v11

    .line 52053
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52056
    :cond_39
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52057
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5c
    const/4 v12, 0x1

    .line 52034
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52033
    invoke-static {v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52036
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3a

    int-to-long v14, v11

    .line 52037
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52040
    :cond_3a
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52041
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5d
    const/4 v12, 0x1

    .line 52018
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52017
    invoke-static {v5}, Lo/NativeSessionReport;->onMessageChannelReady(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52020
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3b

    int-to-long v14, v11

    .line 52021
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52024
    :cond_3b
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52025
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5e
    const/4 v12, 0x1

    .line 52002
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 52001
    invoke-static {v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 52004
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3c

    int-to-long v14, v11

    .line 52005
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 52008
    :cond_3c
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 52009
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_5f
    const/4 v12, 0x1

    .line 51986
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51985
    invoke-static {v5}, Lo/NativeSessionReport;->asInterface(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51988
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3d

    int-to-long v14, v11

    .line 51989
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51992
    :cond_3d
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51993
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_60
    const/4 v12, 0x1

    .line 51970
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51969
    invoke-static {v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51972
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3e

    int-to-long v14, v11

    .line 51973
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51976
    :cond_3e
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51977
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_61
    const/4 v12, 0x1

    .line 51954
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51953
    invoke-static {v5}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51956
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_3f

    int-to-long v14, v11

    .line 51957
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51960
    :cond_3f
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51961
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_62
    const/4 v12, 0x1

    .line 51938
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51937
    invoke-static {v5}, Lo/NativeSessionReport;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51940
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_40

    int-to-long v14, v11

    .line 51941
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51944
    :cond_40
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51945
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto/16 :goto_28

    :pswitch_63
    const/4 v12, 0x1

    .line 51922
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51921
    invoke-static {v5}, Lo/NativeSessionReport;->onNavigationEvent(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51924
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_41

    int-to-long v14, v11

    .line 51925
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51928
    :cond_41
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51929
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto :goto_28

    :pswitch_64
    const/4 v12, 0x1

    .line 51906
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51905
    invoke-static {v5}, Lo/NativeSessionReport;->extraCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51908
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_42

    int-to-long v14, v11

    .line 51909
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51912
    :cond_42
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51913
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto :goto_28

    :pswitch_65
    const/4 v12, 0x1

    .line 51890
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51889
    invoke-static {v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51892
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_43

    int-to-long v14, v11

    .line 51893
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51896
    :cond_43
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51897
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    goto :goto_28

    :pswitch_66
    const/4 v12, 0x1

    .line 51874
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51873
    invoke-static {v5}, Lo/NativeSessionReport;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_46

    .line 51876
    iget-boolean v6, v0, Lo/ReportManager;->ICustomTabsService:Z

    if-eqz v6, :cond_44

    int-to-long v14, v11

    .line 51877
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 51880
    :cond_44
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v6

    .line 51881
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result v11

    :goto_28
    add-int/2addr v6, v11

    add-int/2addr v6, v5

    add-int/2addr v9, v6

    goto/16 :goto_2a

    :pswitch_67
    const/4 v12, 0x1

    .line 51868
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51867
    invoke-static {v13, v5}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_68
    const/4 v12, 0x1

    .line 51863
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51862
    invoke-static {v13, v5}, Lo/NativeSessionReport;->asInterface(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_69
    const/4 v12, 0x1

    .line 51858
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51857
    invoke-static {v13, v5}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_6a
    const/4 v12, 0x1

    .line 51853
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51852
    invoke-static {v13, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_6b
    const/4 v12, 0x1

    .line 51848
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51847
    invoke-static {v13, v5}, Lo/NativeSessionReport;->onPostMessage(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_6c
    const/4 v12, 0x1

    .line 51843
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51842
    invoke-static {v13, v5}, Lo/NativeSessionReport;->onTransact(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_6d
    const/4 v12, 0x1

    .line 51838
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51837
    invoke-static {v13, v5}, Lo/NativeSessionReport;->newSession(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_6e
    const/4 v12, 0x1

    .line 51833
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    .line 51832
    invoke-static {v13, v5, v6}, Lo/NativeSessionReport;->onMessageChannelReady(ILjava/util/List;Lo/CreateReportRequest;)I

    move-result v5

    goto :goto_29

    :pswitch_6f
    const/4 v12, 0x1

    .line 51828
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_70
    const/4 v12, 0x1

    .line 51824
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51823
    invoke-static {v13, v5}, Lo/NativeSessionReport;->onRelationshipValidationResult(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_71
    const/4 v12, 0x1

    .line 51819
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51818
    invoke-static {v13, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_72
    const/4 v12, 0x1

    .line 51814
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51813
    invoke-static {v13, v5}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_73
    const/4 v12, 0x1

    .line 51809
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51808
    invoke-static {v13, v5}, Lo/NativeSessionReport;->extraCallback(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_74
    const/4 v12, 0x1

    .line 51804
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51803
    invoke-static {v13, v5}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_75
    const/4 v12, 0x1

    .line 51799
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51798
    invoke-static {v13, v5}, Lo/NativeSessionReport;->onNavigationEvent(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_76
    const/4 v12, 0x1

    .line 51794
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51793
    invoke-static {v13, v5}, Lo/NativeSessionReport;->ICustomTabsCallback$Stub(ILjava/util/List;)I

    move-result v5

    goto :goto_29

    :pswitch_77
    const/4 v12, 0x1

    .line 51789
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 51788
    invoke-static {v13, v5}, Lo/NativeSessionReport;->asBinder(ILjava/util/List;)I

    move-result v5

    :goto_29
    add-int/2addr v9, v5

    goto/16 :goto_2a

    :pswitch_78
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51782
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/WireFormat$FieldType$2;

    .line 51783
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    .line 51780
    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(ILo/WireFormat$FieldType$2;Lo/CreateReportRequest;)I

    move-result v5

    goto :goto_29

    :pswitch_79
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51774
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(IJ)I

    move-result v5

    goto :goto_29

    :pswitch_7a
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51769
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(II)I

    move-result v5

    goto :goto_29

    :pswitch_7b
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51764
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult(I)I

    move-result v5

    goto :goto_29

    :pswitch_7c
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51759
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(I)I

    move-result v5

    goto :goto_29

    :pswitch_7d
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51754
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onTransact(II)I

    move-result v5

    goto :goto_29

    :pswitch_7e
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51749
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub(II)I

    move-result v5

    goto :goto_29

    :pswitch_7f
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51743
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/SessionProtobufHelper;

    .line 51744
    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v5

    goto :goto_29

    :pswitch_80
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51737
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 51738
    invoke-direct {v0, v8}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v6

    invoke-static {v13, v5, v6}, Lo/NativeSessionReport;->ICustomTabsCallback(ILjava/lang/Object;Lo/CreateReportRequest;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_81
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51727
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 51728
    instance-of v6, v5, Lo/SessionProtobufHelper;

    if-eqz v6, :cond_45

    .line 51729
    check-cast v5, Lo/SessionProtobufHelper;

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/SessionProtobufHelper;)I

    move-result v5

    goto/16 :goto_29

    .line 51731
    :cond_45
    check-cast v5, Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_29

    :pswitch_82
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51722
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsService(I)I

    move-result v5

    goto/16 :goto_29

    :pswitch_83
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51717
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(I)I

    move-result v5

    goto/16 :goto_29

    :pswitch_84
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51712
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->asInterface(I)I

    move-result v5

    goto/16 :goto_29

    :pswitch_85
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51707
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v13, v5}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(II)I

    move-result v5

    goto/16 :goto_29

    :pswitch_86
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51702
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(IJ)I

    move-result v5

    goto/16 :goto_29

    :pswitch_87
    const/4 v12, 0x1

    and-int v11, v10, v16

    if-eqz v11, :cond_46

    .line 51697
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(IJ)I

    move-result v5

    goto/16 :goto_29

    :pswitch_88
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51692
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->asBinder(I)I

    move-result v5

    goto/16 :goto_29

    :pswitch_89
    const/4 v12, 0x1

    and-int v5, v10, v16

    if-eqz v5, :cond_46

    .line 51687
    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->onTransact(I)I

    move-result v5

    goto/16 :goto_29

    :cond_46
    :goto_2a
    add-int/lit8 v8, v8, 0x3

    const/4 v5, 0x1

    goto/16 :goto_17

    .line 52214
    :cond_47
    iget-object v2, v0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 52268
    invoke-virtual {v2, v1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52269
    invoke-virtual {v2, v3}, Lo/SessionReport;->onRelationshipValidationResult(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v9, v2

    .line 52216
    iget-boolean v2, v0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_4a

    .line 52217
    iget-object v2, v0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v2, v1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 52271
    :goto_2b
    iget-object v2, v1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v2}, Lo/Report$Type;->onMessageChannelReady()I

    move-result v2

    if-ge v6, v2, :cond_48

    .line 52272
    iget-object v2, v1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v2, v6}, Lo/Report$Type;->ICustomTabsCallback(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 52273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)I

    move-result v2

    add-int v17, v17, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 52275
    :cond_48
    iget-object v1, v1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1}, Lo/Report$Type;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)I

    move-result v2

    add-int v17, v17, v2

    goto :goto_2c

    :cond_49
    add-int v9, v9, v17

    :cond_4a
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_16

    .line 35679
    iget-object v4, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v2, 0x1

    aget v5, v4, v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    const/high16 v9, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v5, v2, 0x2

    .line 50751
    aget v4, v4, v5

    and-int/2addr v4, v6

    int-to-long v4, v4

    .line 50749
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v6

    .line 50750
    invoke-static {p2, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v6, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_13

    .line 34929
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34928
    invoke-static {v4, v5}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_14

    .line 34908
    :pswitch_1
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34907
    invoke-static {v3, v4}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_15

    .line 34905
    :pswitch_2
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34904
    invoke-static {v3, v4}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_15

    .line 50747
    :pswitch_3
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_13

    .line 34870
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34869
    invoke-static {v4, v5}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_14

    .line 50746
    :pswitch_4
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_13

    .line 34866
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    goto/16 :goto_14

    .line 50745
    :pswitch_5
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_13

    .line 34863
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 50744
    :pswitch_6
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_13

    .line 34860
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    goto/16 :goto_14

    .line 49744
    :pswitch_7
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_13

    .line 34857
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 48744
    :pswitch_8
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_13

    .line 34854
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 47744
    :pswitch_9
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_13

    .line 34851
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 46744
    :pswitch_a
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_13

    .line 34848
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34847
    invoke-static {v4, v5}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_14

    .line 45744
    :pswitch_b
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_13

    .line 34844
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34843
    invoke-static {v4, v5}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_14

    .line 44744
    :pswitch_c
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_13

    .line 34840
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34839
    invoke-static {v4, v5}, Lo/NativeSessionReport;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_14

    .line 43744
    :pswitch_d
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_13

    .line 34836
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 42744
    :pswitch_e
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_13

    .line 34833
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 41744
    :pswitch_f
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_13

    .line 34830
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    goto/16 :goto_14

    .line 40744
    :pswitch_10
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_13

    .line 34827
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto/16 :goto_14

    .line 39744
    :pswitch_11
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_13

    .line 34824
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    goto :goto_14

    .line 38744
    :pswitch_12
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_13

    .line 34821
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    goto :goto_14

    .line 37744
    :pswitch_13
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_13

    .line 34817
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 34818
    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_14

    goto :goto_14

    .line 36744
    :pswitch_14
    invoke-direct {p0, p1, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v4

    invoke-direct {p0, p2, v2}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v5

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_13

    .line 34813
    invoke-static {p1, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 34814
    invoke-static {p2, v7, v8}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_14

    :cond_13
    :goto_14
    const/4 v3, 0x0

    :cond_14
    :goto_15
    if-nez v3, :cond_15

    return v1

    :cond_15
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 792
    :cond_16
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    iget-object v2, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    invoke-virtual {v2, p2}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 798
    :cond_17
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_18

    .line 799
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    .line 800
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p2}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p2

    .line 801
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_18
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_14

    .line 50752
    iget-object v4, p0, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v5, v2, 0x1

    aget v5, v4, v5

    .line 50753
    aget v6, v4, v2

    const v7, 0xfffff

    and-int v8, v5, v7

    int-to-long v8, v8

    const/high16 v10, 0xff00000

    and-int/2addr v5, v10

    ushr-int/lit8 v5, v5, 0x14

    const/16 v10, 0x25

    const/4 v11, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    add-int/lit8 v5, v2, 0x2

    .line 50823
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50822
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_13

    .line 1147
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    .line 1148
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_1
    add-int/lit8 v5, v2, 0x2

    .line 50819
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50818
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50820
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1142
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_2
    add-int/lit8 v5, v2, 0x2

    .line 50815
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50814
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50816
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_3
    add-int/lit8 v5, v2, 0x2

    .line 50811
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50810
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50812
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1132
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_4
    add-int/lit8 v5, v2, 0x2

    .line 50807
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50806
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50808
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_5
    add-int/lit8 v5, v2, 0x2

    .line 50803
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50802
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_5

    goto :goto_6

    :cond_5
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50804
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_6
    add-int/lit8 v5, v2, 0x2

    .line 50799
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50798
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_6

    goto :goto_7

    :cond_6
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50800
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_7
    add-int/lit8 v5, v2, 0x2

    .line 50796
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50795
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_7

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 1112
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_8
    add-int/lit8 v5, v2, 0x2

    .line 50793
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50792
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_8

    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_13

    .line 1106
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    .line 1107
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_9
    add-int/lit8 v5, v2, 0x2

    .line 50790
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50789
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_9

    goto :goto_a

    :cond_9
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 1101
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_a
    add-int/lit8 v5, v2, 0x2

    .line 50786
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50785
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_a

    goto :goto_b

    :cond_a
    const/4 v11, 0x0

    :goto_b
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50787
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1095
    invoke-static {v4}, Lo/getEventLogSize;->extraCallback(Z)I

    move-result v4

    goto/16 :goto_14

    :pswitch_b
    add-int/lit8 v5, v2, 0x2

    .line 50782
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50781
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_b

    goto :goto_c

    :cond_b
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50783
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_c
    add-int/lit8 v5, v2, 0x2

    .line 50778
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50777
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_c

    goto :goto_d

    :cond_c
    const/4 v11, 0x0

    :goto_d
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50779
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1085
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_d
    add-int/lit8 v5, v2, 0x2

    .line 50774
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50773
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_d

    goto :goto_e

    :cond_d
    const/4 v11, 0x0

    :goto_e
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50775
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto/16 :goto_14

    :pswitch_e
    add-int/lit8 v5, v2, 0x2

    .line 50770
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50769
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_e

    goto :goto_f

    :cond_e
    const/4 v11, 0x0

    :goto_f
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50771
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1075
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_f
    add-int/lit8 v5, v2, 0x2

    .line 50766
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50765
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_f

    goto :goto_10

    :cond_f
    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50767
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1070
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_10
    add-int/lit8 v5, v2, 0x2

    .line 50762
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50761
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_10

    goto :goto_11

    :cond_10
    const/4 v11, 0x0

    :goto_11
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50763
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 1065
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_14

    :pswitch_11
    add-int/lit8 v5, v2, 0x2

    .line 50758
    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-long v4, v4

    .line 50757
    invoke-static {p1, v4, v5}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v4, v6, :cond_11

    goto :goto_12

    :cond_11
    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_13

    mul-int/lit8 v3, v3, 0x35

    .line 50759
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 1060
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 1054
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 1051
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    .line 1012
    :pswitch_14
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1014
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_13

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 1006
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 1003
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 1000
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 997
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 994
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 991
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_14

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 988
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_14

    .line 980
    :pswitch_1c
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 982
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_12
    :goto_13
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto :goto_15

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 975
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_14

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 972
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v4}, Lo/getEventLogSize;->extraCallback(Z)I

    move-result v4

    goto :goto_14

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 969
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_14

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 966
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto :goto_14

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 963
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_14

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 960
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto :goto_14

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 957
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    goto :goto_14

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 954
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_14

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 951
    invoke-static {p1, v8, v9}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 950
    invoke-static {v4, v5}, Lo/getEventLogSize;->onPostMessage(J)I

    move-result v4

    :goto_14
    add-int/2addr v3, v4

    :cond_13
    :goto_15
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_14
    mul-int/lit8 v3, v3, 0x35

    .line 1157
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    invoke-virtual {v0, p1}, Lo/SessionReport;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 1159
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_15

    mul-int/lit8 v3, v3, 0x35

    .line 1160
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-virtual {v0, p1}, Lo/getSessionAppSize;->onPostMessage(Ljava/lang/Object;)Lo/getBinaryImageSize;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v3, p1

    :cond_15
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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
.end method

.method final onNavigationEvent(Ljava/lang/Object;[BIIILo/writeRawLittleEndian64$onPostMessage;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lo/writeRawLittleEndian64$onPostMessage;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 4869
    sget-object v10, Lo/ReportManager;->onMessageChannelReady:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v0, v13, :cond_23

    add-int/lit8 v3, v0, 0x1

    .line 4876
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 4878
    invoke-static {v0, v12, v3, v9}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 4879
    iget v3, v9, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_1

    .line 4884
    div-int/2addr v2, v8

    .line 54054
    iget v1, v15, Lo/ReportManager;->onRelationshipValidationResult:I

    if-lt v0, v1, :cond_3

    iget v1, v15, Lo/ReportManager;->asBinder:I

    if-gt v0, v1, :cond_3

    .line 54055
    invoke-direct {v15, v0, v2}, Lo/ReportManager;->ICustomTabsCallback(II)I

    move-result v1

    goto :goto_2

    .line 54058
    :cond_1
    iget v1, v15, Lo/ReportManager;->onRelationshipValidationResult:I

    if-lt v0, v1, :cond_2

    iget v1, v15, Lo/ReportManager;->asBinder:I

    if-gt v0, v1, :cond_2

    const/4 v2, 0x0

    .line 54059
    invoke-direct {v15, v0, v2}, Lo/ReportManager;->ICustomTabsCallback(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    const/4 v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    move/from16 v18, v0

    move v2, v3

    move v9, v4

    move/from16 v16, v5

    move/from16 v22, v6

    move-object/from16 v25, v10

    move v8, v11

    const/16 v17, 0x0

    const/16 v26, 0x0

    goto/16 :goto_14

    .line 4893
    :cond_4
    iget-object v2, v15, Lo/ReportManager;->onPostMessage:[I

    add-int/lit8 v18, v1, 0x1

    aget v8, v2, v18

    const/high16 v18, 0xff00000

    and-int v18, v8, v18

    ushr-int/lit8 v11, v18, 0x14

    const v18, 0xfffff

    move/from16 v19, v4

    and-int v4, v8, v18

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v8

    if-gt v11, v4, :cond_15

    add-int/lit8 v4, v1, 0x2

    .line 4898
    aget v2, v2, v4

    ushr-int/lit8 v4, v2, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v4

    and-int v2, v2, v18

    const/4 v4, -0x1

    if-eq v2, v6, :cond_6

    if-eq v6, v4, :cond_5

    int-to-long v8, v6

    .line 4905
    invoke-virtual {v10, v14, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v2

    .line 4908
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v6

    :goto_3
    move v6, v5

    const/4 v2, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    goto/16 :goto_f

    :pswitch_0
    const/4 v5, 0x3

    if-ne v7, v5, :cond_8

    shl-int/lit8 v2, v0, 0x3

    or-int/lit8 v5, v2, 0x4

    .line 5048
    invoke-direct {v15, v1}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v2

    move/from16 v18, v0

    move-object v0, v2

    move v9, v1

    move-object/from16 v1, p2

    const/16 v17, 0x0

    move v2, v3

    move/from16 v3, p4

    move/from16 v11, v19

    const/16 v19, -0x1

    move v4, v5

    move-object/from16 v5, p6

    .line 5047
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_7

    move-object/from16 v4, p6

    .line 5050
    iget-object v1, v4, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_7
    move-object/from16 v4, p6

    .line 5056
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    .line 5055
    invoke-static {v1, v2}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5052
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v5, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v6, v8

    move v2, v9

    move v3, v11

    move/from16 v1, v18

    move/from16 v11, p5

    move-object v9, v4

    goto/16 :goto_0

    :cond_8
    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_f

    :pswitch_1
    move-object/from16 v4, p6

    move/from16 v18, v0

    move v9, v1

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    if-nez v7, :cond_9

    move-wide v1, v12

    move-object/from16 v12, p2

    .line 5035
    invoke-static {v12, v3, v4}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v7

    move-wide/from16 v20, v1

    .line 5036
    iget-wide v0, v4, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    .line 5037
    invoke-static {v0, v1}, Lo/writeSessionAppClsId;->onPostMessage(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move-object v13, v4

    move-wide/from16 v4, v23

    .line 5036
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_c

    :cond_9
    move-object/from16 v12, p2

    move-object v13, v4

    goto/16 :goto_f

    :pswitch_2
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_14

    add-int/lit8 v0, v3, 0x1

    .line 54085
    aget-byte v1, v12, v3

    if-ltz v1, :cond_a

    .line 54087
    iput v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_5

    .line 54090
    :cond_a
    invoke-static {v1, v12, v0, v13}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 5027
    :goto_5
    iget v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 5028
    invoke-static {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady(I)I

    move-result v1

    .line 5027
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_3
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_14

    add-int/lit8 v0, v3, 0x1

    .line 54072
    aget-byte v1, v12, v3

    if-ltz v1, :cond_b

    .line 54074
    iput v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_6

    .line 54077
    :cond_b
    invoke-static {v1, v12, v0, v13}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 5012
    :goto_6
    iget v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    .line 54078
    iget-object v2, v15, Lo/ReportManager;->asInterface:[Ljava/lang/Object;

    div-int/lit8 v3, v9, 0x3

    const/4 v7, 0x1

    shl-int/2addr v3, v7

    add-int/2addr v3, v7

    aget-object v2, v2, v3

    check-cast v2, Lo/getEventLogSize$extraCallback;

    if-eqz v2, :cond_e

    .line 5014
    invoke-interface {v2}, Lo/getEventLogSize$extraCallback;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    .line 54079
    :cond_c
    move-object v2, v14

    check-cast v2, Lo/getEventAppExecutionSize;

    iget-object v3, v2, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 54080
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v4

    if-ne v3, v4, :cond_d

    .line 54081
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v3

    .line 54082
    iput-object v3, v2, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_d
    int-to-long v1, v1

    .line 5019
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    move v5, v6

    goto/16 :goto_e

    .line 5015
    :cond_e
    :goto_7
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_4
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_14

    .line 5003
    invoke-static {v12, v3, v13}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 5004
    iget-object v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_5
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_10

    .line 4987
    invoke-direct {v15, v9}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v0

    move/from16 v1, p4

    .line 4986
    invoke-static {v0, v12, v3, v1, v13}, Lo/writeRawLittleEndian64;->onMessageChannelReady(Lo/CreateReportRequest;[BIILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    and-int v2, v6, v22

    if-nez v2, :cond_f

    .line 4989
    iget-object v2, v13, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 4995
    :cond_f
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v13, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    .line 4994
    invoke-static {v2, v3}, Lo/getEventLogSize;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4991
    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :cond_10
    move/from16 v1, p4

    goto/16 :goto_f

    :pswitch_6
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/4 v0, 0x2

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_14

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_11

    .line 4974
    invoke-static {v12, v3, v13}, Lo/writeRawLittleEndian64;->onMessageChannelReady([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    goto :goto_8

    .line 4976
    :cond_11
    invoke-static {v12, v3, v13}, Lo/writeRawLittleEndian64;->onPostMessage([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 4978
    :goto_8
    iget-object v2, v13, Lo/writeRawLittleEndian64$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    if-nez v7, :cond_14

    .line 4965
    invoke-static {v12, v3, v13}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 4966
    iget-wide v2, v13, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    const-wide/16 v20, 0x0

    cmp-long v7, v2, v20

    if-eqz v7, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    invoke-static {v14, v4, v5, v2}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    goto :goto_a

    :pswitch_8
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    if-ne v7, v2, :cond_14

    .line 4957
    invoke-static {v12, v3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    :goto_a
    or-int v5, v6, v22

    move v6, v8

    move v2, v9

    move v3, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v1

    move/from16 v1, v18

    goto/16 :goto_0

    :pswitch_9
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/4 v0, 0x1

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_14

    .line 4948
    invoke-static {v12, v3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_d

    :pswitch_a
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_14

    add-int/lit8 v0, v3, 0x1

    .line 54066
    aget-byte v1, v12, v3

    if-ltz v1, :cond_13

    .line 54068
    iput v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    goto :goto_b

    .line 54071
    :cond_13
    invoke-static {v1, v12, v0, v13}, Lo/writeRawLittleEndian64;->onPostMessage(I[BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    .line 4940
    :goto_b
    iget v1, v13, Lo/writeRawLittleEndian64$onPostMessage;->onPostMessage:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_b
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_14

    .line 4930
    invoke-static {v12, v3, v13}, Lo/writeRawLittleEndian64;->onNavigationEvent([BILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v7

    .line 4931
    iget-wide v2, v13, Lo/writeRawLittleEndian64$onPostMessage;->extraCallback:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_c
    or-int v5, v6, v22

    move v0, v7

    goto :goto_e

    :pswitch_c
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v2, :cond_14

    .line 54065
    invoke-static {v12, v3}, Lo/writeRawLittleEndian64;->ICustomTabsCallback([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 4921
    invoke-static {v14, v4, v5, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_d

    :pswitch_d
    move/from16 v18, v0

    move v9, v1

    move-wide v4, v12

    move/from16 v11, v19

    const/4 v0, 0x1

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_14

    .line 54064
    invoke-static {v12, v3}, Lo/writeRawLittleEndian64;->onNavigationEvent([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 4913
    invoke-static {v14, v4, v5, v0, v1}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_d
    or-int v5, v6, v22

    :goto_e
    move v6, v8

    move v2, v9

    move v3, v11

    move-object v9, v13

    move/from16 v1, v18

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_14
    :goto_f
    move v2, v3

    move/from16 v16, v6

    move/from16 v22, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    move v9, v11

    move/from16 v8, p5

    goto/16 :goto_14

    :cond_15
    move/from16 v18, v0

    move/from16 v8, v19

    const/16 v17, 0x0

    const/16 v19, -0x1

    move-wide/from16 v27, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v1

    move-wide/from16 v1, v27

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_19

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    .line 5069
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventLogSize$asBinder;

    .line 5070
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v4

    if-nez v4, :cond_17

    .line 5071
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0xa

    goto :goto_10

    :cond_16
    shl-int/lit8 v4, v4, 0x1

    .line 5073
    :goto_10
    invoke-interface {v0, v4}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v0

    .line 5075
    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_17
    move-object v7, v0

    .line 5079
    invoke-direct {v15, v9}, Lo/ReportManager;->onNavigationEvent(I)Lo/CreateReportRequest;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v22, v6

    move-object/from16 v6, p6

    .line 5078
    invoke-static/range {v0 .. v6}, Lo/writeRawLittleEndian64;->onNavigationEvent(Lo/CreateReportRequest;I[BIILo/getEventLogSize$asBinder;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    move/from16 v11, p5

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_18
    move/from16 v16, v5

    move/from16 v22, v6

    move v15, v3

    move/from16 v19, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    goto/16 :goto_11

    :cond_19
    move/from16 v16, v5

    move/from16 v22, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_1b

    move/from16 v6, v20

    int-to-long v5, v6

    move-object/from16 v0, p0

    move-wide/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v20, v5

    move v5, v8

    move/from16 v6, v18

    move/from16 v19, v8

    move v8, v9

    move/from16 v26, v9

    move-object/from16 v25, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 5086
    invoke-direct/range {v0 .. v14}, Lo/ReportManager;->onMessageChannelReady(Ljava/lang/Object;[BIIIIIIJIJLo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_1a

    goto/16 :goto_13

    :cond_1a
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v3, v19

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    goto/16 :goto_0

    :cond_1b
    move-wide/from16 v23, v1

    move v15, v3

    move/from16 v19, v8

    move/from16 v26, v9

    move-object/from16 v25, v10

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1d

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 5105
    invoke-direct/range {v0 .. v8}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIIJLo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_1a

    goto :goto_13

    :cond_1c
    :goto_11
    move/from16 v8, p5

    move v2, v15

    :goto_12
    move/from16 v9, v19

    goto :goto_14

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move v8, v6

    move/from16 v6, v18

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v26

    move-object/from16 v13, p6

    .line 5113
    invoke-direct/range {v0 .. v13}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;[BIIIIIIIJILo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    if-ne v0, v15, :cond_22

    :goto_13
    move/from16 v8, p5

    move v2, v0

    goto :goto_12

    :goto_14
    if-ne v9, v8, :cond_1f

    if-nez v8, :cond_1e

    goto :goto_15

    :cond_1e
    move-object/from16 v10, p0

    move-object/from16 v6, p1

    move v0, v2

    move v3, v9

    move/from16 v5, v16

    goto/16 :goto_17

    :cond_1f
    :goto_15
    move-object/from16 v10, p0

    .line 5135
    iget-boolean v0, v10, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_20

    iget-object v0, v11, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    .line 5136
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 5137
    iget-object v5, v10, Lo/ReportManager;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    iget-object v6, v10, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lo/writeRawLittleEndian64;->onMessageChannelReady(I[BIILjava/lang/Object;Lo/WireFormat$FieldType$2;Lo/SessionReport;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto :goto_16

    :cond_20
    move-object/from16 v6, p1

    .line 54091
    move-object v0, v6

    check-cast v0, Lo/getEventAppExecutionSize;

    iget-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 54092
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v3

    if-ne v1, v3, :cond_21

    .line 54093
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v1

    .line 54094
    iput-object v1, v0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_21
    move-object v4, v1

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 5142
    invoke-static/range {v0 .. v5}, Lo/writeRawLittleEndian64;->extraCallback(I[BIILo/getFileName;Lo/writeRawLittleEndian64$onPostMessage;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object v14, v6

    :goto_16
    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    move v11, v8

    goto/16 :goto_0

    :cond_22
    move/from16 v9, v19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move v3, v9

    move/from16 v5, v16

    move/from16 v1, v18

    move/from16 v6, v22

    move-object/from16 v10, v25

    move/from16 v2, v26

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_23
    move/from16 v16, v5

    move/from16 v22, v6

    move-object/from16 v25, v10

    move v8, v11

    move-object v6, v14

    move-object v10, v15

    :goto_17
    move/from16 v1, v22

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    int-to-long v1, v1

    move-object/from16 v4, v25

    .line 5147
    invoke-virtual {v4, v6, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_24
    const/4 v1, 0x0

    .line 5150
    iget v2, v10, Lo/ReportManager;->ICustomTabsCallback$Stub$Proxy:I

    :goto_18
    iget v4, v10, Lo/ReportManager;->warmup:I

    if-ge v2, v4, :cond_25

    .line 5151
    iget-object v4, v10, Lo/ReportManager;->getInterfaceDescriptor:[I

    aget v4, v4, v2

    iget-object v5, v10, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 5152
    invoke-direct {v10, v6, v4, v1, v5}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;ILjava/lang/Object;Lo/SessionReport;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getFileName;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_25
    if-eqz v1, :cond_26

    .line 5159
    iget-object v2, v10, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    .line 5160
    invoke-virtual {v2, v6, v1}, Lo/SessionReport;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    if-nez v8, :cond_28

    move/from16 v1, p4

    if-ne v0, v1, :cond_27

    goto :goto_19

    .line 5164
    :cond_27
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_28
    move/from16 v1, p4

    if-gt v0, v1, :cond_29

    if-ne v3, v8, :cond_29

    :goto_19
    return v0

    .line 5168
    :cond_29
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->ICustomTabsCallback$Stub()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1171
    :goto_0
    iget-object v2, p0, Lo/ReportManager;->onPostMessage:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 51005
    aget v3, v2, v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    .line 51007
    aget v7, v2, v1

    const/high16 v8, 0xff00000

    and-int/2addr v3, v8

    ushr-int/lit8 v3, v3, 0x14

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 50999
    :pswitch_0
    invoke-direct {p0, p1, p2, v1}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 v3, v1, 0x2

    .line 51018
    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v9, v2

    .line 51017
    invoke-static {p2, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 50994
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51022
    iget-object v2, p0, Lo/ReportManager;->onPostMessage:[I

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 51020
    invoke-static {p1, v2, v3, v7}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_3

    .line 50984
    :pswitch_2
    invoke-direct {p0, p1, p2, v1}, Lo/ReportManager;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 v3, v1, 0x2

    .line 51011
    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v9, v2

    .line 51010
    invoke-static {p2, v9, v10}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    .line 50978
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51015
    iget-object v2, p0, Lo/ReportManager;->onPostMessage:[I

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 51013
    invoke-static {p1, v2, v3, v7}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    goto/16 :goto_3

    .line 50966
    :pswitch_4
    iget-object v2, p0, Lo/ReportManager;->mayLaunchUrl:Lo/WireFormat$FieldType;

    invoke-static {v2, p1, p2, v5, v6}, Lo/NativeSessionReport;->extraCallback(Lo/WireFormat$FieldType;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_3

    .line 50963
    :pswitch_5
    iget-object v2, p0, Lo/ReportManager;->extraCommand:Lo/getThreadSize;

    invoke-virtual {v2, p1, p2, v5, v6}, Lo/getThreadSize;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_3

    .line 50929
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lo/ReportManager;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50923
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50924
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 50925
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50917
    :pswitch_8
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50918
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50919
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50911
    :pswitch_9
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50912
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 50913
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50905
    :pswitch_a
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50906
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50907
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50899
    :pswitch_b
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50900
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50901
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50893
    :pswitch_c
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50894
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50895
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50887
    :pswitch_d
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50888
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50889
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50884
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lo/ReportManager;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50878
    :pswitch_f
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50879
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50880
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50872
    :pswitch_10
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50873
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    .line 50874
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto/16 :goto_3

    .line 50866
    :pswitch_11
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50867
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50868
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50860
    :pswitch_12
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50861
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 50862
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50854
    :pswitch_13
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50855
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    .line 50856
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50848
    :pswitch_14
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50849
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 50850
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50842
    :pswitch_15
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50843
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JJ)V

    .line 50844
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50836
    :pswitch_16
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50837
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {p1, v5, v6, v2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JF)V

    .line 50838
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    goto :goto_3

    .line 50830
    :pswitch_17
    invoke-direct {p0, p2, v1}, Lo/ReportManager;->onPostMessage(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50831
    invoke-static {p2, v5, v6}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {p1, v5, v6, v2, v3}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JD)V

    .line 50832
    invoke-direct {p0, p1, v1}, Lo/ReportManager;->extraCallback(Ljava/lang/Object;I)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 1176
    :cond_3
    iget-object v0, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    invoke-static {v0, p1, p2}, Lo/NativeSessionReport;->ICustomTabsCallback(Lo/SessionReport;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1178
    iget-boolean v0, p0, Lo/ReportManager;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_4

    .line 1179
    iget-object v0, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    invoke-static {v0, p1, p2}, Lo/NativeSessionReport;->onNavigationEvent(Lo/getSessionAppSize;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 1169
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V
    .locals 6
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

    if-eqz p3, :cond_0

    .line 3844
    iget-object v1, p0, Lo/ReportManager;->requestPostMessageChannel:Lo/SessionReport;

    iget-object v2, p0, Lo/ReportManager;->updateVisuals:Lo/getSessionAppSize;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/ReportManager;->ICustomTabsCallback(Lo/SessionReport;Lo/getSessionAppSize;Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3842
    throw p1
.end method
