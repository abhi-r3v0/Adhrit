.class final Lo/LoanSummary_ChargesJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PoweredBy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/PoweredBy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lsun/misc/Unsafe;


# instance fields
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Z

.field private final ICustomTabsService:[I

.field private final asBinder:Z

.field private final asInterface:I

.field private final extraCallback:I

.field private final extraCommand:Lo/StashDataResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StashDataResponseJsonAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:[I

.field private final newSession:[I

.field private final onMessageChannelReady:[Ljava/lang/Object;

.field private final onPostMessage:[I

.field private final onRelationshipValidationResult:Lo/LoanSummary$Details;

.field private final onTransact:Z

.field private final postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

.field private final requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

.field private final warmup:Lo/NoteDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/StashLandingResponse;->extraCallback()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IIILo/LoanSummary$Details;ZZ[I[I[ILo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "III",
            "Lo/LoanSummary$Details;",
            "ZZ[I[I[I",
            "Lo/NoteDetails;",
            "Lo/LoanStatusResponse_ScheduleJsonAdapter;",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;",
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;",
            "Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    move-object v3, p2

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback:I

    move v3, p4

    iput v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback:I

    move v3, p5

    iput v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->asInterface:I

    instance-of v3, v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iput-boolean v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->onTransact:Z

    move v3, p7

    iput-boolean v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p6}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onPostMessage(Lo/LoanSummary$Details;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    iput-boolean v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    move-object v3, p9

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->newSession:[I

    move-object v3, p10

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    move-object/from16 v3, p11

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->getInterfaceDescriptor:[I

    move-object/from16 v3, p12

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->warmup:Lo/NoteDetails;

    move-object/from16 v3, p13

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    move-object/from16 v3, p14

    iput-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    iput-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    iput-object v1, v0, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult:Lo/LoanSummary$Details;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;[BIIIIIIJIJLo/LoanStatusResponse$ErrorObject;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lo/LoanStatusResponse$ErrorObject;",
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

    sget-object v11, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v11}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onNavigationEvent()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    invoke-interface {v11}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    :goto_0
    invoke-interface {v11, v12}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v11

    sget-object v12, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1e

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_28

    invoke-direct {v0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIIILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    :goto_1
    iget-object v8, v7, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_28

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v8

    iget v9, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v9, :cond_28

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIIILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget-wide v4, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {v4, v5}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_1f

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_28

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    :goto_3
    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget-wide v8, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {v8, v9}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    check-cast v11, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v4, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {v4}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_1f

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_28

    check-cast v11, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    :goto_5
    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v4, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {v4}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    invoke-static {v3, v4, v11, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_28

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent(I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    :goto_6
    check-cast v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object v3, v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-direct {v0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v4

    iget-object v5, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    move/from16 v6, p6

    invoke-static {v6, v11, v4, v3, v5}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/LoanStatusResponse_DataJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/StashDataResponse$ScreenData;

    if-eqz v3, :cond_a

    iput-object v3, v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_1f

    :pswitch_4
    if-ne v6, v10, :cond_28

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v4, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v4, :cond_b

    :goto_8
    sget-object v4, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    invoke-interface {v11, v4}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    invoke-static {v3, v1, v4}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([BII)Lo/LoanStatusResponse$Input;

    move-result-object v6

    invoke-interface {v11, v6}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v4, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v4, :cond_b

    goto :goto_8

    :pswitch_5
    if-ne v6, v10, :cond_28

    invoke-direct {v0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/PoweredBy;I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    goto/16 :goto_1f

    :pswitch_6
    if-ne v6, v10, :cond_28

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    if-nez v6, :cond_e

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v6, :cond_c

    :goto_a
    invoke-interface {v11, v1}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_b
    invoke-interface {v11, v8}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_c
    if-ge v4, v5, :cond_28

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v6

    iget v8, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v8, :cond_28

    invoke-static {v3, v6, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v6, :cond_d

    goto :goto_a

    :cond_d
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_e
    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v6, :cond_f

    :goto_d
    invoke-interface {v11, v1}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_f
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lo/StashVerifyBankResponse_ScreenDataJsonAdapter;->onMessageChannelReady([BII)Z

    move-result v9

    if-eqz v9, :cond_12

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_e
    invoke-interface {v11, v9}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    move v4, v8

    :goto_f
    if-ge v4, v5, :cond_28

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v6

    iget v8, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v8, :cond_28

    invoke-static {v3, v6, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v6, :cond_10

    goto :goto_d

    :cond_10
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lo/StashVerifyBankResponse_ScreenDataJsonAdapter;->onMessageChannelReady([BII)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_e

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onRelationshipValidationResult()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onRelationshipValidationResult()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_16

    check-cast v11, Lo/LoanStatusResponse$InputData;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v4, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v4, v2

    :goto_10
    if-ge v2, v4, :cond_14

    invoke-static {v3, v2, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-wide v5, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_13

    const/4 v5, 0x1

    goto :goto_11

    :cond_13
    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v11, v5}, Lo/LoanStatusResponse$InputData;->ICustomTabsCallback(Z)V

    goto :goto_10

    :cond_14
    if-ne v2, v4, :cond_15

    goto/16 :goto_7

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_16
    if-nez v6, :cond_28

    check-cast v11, Lo/LoanStatusResponse$InputData;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget-wide v8, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_17

    :goto_12
    const/4 v6, 0x1

    goto :goto_13

    :cond_17
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v11, v6}, Lo/LoanStatusResponse$InputData;->ICustomTabsCallback(Z)V

    if-ge v4, v5, :cond_28

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v6

    iget v8, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v8, :cond_28

    invoke-static {v3, v6, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget-wide v8, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_17

    goto :goto_12

    :pswitch_8
    if-ne v6, v10, :cond_1a

    check-cast v11, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_14
    if-ge v1, v2, :cond_18

    invoke-static {v3, v1}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_14

    :cond_18
    if-ne v1, v2, :cond_19

    goto/16 :goto_1f

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_1a
    if-ne v6, v9, :cond_28

    check-cast v11, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    :goto_15
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    invoke-static {v3, v4}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lo/LoanStatusResponse_DisbursalDetailsJsonAdapter;->ICustomTabsCallback(I)V

    goto :goto_15

    :pswitch_9
    if-ne v6, v10, :cond_1d

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_1b

    invoke-static {v3, v1}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_16

    :cond_1b
    if-ne v1, v2, :cond_1c

    goto/16 :goto_1f

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_1d
    if-ne v6, v13, :cond_28

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    :goto_17
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    invoke-static {v3, v4}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    goto :goto_17

    :pswitch_a
    if-ne v6, v10, :cond_1e

    invoke-static {v3, v4, v11, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    goto/16 :goto_1f

    :cond_1e
    if-nez v6, :cond_28

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent(I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    goto/16 :goto_1f

    :pswitch_b
    if-ne v6, v10, :cond_21

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_18
    if-ge v1, v2, :cond_1f

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget-wide v4, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-virtual {v11, v4, v5}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    goto :goto_18

    :cond_1f
    if-ne v1, v2, :cond_20

    goto/16 :goto_1f

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_21
    if-nez v6, :cond_28

    check-cast v11, Lo/LoanStatusResponse_ScreenDataJsonAdapter;

    :goto_19
    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget-wide v8, v7, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse_ScreenDataJsonAdapter;->onPostMessage(J)V

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    goto :goto_19

    :pswitch_c
    if-ne v6, v10, :cond_24

    check-cast v11, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_22

    invoke-static {v3, v1}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onPostMessage(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1a

    :cond_22
    if-ne v1, v2, :cond_23

    goto :goto_1f

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_28

    check-cast v11, Lo/LoanStatusResponse_CkycDataJsonAdapter;

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onPostMessage(F)V

    :goto_1b
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    invoke-static {v3, v4}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lo/LoanStatusResponse_CkycDataJsonAdapter;->onPostMessage(F)V

    goto :goto_1b

    :pswitch_d
    if-ne v6, v10, :cond_27

    check-cast v11, Lo/LoanStatusResponse$StashDetails;

    invoke-static {v3, v4, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v1

    iget v2, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_25

    invoke-static {v3, v1}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lo/LoanStatusResponse$StashDetails;->onNavigationEvent(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1c

    :cond_25
    if-ne v1, v2, :cond_26

    goto :goto_1f

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v13, :cond_28

    check-cast v11, Lo/LoanStatusResponse$StashDetails;

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse$StashDetails;->onNavigationEvent(D)V

    :goto_1d
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_29

    invoke-static {v3, v1, v7}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v4

    iget v6, v7, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne v2, v6, :cond_29

    invoke-static {v3, v4}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lo/LoanStatusResponse$StashDetails;->onNavigationEvent(D)V

    goto :goto_1d

    :cond_28
    :goto_1e
    move v1, v4

    :cond_29
    :goto_1f
    return v1

    nop

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

.method private static ICustomTabsCallback(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method static ICustomTabsCallback(Ljava/lang/Class;Lo/LoanSummary;Lo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)Lo/LoanSummary_ChargesJsonAdapter;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/LoanSummary;",
            "Lo/NoteDetails;",
            "Lo/LoanStatusResponse_ScheduleJsonAdapter;",
            "Lo/StashDataResponseJsonAdapter<",
            "**>;",
            "Lo/LoanStatusResponse_AadhaarInfoJsonAdapter<",
            "*>;",
            "Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;",
            ")",
            "Lo/LoanSummary_ChargesJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lo/Pitch_CtaJsonAdapter;

    if-eqz v1, :cond_11

    check-cast v0, Lo/Pitch_CtaJsonAdapter;

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->extraCallback()I

    move-result v1

    sget v2, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->onTransact()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->onRelationshipValidationResult()I

    move-result v2

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->newSession()I

    move-result v5

    move v8, v1

    move v9, v2

    :goto_1
    shl-int/lit8 v1, v5, 0x2

    new-array v6, v1, [I

    shl-int/lit8 v1, v5, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->ICustomTabsCallback$Stub()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->ICustomTabsCallback$Stub()I

    move-result v1

    new-array v1, v1, [I

    move-object v15, v1

    goto :goto_2

    :cond_2
    move-object v15, v2

    :goto_2
    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->asBinder()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->asBinder()I

    move-result v1

    new-array v1, v1, [I

    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    move-object/from16 v16, v2

    :goto_3
    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->ICustomTabsCallback()Lo/PollMessage;

    move-result-object v1

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lo/PollMessage;->extraCallback()I

    move-result v2

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->getInterfaceDescriptor()I

    move-result v13

    if-ge v2, v13, :cond_4

    sub-int v13, v2, v8

    shl-int/lit8 v13, v13, 0x2

    if-ge v5, v13, :cond_4

    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x4

    if-ge v13, v14, :cond_f

    add-int v14, v5, v13

    const/16 v17, -0x1

    aput v17, v6, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lo/PollMessage;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lo/PollMessage;->onNavigationEvent()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback$Stub()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    const/4 v13, 0x0

    goto :goto_6

    :cond_5
    invoke-virtual {v1}, Lo/PollMessage;->onRelationshipValidationResult()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    invoke-virtual {v1}, Lo/PollMessage;->asInterface()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v1}, Lo/PollMessage;->onTransact()Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-static {v13}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v14, v13

    invoke-virtual {v1}, Lo/PollMessage;->asBinder()I

    move-result v13

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    invoke-virtual {v1}, Lo/PollMessage;->extraCallback()I

    move-result v17

    aput v17, v6, v5

    add-int/lit8 v17, v5, 0x1

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsService()Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x20000000

    goto :goto_7

    :cond_7
    const/16 v18, 0x0

    :goto_7
    invoke-virtual {v1}, Lo/PollMessage;->getInterfaceDescriptor()Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x10000000

    goto :goto_8

    :cond_8
    const/16 v19, 0x0

    :goto_8
    or-int v18, v18, v19

    invoke-virtual {v1}, Lo/PollMessage;->onPostMessage()I

    move-result v19

    shl-int/lit8 v19, v19, 0x14

    or-int v18, v18, v19

    or-int v2, v18, v2

    aput v2, v6, v17

    add-int/lit8 v2, v5, 0x2

    shl-int/lit8 v13, v13, 0x14

    or-int/2addr v13, v14

    aput v13, v6, v2

    invoke-virtual {v1}, Lo/PollMessage;->newSession()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v3

    invoke-virtual {v1}, Lo/PollMessage;->newSession()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lo/PollMessage;->warmup()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lo/PollMessage;->warmup()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_a
    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Lo/PollMessage;->warmup()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    div-int/lit8 v2, v5, 0x4

    shl-int/2addr v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lo/PollMessage;->warmup()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v7, v2

    :cond_c
    :goto_9
    invoke-virtual {v1}, Lo/PollMessage;->onPostMessage()I

    move-result v2

    sget-object v13, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v13}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->ordinal()I

    move-result v13

    if-ne v2, v13, :cond_d

    add-int/lit8 v2, v10, 0x1

    aput v5, v15, v10

    move v10, v2

    goto :goto_a

    :cond_d
    const/16 v13, 0x12

    if-lt v2, v13, :cond_e

    const/16 v13, 0x31

    if-gt v2, v13, :cond_e

    add-int/lit8 v2, v11, 0x1

    aget v13, v6, v17

    const v14, 0xfffff

    and-int/2addr v13, v14

    aput v13, v16, v11

    move v11, v2

    :cond_e
    :goto_a
    invoke-virtual {v1}, Lo/PollMessage;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lo/PollMessage;->extraCallback()I

    move-result v2

    :cond_f
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_4

    :cond_10
    new-instance v1, Lo/LoanSummary_ChargesJsonAdapter;

    move-object v5, v1

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->getInterfaceDescriptor()I

    move-result v10

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->onPostMessage()Lo/LoanSummary$Details;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v0}, Lo/Pitch_CtaJsonAdapter;->asInterface()[I

    move-result-object v14

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    invoke-direct/range {v5 .. v21}, Lo/LoanSummary_ChargesJsonAdapter;-><init>([I[Ljava/lang/Object;IIILo/LoanSummary$Details;ZZ[I[I[ILo/NoteDetails;Lo/LoanStatusResponse_ScheduleJsonAdapter;Lo/StashDataResponseJsonAdapter;Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;)V

    return-object v1

    :cond_11
    check-cast v0, Lo/ScreenData;

    invoke-virtual {v0}, Lo/ScreenData;->extraCallback()I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final ICustomTabsCallback(I)Lo/PoweredBy;
    .locals 3

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lo/PoweredBy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object v0

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;ILo/Pitch;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lo/Pitch;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, v0, v1, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onTransact:Z

    and-int/2addr p2, v1

    if-eqz v0, :cond_1

    int-to-long v0, p2

    invoke-interface {p3}, Lo/Pitch;->warmup()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    int-to-long v0, p2

    invoke-interface {p3}, Lo/Pitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object p2

    goto :goto_0
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p2, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/LoanStatusResponse$Input;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p2, p1, Lo/LoanStatusResponse$Input;

    if-eqz p2, :cond_c

    sget-object p2, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    invoke-virtual {p2, p1}, Lo/LoanStatusResponse$Input;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    :cond_14
    invoke-direct {p0, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    nop

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

.method private static extraCallback(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final extraCallback(Ljava/lang/Object;[BIIILo/LoanStatusResponse$ErrorObject;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lo/LoanStatusResponse$ErrorObject;",
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

    sget-object v10, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_0
    if-ge v0, v13, :cond_1b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback(I[BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, v9, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v0

    move v4, v1

    :goto_1
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v2, v5, 0x7

    invoke-direct {v15, v3}, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult(I)I

    move-result v1

    if-eq v1, v8, :cond_17

    iget-object v0, v15, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v17, v1, 0x1

    aget v8, v0, v17

    const/high16 v17, 0xff00000

    and-int v17, v8, v17

    ushr-int/lit8 v11, v17, 0x14

    const v17, 0xfffff

    move/from16 p3, v5

    and-int v5, v8, v17

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v19, v8

    if-gt v11, v5, :cond_f

    add-int/lit8 v5, v1, 0x2

    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v8, 0x1

    shl-int v21, v8, v5

    and-int v0, v0, v17

    const/4 v5, -0x1

    if-eq v0, v7, :cond_2

    if-eq v7, v5, :cond_1

    int-to-long v8, v7

    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v6, v0

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v0

    :cond_2
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move/from16 v9, p3

    move/from16 v13, p4

    move-object/from16 v11, p6

    :goto_2
    move v5, v4

    move/from16 p3, v7

    goto/16 :goto_11

    :pswitch_0
    const/4 v0, 0x3

    if-ne v2, v0, :cond_4

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    invoke-direct {v15, v1}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v0

    move-object/from16 v1, p2

    move v2, v4

    move/from16 v3, p4

    move v4, v8

    move/from16 v9, p3

    const/4 v8, -0x1

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIIILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    and-int v1, v6, v21

    move-object/from16 v11, p6

    if-nez v1, :cond_3

    iget-object v1, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-static {v1, v2}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object/from16 v12, p2

    goto/16 :goto_6

    :cond_4
    move/from16 v9, p3

    move-object/from16 v11, p6

    goto :goto_4

    :pswitch_1
    move/from16 v9, p3

    move-object/from16 v11, p6

    const/4 v8, -0x1

    if-nez v2, :cond_5

    move-wide v2, v12

    move-object/from16 v12, p2

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v13

    iget-wide v0, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {v0, v1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move v1, v9

    move-object v9, v11

    move v0, v13

    move/from16 v13, p4

    goto/16 :goto_10

    :cond_5
    :goto_4
    move-object/from16 v12, p2

    goto/16 :goto_9

    :pswitch_2
    move/from16 v9, p3

    move-object/from16 v11, p6

    move-wide v0, v12

    const/4 v8, -0x1

    move-object/from16 v12, p2

    if-nez v2, :cond_8

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v3, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {v3}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result v3

    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move/from16 v9, p3

    move-object/from16 v11, p6

    move-wide/from16 v22, v12

    const/4 v8, -0x1

    move-object/from16 v12, p2

    if-nez v2, :cond_8

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v2, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-direct {v15, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v2}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static/range {p1 .. p1}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/StashDataResponse$ScreenData;

    move-result-object v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    :goto_5
    move-wide/from16 v3, v22

    invoke-virtual {v10, v14, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    :goto_6
    move/from16 v13, p4

    goto :goto_8

    :pswitch_4
    move/from16 v9, p3

    move-object/from16 v11, p6

    move-wide v0, v12

    const/4 v3, 0x2

    const/4 v8, -0x1

    move-object/from16 v12, p2

    if-ne v2, v3, :cond_8

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-object v3, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v6, v6, v21

    move/from16 v13, p4

    move v0, v2

    :goto_8
    move v1, v9

    move-object v9, v11

    goto/16 :goto_10

    :cond_8
    :goto_9
    move/from16 v13, p4

    goto/16 :goto_2

    :pswitch_5
    move/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 p3, v7

    move-wide v7, v12

    const/4 v3, 0x2

    move-object/from16 v12, p2

    if-ne v2, v3, :cond_a

    invoke-direct {v15, v1}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v0

    move/from16 v13, p4

    invoke-static {v0, v12, v4, v13, v11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    and-int v1, v6, v21

    if-nez v1, :cond_9

    iget-object v1, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    goto :goto_b

    :cond_9
    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-static {v1, v2}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_a
    move/from16 v13, p4

    goto/16 :goto_d

    :pswitch_6
    move/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 p3, v7

    move-wide v7, v12

    const/4 v0, 0x2

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-ne v2, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v19, v0

    if-nez v0, :cond_b

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    :goto_a
    iget-object v1, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    :goto_b
    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_7
    move/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 p3, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-nez v2, :cond_d

    invoke-static {v12, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget-wide v1, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const/4 v1, 0x1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    invoke-static {v14, v7, v8, v1}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JZ)V

    goto/16 :goto_e

    :pswitch_8
    move/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 p3, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-ne v2, v0, :cond_d

    invoke-static {v12, v4}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_e

    :pswitch_9
    move/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 p3, v7

    move-wide v7, v12

    const/4 v0, 0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-ne v2, v0, :cond_d

    invoke-static {v12, v4}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v7

    move v7, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_e

    :cond_d
    :goto_d
    move v5, v4

    goto/16 :goto_11

    :pswitch_a
    move/from16 v9, p3

    move-object/from16 v11, p6

    move v5, v4

    move/from16 p3, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-nez v2, :cond_e

    invoke-static {v12, v5, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-virtual {v10, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_e

    :pswitch_b
    move/from16 v9, p3

    move-object/from16 v11, p6

    move v5, v4

    move/from16 p3, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-nez v2, :cond_e

    invoke-static {v12, v5, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v17

    iget-wide v4, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move/from16 v7, p3

    move v1, v9

    move-object v9, v11

    move/from16 v0, v17

    goto :goto_f

    :pswitch_c
    move/from16 v9, p3

    move-object/from16 v11, p6

    move v5, v4

    move/from16 p3, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-ne v2, v0, :cond_e

    invoke-static {v12, v5}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v0

    invoke-static {v14, v7, v8, v0}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_e

    :pswitch_d
    move/from16 v9, p3

    move-object/from16 v11, p6

    move v5, v4

    move/from16 p3, v7

    move-wide v7, v12

    const/4 v0, 0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    if-ne v2, v0, :cond_e

    invoke-static {v12, v5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v0

    invoke-static {v14, v7, v8, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    :goto_e
    or-int v6, v6, v21

    move/from16 v7, p3

    move v1, v9

    move-object v9, v11

    :goto_f
    const/4 v8, -0x1

    :goto_10
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    :goto_11
    move/from16 v7, p3

    move/from16 v8, p5

    move v2, v5

    move-object/from16 v25, v10

    goto/16 :goto_16

    :cond_f
    move/from16 v9, p3

    move v5, v4

    move/from16 v17, v7

    move-wide v7, v12

    move-object/from16 v12, p2

    move/from16 v13, p4

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    const/4 v0, 0x2

    if-ne v2, v0, :cond_12

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->size()I

    move-result v2

    if-nez v2, :cond_10

    const/16 v2, 0xa

    goto :goto_12

    :cond_10
    shl-int/lit8 v2, v2, 0x1

    :goto_12
    invoke-interface {v0, v2}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v10, v14, v7, v8, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v7, v0

    invoke-direct {v15, v1}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v0

    move v1, v9

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move-object v5, v7

    move/from16 v21, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/PoweredBy;I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    move/from16 v11, p5

    move/from16 v7, v17

    move/from16 v6, v21

    goto/16 :goto_18

    :cond_12
    move/from16 v21, v6

    move v15, v5

    move/from16 v18, v9

    goto/16 :goto_14

    :cond_13
    move/from16 v21, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    move/from16 v6, v19

    int-to-long v12, v6

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move v6, v2

    move-object/from16 v2, p2

    move/from16 v22, v3

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move v5, v9

    move/from16 p3, v6

    move/from16 v6, v22

    move-wide/from16 v23, v7

    move/from16 v7, p3

    move/from16 v8, v19

    move/from16 v18, v9

    move-object/from16 v25, v10

    move-wide v9, v12

    move/from16 v12, p5

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;[BIIIIIIJIJLo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_14

    goto/16 :goto_13

    :cond_14
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v17

    move/from16 v1, v18

    move/from16 v6, v21

    move-object/from16 v10, v25

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_15
    move/from16 p3, v2

    move/from16 v22, v3

    move v15, v5

    move-wide/from16 v23, v7

    move/from16 v18, v9

    move-object/from16 v25, v10

    move/from16 v6, v19

    move/from16 v19, v1

    const/16 v0, 0x32

    move/from16 v7, p3

    if-ne v11, v0, :cond_16

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move/from16 v6, v22

    move-wide/from16 v7, v23

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;[BIIIIJLo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_14

    goto :goto_13

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move v8, v6

    move/from16 v6, v22

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v19

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;[BIIIIIIIJILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_14

    :goto_13
    move/from16 v8, p5

    move v2, v0

    goto :goto_15

    :cond_17
    move v15, v4

    move/from16 v18, v5

    move/from16 v21, v6

    move/from16 v17, v7

    :goto_14
    move-object/from16 v25, v10

    :cond_18
    move/from16 v8, p5

    move v2, v15

    :goto_15
    move/from16 v7, v17

    move/from16 v9, v18

    move/from16 v6, v21

    :goto_16
    if-ne v9, v8, :cond_1a

    if-nez v8, :cond_19

    goto :goto_17

    :cond_19
    move v0, v2

    move v1, v9

    goto :goto_19

    :cond_1a
    :goto_17
    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I[BIILjava/lang/Object;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v8

    move v1, v9

    move-object/from16 v10, v25

    :goto_18
    const/4 v8, -0x1

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_1b
    move/from16 v21, v6

    move/from16 v17, v7

    move-object/from16 v25, v10

    move v8, v11

    :goto_19
    const/4 v2, -0x1

    if-eq v7, v2, :cond_1c

    int-to-long v2, v7

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    invoke-virtual {v5, v4, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1a

    :cond_1c
    move-object/from16 v4, p1

    :goto_1a
    move-object/from16 v2, p0

    iget-object v3, v2, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v3, :cond_1e

    const/4 v5, 0x0

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_1d

    aget v9, v3, v7

    iget-object v10, v2, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-direct {v2, v4, v9, v5, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/StashDataResponse$ScreenData;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_1d
    if-eqz v5, :cond_1e

    iget-object v3, v2, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v3, v4, v5}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    move/from16 v3, p4

    if-nez v8, :cond_20

    if-ne v0, v3, :cond_1f

    goto :goto_1c

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_20
    if-gt v0, v3, :cond_21

    if-ne v1, v8, :cond_21

    :goto_1c
    return v0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    nop

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

.method private static extraCallback(Lo/PoweredBy;[BIIILo/LoanStatusResponse$ErrorObject;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lo/LoanSummary_ChargesJsonAdapter;

    invoke-virtual {p0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;[BIIILo/LoanStatusResponse$ErrorObject;)I

    move-result p1

    invoke-virtual {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)V

    iput-object v7, p5, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    return p1
.end method

.method private static extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback(I[BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget p2, p4, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lo/PoweredBy;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;[BIILo/LoanStatusResponse$ErrorObject;)V

    invoke-interface {p0, p3}, Lo/PoweredBy;->onNavigationEvent(Ljava/lang/Object;)V

    iput-object p3, p4, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method private static extraCallback(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/StashDataResponseJsonAdapter;->asInterface(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static extraCallback([BIILo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse$ErrorObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/getStatus_message;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/LoanStatusResponse$ErrorObject;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo/LoanSummary_BodyJsonAdapter;->onPostMessage:[I

    invoke-virtual {p3}, Lo/getStatus_message;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    iget-wide p1, p5, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {p1, p2}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide p1

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    iget p1, p5, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {p1}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object p3

    invoke-virtual {p3, p4}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    goto :goto_6

    :pswitch_4
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    iget-wide p1, p5, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    iget p1, p5, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    iput-object p1, p5, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    goto :goto_6

    :pswitch_6
    invoke-static {p0, p1}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_3

    :pswitch_7
    invoke-static {p0, p1}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4

    :pswitch_8
    invoke-static {p0, p1}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    iput-object p0, p5, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_6

    :pswitch_9
    invoke-static {p0, p1}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_4
    iput-object p0, p5, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_6

    :pswitch_a
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    goto :goto_6

    :pswitch_b
    invoke-static {p0, p1, p5}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    iget-wide p1, p5, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_5

    :cond_0
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :goto_6
    return p0

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

.method private final extraCallback(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final extraCallback(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v0

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v2, v3}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v2, v3, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;ILo/PoweredBy;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final onMessageChannelReady(I)I
    .locals 1

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static onMessageChannelReady(I[BIILjava/lang/Object;Lo/LoanStatusResponse$ErrorObject;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/StashDataResponse$ScreenData;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage(I[BIILo/StashDataResponse$ScreenData;Lo/LoanStatusResponse$ErrorObject;)I

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Lo/PoweredBy;I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PoweredBy<",
            "*>;I[BII",
            "Lo/LoanStatusResponse_MandateDetailsJsonAdapter<",
            "*>;",
            "Lo/LoanStatusResponse$ErrorObject;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, p6, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static onMessageChannelReady(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;TT;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/StashDataResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;Lo/UpcomingEmiData;)V

    return-void
.end method

.method private final onMessageChannelReady(Lo/UpcomingEmiData;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/UpcomingEmiData;",
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

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-direct {p0, p4}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->asInterface(Ljava/lang/Object;)Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;

    move-result-object p4

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v0, p3}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final onNavigationEvent(I)I
    .locals 1

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private final onNavigationEvent(IILjava/util/Map;Lo/LoanStatusResponse_DataJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
    .locals 4
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
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "*>;TUB;",
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-direct {p0, p1}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->asInterface(Ljava/lang/Object;)Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lo/LoanStatusResponse_SummaryJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lo/LoanStatusResponse$Input;->extraCallback(I)Lo/LoanStatusResponse$RequiredData;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse$RequiredData;->onPostMessage()Lcom/google/android/gms/internal/ads/zzbav;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lo/LoanStatusResponse_SummaryJsonAdapter;->extraCallback(Lcom/google/android/gms/internal/ads/zzbav;Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lo/LoanStatusResponse$RequiredData;->ICustomTabsCallback()Lo/LoanStatusResponse$Input;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILo/LoanStatusResponse$Input;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;
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
            "Lo/StashDataResponseJsonAdapter<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v3, v0, p2

    invoke-direct {p0, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v0, p1}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(IILjava/util/Map;Lo/LoanStatusResponse_DataJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static onNavigationEvent(ILjava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lo/LoanStatusResponse$Input;

    invoke-interface {p2, p0, p1}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/UpcomingEmiData;",
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

    iget-boolean v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v3, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    iget-object v7, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v7, v7

    sget-object v8, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v12

    iget-object v13, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    iget-boolean v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

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

    iget-object v9, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v9, v5}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    iget-object v9, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v9, v2, v5}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

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
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V

    goto :goto_3

    :pswitch_1
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onPostMessage(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->asBinder(II)V

    goto :goto_3

    :pswitch_3
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onMessageChannelReady(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->extraCallback(II)V

    goto :goto_3

    :pswitch_5
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onNavigationEvent(II)V

    goto :goto_3

    :pswitch_6
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(II)V

    goto :goto_3

    :pswitch_7
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LoanStatusResponse$Input;

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    goto :goto_3

    :pswitch_8
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(ILjava/lang/Object;Lo/UpcomingEmiData;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->extraCallback(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onMessageChannelReady(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onPostMessage(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->extraCallback(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onNavigationEvent(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {v0, v1, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onPostMessage(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/UpcomingEmiData;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_28
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onPostMessage(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->asBinder(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onMessageChannelReady(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->extraCallback(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onNavigationEvent(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LoanStatusResponse$Input;

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(ILjava/lang/Object;Lo/UpcomingEmiData;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->extraCallback(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onMessageChannelReady(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->ICustomTabsCallback(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->onPostMessage(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->extraCallback(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onNavigationEvent(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lo/UpcomingEmiData;->ICustomTabsCallback(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lo/UpcomingEmiData;->onPostMessage(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x4

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v4, v2, v5}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    iget-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v3, v1, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Lo/UpcomingEmiData;)V

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
.end method

.method private static onPostMessage(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final onPostMessage(Ljava/lang/Object;[BIIIIIIIJILo/LoanStatusResponse$ErrorObject;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lo/LoanStatusResponse$ErrorObject;",
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

    sget-object v12, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    iget-object v7, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_b

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIIILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    iget-object v3, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v15, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {v15, v3}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_1
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-wide v3, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {v3, v4}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide v3

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v3, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {v3}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result v3

    goto/16 :goto_6

    :pswitch_3
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v3

    iget v4, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-direct {v0, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;)Lo/StashDataResponse$ScreenData;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_d

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    :pswitch_4
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v4, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v4, :cond_4

    sget-object v3, Lo/LoanStatusResponse$Input;->onMessageChannelReady:Lo/LoanStatusResponse$Input;

    goto/16 :goto_8

    :cond_4
    invoke-static {v3, v2, v4}, Lo/LoanStatusResponse$Input;->ICustomTabsCallback([BII)Lo/LoanStatusResponse$Input;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    add-int/2addr v2, v4

    goto/16 :goto_b

    :pswitch_5
    if-ne v5, v15, :cond_b

    invoke-direct {v0, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iget-object v3, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v15, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-static {v15, v3}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_6
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v4, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-nez v4, :cond_7

    const-string v3, ""

    goto :goto_8

    :cond_7
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_9

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lo/StashVerifyBankResponse_ScreenDataJsonAdapter;->onMessageChannelReady([BII)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onRelationshipValidationResult()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v1

    throw v1

    :cond_9
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-wide v3, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    const/4 v15, 0x1

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    :goto_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_8

    :pswitch_8
    if-ne v5, v7, :cond_b

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget v3, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :pswitch_b
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v2

    iget-wide v3, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_c
    if-ne v5, v7, :cond_b

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_9
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_b

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    invoke-static/range {p2 .. p3}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_a
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_b
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :cond_b
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

.method private final onPostMessage(Ljava/lang/Object;[BIIIIJLo/LoanStatusResponse$ErrorObject;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIIJ",
            "Lo/LoanStatusResponse$ErrorObject;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p6, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p6, p1, p7, p8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v1, v0}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v1, p5}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v2, v1, v0}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6, p1, p7, p8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {p1, p5}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->asInterface(Ljava/lang/Object;)Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;

    move-result-object p1

    iget-object p5, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {p5, v0}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    invoke-static {p2, p3, p9}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    iget p6, p9, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    if-ltz p6, :cond_7

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_7

    add-int/2addr p6, p3

    iget-object p7, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onPostMessage:Ljava/lang/Object;

    iget-object p8, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_5

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    invoke-static {p3, p2, v0, p9}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback(I[BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget p3, p9, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    :cond_1
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    invoke-virtual {v0}, Lo/getStatus_message;->ICustomTabsCallback()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v3, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    iget-object p3, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback([BIILo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    iget-object p8, p9, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onMessageChannelReady:Lo/getStatus_message;

    invoke-virtual {v0}, Lo/getStatus_message;->ICustomTabsCallback()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v3, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onMessageChannelReady:Lo/getStatus_message;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p9

    invoke-static/range {v0 .. v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback([BIILo/getStatus_message;Ljava/lang/Class;Lo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    iget-object p7, p9, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p3, p2, v1, p4, p9}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback(I[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p6, :cond_6

    invoke-interface {p5, p7, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->onMessageChannelReady()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1
.end method

.method private final onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lo/LoanStatusResponse_DataJsonAdapter;

    return-object p1
.end method

.method private static onPostMessage(Ljava/lang/Object;)Lo/StashDataResponse$ScreenData;
    .locals 2

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/StashDataResponse$ScreenData;->ICustomTabsCallback()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    :cond_0
    return-object v0
.end method

.method private final onPostMessage(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final onRelationshipValidationResult(I)I
    .locals 6

    iget v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_4

    iget v2, p0, Lo/LoanSummary_ChargesJsonAdapter;->asInterface:I

    if-ge p1, v2, :cond_1

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget v3, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback:I

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v2, v0, :cond_4

    add-int v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v5, v5, v4

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static onTransact(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onTransact(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->warmup:Lo/NoteDetails;

    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult:Lo/LoanSummary$Details;

    invoke-interface {v0, v1}, Lo/NoteDetails;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-direct {p0, p2, v4, v0}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_2
    invoke-direct {p0, p2, v4, v0}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;II)V

    goto/16 :goto_7

    :pswitch_3
    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-static {v1, p1, p2, v2, v3}, Lo/PossibleValues;->onPostMessage(Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    invoke-virtual {v1, p1, p2, v2, v3}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :pswitch_6
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    goto :goto_4

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :pswitch_e
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JZ)V

    goto :goto_6

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_5
    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto :goto_6

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;JF)V

    goto :goto_6

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JD)V

    :goto_6
    invoke-direct {p0, p1, v0}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;I)V

    :cond_0
    :goto_7
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/PossibleValues;->onPostMessage(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/PossibleValues;->extraCallback(Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
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
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;[BIILo/LoanStatusResponse$ErrorObject;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lo/LoanStatusResponse$ErrorObject;",
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

    iget-boolean v0, v15, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    if-eqz v0, :cond_f

    sget-object v9, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    move/from16 v0, p3

    :goto_0
    if-ge v0, v13, :cond_d

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback(I[BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    move v10, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v10, v1

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    invoke-direct {v15, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult(I)I

    move-result v8

    if-ltz v8, :cond_a

    iget-object v0, v15, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v1, v8, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v4, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v2, v0

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v4, v0, :cond_4

    const/4 v0, 0x5

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-nez v7, :cond_a

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v6

    iget-wide v0, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    invoke-static {v0, v1}, Lo/LoanStatusResponse$ScreenData;->onPostMessage(J)J

    move-result-wide v4

    goto/16 :goto_7

    :pswitch_1
    if-nez v7, :cond_a

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    invoke-static {v1}, Lo/LoanStatusResponse$ScreenData;->onRelationshipValidationResult(I)I

    move-result v1

    goto/16 :goto_6

    :pswitch_2
    if-nez v7, :cond_a

    goto/16 :goto_5

    :pswitch_3
    if-ne v7, v1, :cond_a

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    :goto_2
    iget-object v1, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    if-ne v7, v1, :cond_a

    invoke-direct {v15, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/PoweredBy;[BIILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v11, Lo/LoanStatusResponse$ErrorObject;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-static {v1, v4}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    if-ne v7, v1, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_2

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->ICustomTabsCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    goto :goto_2

    :pswitch_6
    if-nez v7, :cond_a

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget-wide v4, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    invoke-static {v14, v2, v3, v6}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JZ)V

    goto/16 :goto_0

    :pswitch_7
    if-ne v7, v0, :cond_a

    invoke-static {v12, v10}, Lo/LoanStatusResponse$DisbursalDetails;->onMessageChannelReady([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_8
    if-ne v7, v6, :cond_a

    invoke-static {v12, v10}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BI)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_9

    :pswitch_9
    if-nez v7, :cond_a

    :goto_5
    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    iget v1, v11, Lo/LoanStatusResponse$ErrorObject;->onPostMessage:I

    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_a
    if-nez v7, :cond_a

    invoke-static {v12, v10, v11}, Lo/LoanStatusResponse$DisbursalDetails;->extraCallback([BILo/LoanStatusResponse$ErrorObject;)I

    move-result v6

    iget-wide v4, v11, Lo/LoanStatusResponse$ErrorObject;->onMessageChannelReady:J

    :goto_7
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto/16 :goto_0

    :pswitch_b
    if-ne v7, v0, :cond_a

    invoke-static {v12, v10}, Lo/LoanStatusResponse$DisbursalDetails;->onPostMessage([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;JF)V

    :goto_8
    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_0

    :pswitch_c
    if-ne v7, v6, :cond_a

    invoke-static {v12, v10}, Lo/LoanStatusResponse$DisbursalDetails;->onNavigationEvent([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JD)V

    :goto_9
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1b

    if-ne v4, v0, :cond_7

    if-ne v7, v1, :cond_a

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onNavigationEvent()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xa

    goto :goto_a

    :cond_5
    shl-int/lit8 v1, v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Lo/LoanStatusResponse_MandateDetailsJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_MandateDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6
    move-object v5, v0

    invoke-direct {v15, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/PoweredBy;I[BIILo/LoanStatusResponse_MandateDetailsJsonAdapter;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x31

    if-gt v4, v0, :cond_8

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-object/from16 v2, p2

    move v3, v10

    move v5, v4

    move/from16 v4, p4

    move/from16 p3, v5

    move/from16 v5, v16

    move-object/from16 v21, v9

    move v15, v10

    move-wide/from16 v9, v17

    move/from16 v11, p3

    move-wide/from16 v12, v19

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;[BIIIIIIJIJLo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_c

    goto :goto_b

    :cond_8
    move-wide/from16 v19, v2

    move/from16 p3, v4

    move-object/from16 v21, v9

    move v15, v10

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_9

    if-ne v7, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v5, v8

    move-wide/from16 v7, v19

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;[BIIIIJLo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_c

    goto :goto_b

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v10, v5

    move/from16 v5, v16

    move v12, v8

    move v8, v10

    move-wide/from16 v10, v19

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;[BIIIIIIIJILo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    if-ne v0, v15, :cond_c

    :goto_b
    move v2, v0

    goto :goto_d

    :cond_a
    :goto_c
    move-object/from16 v21, v9

    move v15, v10

    :cond_b
    move v2, v15

    :goto_d
    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I[BIILjava/lang/Object;Lo/LoanStatusResponse$ErrorObject;)I

    move-result v0

    :cond_c
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v21

    goto/16 :goto_0

    :cond_d
    move v4, v13

    if-ne v0, v4, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->asBinder()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object v0

    throw v0

    :cond_f
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;[BIIILo/LoanStatusResponse$ErrorObject;)I

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

.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->newSession:[I

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, -0x1

    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_f

    aget v9, v2, v7

    invoke-direct {v0, v9}, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult(I)I

    move-result v10

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v11

    iget-boolean v12, v0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    const v13, 0xfffff

    if-nez v12, :cond_2

    iget-object v12, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    and-int v14, v12, v13

    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v3, v12

    if-eq v14, v4, :cond_1

    sget-object v4, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    move v15, v7

    int-to-long v6, v14

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v4, v14

    goto :goto_1

    :cond_1
    move v15, v7

    goto :goto_1

    :cond_2
    move v15, v7

    const/4 v12, 0x0

    :goto_1
    const/high16 v6, 0x10000000

    and-int/2addr v6, v11

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    invoke-direct {v0, v1, v10, v8, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;III)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    return v6

    :cond_4
    const/high16 v6, 0xff00000

    and-int/2addr v6, v11

    ushr-int/lit8 v6, v6, 0x14

    const/16 v7, 0x9

    if-eq v6, v7, :cond_d

    const/16 v7, 0x11

    if-eq v6, v7, :cond_d

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_a

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_9

    const/16 v7, 0x44

    if-eq v6, v7, :cond_9

    const/16 v7, 0x31

    if-eq v6, v7, :cond_a

    const/16 v7, 0x32

    if-eq v6, v7, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    and-int v7, v11, v13

    int-to-long v11, v7

    invoke-static {v1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v9, v7}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->asInterface(Ljava/lang/Object;)Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;

    move-result-object v7

    iget-object v7, v7, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    invoke-virtual {v7}, Lo/getStatus_message;->extraCallback()Lo/TotalPayable;

    move-result-object v7

    sget-object v9, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    if-ne v7, v9, :cond_8

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_7

    invoke-static {}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->extraCallback()Lo/LoanSummary_ScheduleChargeJsonAdapter;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v10}, Lo/LoanSummary_ScheduleChargeJsonAdapter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/PoweredBy;

    move-result-object v7

    :cond_7
    invoke-interface {v7, v9}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_e

    const/4 v6, 0x0

    return v6

    :cond_9
    const/4 v6, 0x0

    invoke-direct {v0, v1, v9, v10}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v7

    invoke-static {v1, v11, v7}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;ILo/PoweredBy;)Z

    move-result v7

    if-nez v7, :cond_e

    return v6

    :cond_a
    and-int v6, v11, v13

    int-to-long v6, v6

    invoke-static {v1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v7

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lo/PoweredBy;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_e

    const/4 v6, 0x0

    return v6

    :cond_d
    const/4 v6, 0x0

    invoke-direct {v0, v1, v10, v8, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;III)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {v0, v10}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v7

    invoke-static {v1, v11, v7}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;ILo/PoweredBy;)Z

    move-result v7

    if-nez v7, :cond_e

    return v6

    :cond_e
    :goto_6
    add-int/lit8 v7, v15, 0x1

    goto/16 :goto_0

    :cond_f
    iget-boolean v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onRelationshipValidationResult()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    :goto_7
    return v3
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    sget-object v14, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v14}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v14}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_4

    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_7

    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_8

    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_9

    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_a

    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_b

    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_d

    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lo/LoanStatusResponse$Input;

    if-eqz v6, :cond_2

    goto/16 :goto_e

    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_f

    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_10

    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_11

    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_13

    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_14

    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_15

    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_16

    :pswitch_12
    iget-object v14, v0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v3, v5, v6}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/PoweredBy;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onNavigationEvent(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->asInterface(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->extraCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onMessageChannelReady(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onPostMessage(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    iget-boolean v6, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v6, :cond_1

    :goto_2
    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    :pswitch_22
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_23
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_24
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_25
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_26
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_27
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/PoweredBy;)I

    move-result v3

    goto :goto_3

    :pswitch_28
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lo/PossibleValues;->extraCallback(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    :pswitch_29
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->asInterface(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2a
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2b
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2c
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2d
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->asBinder(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    :pswitch_2e
    invoke-static {v1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/PossibleValues;->onTransact(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_17

    :pswitch_2f
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_4
    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LoanSummary$Details;

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result v3

    goto :goto_3

    :pswitch_30
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_5
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_31
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    :goto_6
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(II)I

    move-result v3

    goto :goto_3

    :pswitch_32
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_7
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_33
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_8
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(II)I

    move-result v3

    goto :goto_3

    :pswitch_34
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    :goto_9
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->getInterfaceDescriptor(II)I

    move-result v3

    goto :goto_3

    :pswitch_35
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    :goto_a
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(II)I

    move-result v3

    goto :goto_3

    :pswitch_36
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_b
    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    :goto_c
    check-cast v5, Lo/LoanStatusResponse$Input;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanStatusResponse$Input;)I

    move-result v3

    goto :goto_3

    :pswitch_37
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_d
    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/PossibleValues;->onPostMessage(ILjava/lang/Object;Lo/PoweredBy;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lo/LoanStatusResponse$Input;

    if-eqz v6, :cond_2

    :goto_e
    goto :goto_c

    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_f
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_10
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_11
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    :goto_12
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_13
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_14
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IF)I

    move-result v3

    goto/16 :goto_3

    :pswitch_40
    invoke-direct {v0, v1, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_16
    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_3
    :goto_17
    add-int/lit8 v12, v12, 0x4

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v2, v1}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_5
    sget-object v2, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_18
    iget-object v13, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v13, v13

    if-ge v5, v13, :cond_e

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v13

    iget-object v14, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_7

    add-int/lit8 v11, v5, 0x2

    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v3, :cond_6

    int-to-long v9, v14

    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v3, v14

    :cond_6
    move v9, v11

    goto :goto_1a

    :cond_7
    iget-boolean v9, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v9, :cond_8

    sget-object v9, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asBinder:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v9}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v9

    if-lt v4, v9, :cond_8

    sget-object v9, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->asInterface:Lo/LoanStatusResponse_CurrentDataJsonAdapter;

    invoke-virtual {v9}, Lo/LoanStatusResponse_CurrentDataJsonAdapter;->onPostMessage()I

    move-result v9

    if-gt v4, v9, :cond_8

    iget-object v9, v0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    and-int/2addr v9, v8

    goto :goto_19

    :cond_8
    const/4 v9, 0x0

    :goto_19
    const/16 v18, 0x0

    :goto_1a
    and-int v10, v13, v8

    int-to-long v10, v10

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1d

    :pswitch_41
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_1f

    :pswitch_42
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    goto/16 :goto_20

    :pswitch_43
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_21

    :pswitch_44
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_22

    :pswitch_45
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_23

    :pswitch_46
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_25

    :pswitch_47
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_26

    :pswitch_48
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_27

    :pswitch_49
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_29

    :pswitch_4a
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Lo/LoanStatusResponse$Input;

    if-eqz v9, :cond_b

    goto/16 :goto_2a

    :pswitch_4b
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_2b

    :pswitch_4c
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(II)I

    move-result v9

    goto/16 :goto_24

    :pswitch_4d
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v9, 0x0

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(IJ)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_4e
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(II)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_4f
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(IJ)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_50
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(IJ)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_51
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IF)I

    move-result v9

    goto/16 :goto_24

    :pswitch_52
    invoke-direct {v0, v1, v15, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v9, 0x0

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(ID)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_53
    iget-object v4, v0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v15, v9, v10}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_54
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/PoweredBy;)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_55
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onNavigationEvent(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_56
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->asInterface(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_57
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_58
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_59
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->extraCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5a
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onTransact(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5b
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto/16 :goto_1b

    :pswitch_5c
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5d
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5e
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_5f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onMessageChannelReady(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_60
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onPostMessage(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_61
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->asBinder(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    goto :goto_1b

    :pswitch_62
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lo/PossibleValues;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    iget-boolean v10, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v10, :cond_9

    :goto_1b
    int-to-long v9, v9

    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_24

    :pswitch_63
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_64
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_65
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_66
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_67
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;)I

    move-result v4

    goto :goto_1c

    :pswitch_68
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/PoweredBy;)I

    move-result v4

    goto :goto_1c

    :pswitch_69
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lo/PossibleValues;->extraCallback(ILjava/util/List;)I

    move-result v4

    goto :goto_1c

    :pswitch_6a
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->asInterface(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_6b
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_6c
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_6d
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_6e
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->asBinder(ILjava/util/List;Z)I

    move-result v4

    goto :goto_1c

    :pswitch_6f
    const/4 v9, 0x0

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onTransact(ILjava/util/List;Z)I

    move-result v4

    :goto_1c
    add-int/2addr v6, v4

    :cond_a
    :goto_1d
    const/4 v4, 0x0

    :goto_1e
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_2e

    :pswitch_70
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_1f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LoanSummary$Details;

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanSummary$Details;Lo/PoweredBy;)I

    move-result v4

    goto :goto_1c

    :pswitch_71
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    :goto_20
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(IJ)I

    move-result v4

    goto :goto_1c

    :pswitch_72
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_21
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(II)I

    move-result v4

    goto :goto_1c

    :pswitch_73
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_22
    const-wide/16 v9, 0x0

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(IJ)I

    move-result v4

    goto :goto_1c

    :pswitch_74
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_23
    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(II)I

    move-result v9

    :goto_24
    add-int/2addr v6, v9

    goto :goto_1d

    :pswitch_75
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_25
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->getInterfaceDescriptor(II)I

    move-result v4

    goto :goto_1c

    :pswitch_76
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_26
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(II)I

    move-result v4

    goto :goto_1c

    :pswitch_77
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_27
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_28
    check-cast v4, Lo/LoanStatusResponse$Input;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanStatusResponse$Input;)I

    move-result v4

    goto :goto_1c

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_29
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lo/PossibleValues;->onPostMessage(ILjava/lang/Object;Lo/PoweredBy;)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Lo/LoanStatusResponse$Input;

    if-eqz v9, :cond_b

    :goto_2a
    goto :goto_28

    :cond_b
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    :goto_2b
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(IZ)I

    move-result v4

    goto/16 :goto_1c

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(II)I

    move-result v9

    add-int/2addr v6, v9

    goto/16 :goto_1e

    :pswitch_7c
    const/4 v4, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_c

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(IJ)I

    move-result v9

    goto :goto_2c

    :pswitch_7d
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_c

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(II)I

    move-result v9

    goto :goto_2c

    :pswitch_7e
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_c

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(IJ)I

    move-result v9

    goto :goto_2c

    :pswitch_7f
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_c

    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(IJ)I

    move-result v9

    :goto_2c
    add-int/2addr v6, v9

    :cond_c
    const/4 v9, 0x0

    goto :goto_2d

    :pswitch_80
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(IF)I

    move-result v10

    add-int/2addr v6, v10

    :cond_d
    :goto_2d
    const-wide/16 v10, 0x0

    goto :goto_2e

    :pswitch_81
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_d

    const-wide/16 v10, 0x0

    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(ID)I

    move-result v15

    add-int/2addr v6, v15

    :goto_2e
    add-int/lit8 v5, v5, 0x4

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_18

    :cond_e
    iget-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v2, v1}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->asBinder()I

    move-result v1

    add-int/2addr v6, v1

    :cond_f
    return v6

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
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
        :pswitch_6f
        :pswitch_6e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_6e
        :pswitch_6f
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
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-direct {p0, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/PossibleValues;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_2

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_2
    const/4 v3, 0x0

    :cond_1
    :goto_3
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v2, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p2}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v3

    iget-object v4, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    goto/16 :goto_6

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(Ljava/lang/Object;J)Z

    move-result v3

    goto/16 :goto_9

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_d

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_c

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_a

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_b

    :pswitch_12
    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_7

    :goto_5
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_d

    :pswitch_14
    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_e

    :goto_8
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_d

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v3

    :goto_9
    invoke-static {v3}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onPostMessage(Z)I

    move-result v3

    goto :goto_d

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_d

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    goto :goto_c

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v3

    :goto_a
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_d

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_c
    invoke-static {v3, v4}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(J)I

    move-result v3

    :goto_d
    add-int/2addr v2, v3

    :cond_1
    :goto_e
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
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
        :pswitch_13
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

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-direct {p0, v4}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v7, v6}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->getInterfaceDescriptor:[I

    if-eqz v0, :cond_2

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    iget-object v4, p0, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->onNavigationEvent(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/Pitch;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/Pitch;",
            "Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const/4 v11, 0x0

    if-eqz v10, :cond_1c

    iget-object v12, v1, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    iget-object v13, v1, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    move-object v3, v11

    move-object v14, v3

    :cond_0
    :goto_0
    const/4 v15, 0x0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsCallback()I

    move-result v4

    invoke-direct {v1, v4}, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_a

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    iget-object v0, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    :goto_1
    if-ge v15, v3, :cond_1

    aget v4, v0, v15

    invoke-direct {v1, v2, v4, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v12, v2, v14}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-boolean v5, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-nez v5, :cond_4

    move-object v5, v11

    goto :goto_2

    :cond_4
    iget-object v5, v1, Lo/LoanSummary_ChargesJsonAdapter;->onRelationshipValidationResult:Lo/LoanSummary$Details;

    invoke-virtual {v13, v10, v5, v4}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onPostMessage(Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanSummary$Details;I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_6

    if-nez v3, :cond_5

    invoke-virtual {v13, v2}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v3

    :cond_5
    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    move-object v8, v14

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/Pitch;Ljava/lang/Object;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;Lo/LoanStatusResponse_AccountDetailsJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v3, v16

    goto :goto_0

    :cond_6
    invoke-virtual {v12, v0}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Lo/Pitch;)Z

    if-nez v14, :cond_7

    invoke-virtual {v12, v2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    :cond_7
    invoke-virtual {v12, v14, v0}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/Pitch;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    iget-object v0, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v0, :cond_8

    array-length v3, v0

    :goto_3
    if-ge v15, v3, :cond_8

    aget v4, v0, v15

    invoke-direct {v1, v2, v4, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v12, v2, v14}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    :try_start_2
    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v7, 0xff00000

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0x14

    const v8, 0xfffff

    packed-switch v7, :pswitch_data_0

    if-nez v14, :cond_14

    :try_start_3
    invoke-virtual {v12}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_17

    :pswitch_0
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v8

    invoke-interface {v0, v8, v10}, Lo/Pitch;->onPostMessage(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    invoke-direct {v1, v2, v4, v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->mayLaunchUrl()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->requestPostMessageChannel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->extraCommand()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_4
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->updateVisuals()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lo/Pitch;->postMessage()I

    move-result v7

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v9, v7}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v4, v7, v14, v12}, Lo/PossibleValues;->onPostMessage(IILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :cond_c
    :goto_5
    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v8, v9, v6}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_6
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->newSession()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_7
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_8
    invoke-direct {v1, v2, v4, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v7

    and-int/2addr v6, v8

    if-eqz v7, :cond_d

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v9

    invoke-interface {v0, v9, v10}, Lo/Pitch;->ICustomTabsCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    int-to-long v6, v6

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v8

    invoke-interface {v0, v8, v10}, Lo/Pitch;->ICustomTabsCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {v1, v2, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_9
    invoke-direct {v1, v2, v6, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;ILo/Pitch;)V

    goto/16 :goto_4

    :pswitch_a
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_b
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onTransact()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_c
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsCallback$Stub()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_d
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onRelationshipValidationResult()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_e
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->asInterface()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_f
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->asBinder()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_10
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->extraCallback()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_11
    and-int/2addr v6, v8

    int-to-long v6, v6

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onPostMessage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_12
    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v5

    and-int/2addr v5, v8

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    iget-object v7, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v7, v4}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object v8, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v8, v7}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v8, v4}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v9, v8, v7}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v5, v6, v8}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    :cond_f
    :goto_6
    iget-object v5, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v5, v7}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v1, Lo/LoanSummary_ChargesJsonAdapter;->updateVisuals:Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;

    invoke-interface {v6, v4}, Lo/LoanStatusResponse_UnregisteredMobileJsonAdapter;->asInterface(Ljava/lang/Object;)Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;

    move-result-object v4

    invoke-interface {v0, v5, v4, v10}, Lo/Pitch;->onPostMessage(Ljava/util/Map;Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v4

    iget-object v5, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    invoke-virtual {v5, v2, v6, v7}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5, v4, v10}, Lo/Pitch;->onNavigationEvent(Ljava/util/List;Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_7
    invoke-interface {v0, v4}, Lo/Pitch;->postMessage(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_8
    invoke-interface {v0, v4}, Lo/Pitch;->updateVisuals(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_9
    invoke-interface {v0, v4}, Lo/Pitch;->warmup(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_a
    invoke-interface {v0, v4}, Lo/Pitch;->ICustomTabsService(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v7, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Lo/Pitch;->getInterfaceDescriptor(Ljava/util/List;)V

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v5

    :goto_b
    invoke-static {v4, v6, v5, v14, v12}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/LoanStatusResponse_DataJsonAdapter;Ljava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_19
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_c
    invoke-interface {v0, v4}, Lo/Pitch;->newSession(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_d
    invoke-interface {v0, v4}, Lo/Pitch;->onTransact(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_e
    invoke-interface {v0, v4}, Lo/Pitch;->asInterface(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_f
    invoke-interface {v0, v4}, Lo/Pitch;->ICustomTabsCallback$Stub(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_10
    invoke-interface {v0, v4}, Lo/Pitch;->ICustomTabsCallback(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_11
    invoke-interface {v0, v4}, Lo/Pitch;->onNavigationEvent(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_12
    invoke-interface {v0, v4}, Lo/Pitch;->onMessageChannelReady(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_13
    invoke-interface {v0, v4}, Lo/Pitch;->onPostMessage(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    :goto_14
    invoke-interface {v0, v4}, Lo/Pitch;->extraCallback(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_23
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_8

    :pswitch_24
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_9

    :pswitch_25
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_a

    :pswitch_26
    iget-object v7, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int/2addr v6, v8

    int-to-long v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Lo/Pitch;->getInterfaceDescriptor(Ljava/util/List;)V

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v5

    goto/16 :goto_b

    :pswitch_27
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_c

    :pswitch_28
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lo/Pitch;->ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v4

    and-int v5, v6, v8

    int-to-long v5, v5

    iget-object v7, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    invoke-virtual {v7, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5, v4, v10}, Lo/Pitch;->onPostMessage(Ljava/util/List;Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v6}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lo/Pitch;->asBinder(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_10
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lo/Pitch;->onRelationshipValidationResult(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_d

    :pswitch_2c
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_e

    :pswitch_2d
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_f

    :pswitch_2e
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_10

    :pswitch_2f
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_11

    :pswitch_30
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_12

    :pswitch_31
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_13

    :pswitch_32
    iget-object v4, v1, Lo/LoanSummary_ChargesJsonAdapter;->postMessage:Lo/LoanStatusResponse_ScheduleJsonAdapter;

    and-int v5, v6, v8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lo/LoanStatusResponse_ScheduleJsonAdapter;->extraCallback(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_14

    :pswitch_33
    invoke-direct {v1, v2, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v5

    invoke-interface {v0, v5, v10}, Lo/Pitch;->onPostMessage(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_15
    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v4

    invoke-interface {v0, v4, v10}, Lo/Pitch;->onPostMessage(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_16
    invoke-direct {v1, v2, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->mayLaunchUrl()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto :goto_16

    :pswitch_35
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->requestPostMessageChannel()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_36
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->extraCommand()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto :goto_16

    :pswitch_37
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->updateVisuals()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_38
    invoke-interface/range {p2 .. p2}, Lo/Pitch;->postMessage()I

    move-result v7

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(I)Lo/LoanStatusResponse_DataJsonAdapter;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-interface {v9, v7}, Lo/LoanStatusResponse_DataJsonAdapter;->ICustomTabsCallback(I)Lo/LoanStatusResponse_DetailJsonAdapter;

    move-result-object v9

    if-eqz v9, :cond_b

    :cond_12
    and-int v4, v6, v8

    int-to-long v8, v4

    invoke-static {v2, v8, v9, v7}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_39
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->newSession()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto :goto_16

    :pswitch_3a
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16

    :pswitch_3b
    invoke-direct {v1, v2, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_13

    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v5

    invoke-interface {v0, v5, v10}, Lo/Pitch;->ICustomTabsCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_15

    :cond_13
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-direct {v1, v5}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v4

    invoke-interface {v0, v4, v10}, Lo/Pitch;->ICustomTabsCallback(Lo/PoweredBy;Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3c
    invoke-direct {v1, v2, v6, v0}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;ILo/Pitch;)V

    goto/16 :goto_16

    :pswitch_3d
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JZ)V

    goto/16 :goto_16

    :pswitch_3e
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onTransact()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto/16 :goto_16

    :pswitch_3f
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->ICustomTabsCallback$Stub()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto/16 :goto_16

    :pswitch_40
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onRelationshipValidationResult()I

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JI)V

    goto/16 :goto_16

    :pswitch_41
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->asInterface()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto/16 :goto_16

    :pswitch_42
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->asBinder()J

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;JJ)V

    goto/16 :goto_16

    :pswitch_43
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->extraCallback()F

    move-result v4

    invoke-static {v2, v6, v7, v4}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;JF)V

    goto/16 :goto_16

    :pswitch_44
    and-int v4, v6, v8

    int-to-long v6, v4

    invoke-interface/range {p2 .. p2}, Lo/Pitch;->onPostMessage()D

    move-result-wide v8

    invoke-static {v2, v6, v7, v8, v9}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;JD)V

    goto/16 :goto_16

    :cond_14
    :goto_17
    invoke-virtual {v12, v14, v0}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/Pitch;)Z

    move-result v4
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzbbv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_0

    iget-object v0, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v0, :cond_15

    array-length v3, v0

    :goto_18
    if-ge v15, v3, :cond_15

    aget v4, v0, v15

    invoke-direct {v1, v2, v4, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    :cond_15
    if-eqz v14, :cond_16

    invoke-virtual {v12, v2, v14}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    :catch_0
    :try_start_4
    invoke-virtual {v12, v0}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Lo/Pitch;)Z

    if-nez v14, :cond_17

    invoke-virtual {v12, v2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    :cond_17
    invoke-virtual {v12, v14, v0}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/Pitch;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_0

    iget-object v0, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v0, :cond_18

    array-length v3, v0

    :goto_19
    if-ge v15, v3, :cond_18

    aget v4, v0, v15

    invoke-direct {v1, v2, v4, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_18
    if-eqz v14, :cond_19

    invoke-virtual {v12, v2, v14}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsService:[I

    if-eqz v3, :cond_1a

    array-length v4, v3

    :goto_1a
    if-ge v15, v4, :cond_1a

    aget v5, v3, v15

    invoke-direct {v1, v2, v5, v14, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILjava/lang/Object;Lo/StashDataResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_1a
    if-eqz v14, :cond_1b

    invoke-virtual {v12, v2, v14}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v0

    :cond_1c
    throw v11

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
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lo/UpcomingEmiData;->onPostMessage()I

    move-result v0

    sget v1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsService:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Lo/UpcomingEmiData;)V

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->asInterface()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x4

    :goto_1
    if-ltz v7, :cond_4

    invoke-direct {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v8

    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v10, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v10, p2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_6

    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_7

    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_8

    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_9

    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_a

    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_b

    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_c

    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_d

    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_e

    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_f

    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_10

    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_11

    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_12

    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_13

    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_14

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/UpcomingEmiData;ILjava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_13
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_15

    :pswitch_14
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_15
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_16
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_17
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_18
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_19
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1a
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1b
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1c
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1d
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1e
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_1f
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_20
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_21
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_22
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_23
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_24
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_25
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_26
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_27
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_28
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_15

    :pswitch_29
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_15

    :pswitch_2a
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_15

    :pswitch_2b
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_2c
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_2d
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_2e
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_2f
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_30
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_31
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_32
    iget-object v9, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_15

    :pswitch_33
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_3
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_15

    :pswitch_34
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_4
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->onPostMessage(IJ)V

    goto/16 :goto_15

    :pswitch_35
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_5
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->asBinder(II)V

    goto/16 :goto_15

    :pswitch_36
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_6
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->onMessageChannelReady(IJ)V

    goto/16 :goto_15

    :pswitch_37
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_7
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->extraCallback(II)V

    goto/16 :goto_15

    :pswitch_38
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_8
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->onNavigationEvent(II)V

    goto/16 :goto_15

    :pswitch_39
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_9
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->ICustomTabsCallback(II)V

    goto/16 :goto_15

    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_a
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/LoanStatusResponse$Input;

    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    goto/16 :goto_15

    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_b
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_15

    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_c
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(ILjava/lang/Object;Lo/UpcomingEmiData;)V

    goto/16 :goto_15

    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v8

    :goto_d
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->extraCallback(IZ)V

    goto/16 :goto_15

    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_e
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->onMessageChannelReady(II)V

    goto :goto_15

    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_f
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->ICustomTabsCallback(IJ)V

    goto :goto_15

    :pswitch_40
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    :goto_10
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->onPostMessage(II)V

    goto :goto_15

    :pswitch_41
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_11
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->extraCallback(IJ)V

    goto :goto_15

    :pswitch_42
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_12
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->onNavigationEvent(IJ)V

    goto :goto_15

    :pswitch_43
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v8

    :goto_13
    invoke-interface {p2, v9, v8}, Lo/UpcomingEmiData;->ICustomTabsCallback(IF)V

    goto :goto_15

    :pswitch_44
    invoke-direct {p0, p1, v7}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_14
    invoke-interface {p2, v9, v10, v11}, Lo/UpcomingEmiData;->onPostMessage(ID)V

    :cond_3
    :goto_15
    add-int/lit8 v7, v7, -0x4

    goto/16 :goto_1

    :cond_4
    :goto_16
    if-eqz v1, :cond_6

    iget-object p1, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {p1, p2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_16

    :cond_5
    move-object v1, v3

    goto :goto_16

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->asBinder:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v0, p1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Ljava/lang/Object;)Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_17

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_17
    iget-object v7, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v7, :cond_c

    invoke-direct {p0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(I)I

    move-result v9

    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    :goto_19
    if-eqz v1, :cond_a

    iget-object v11, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v11, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v11, p2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_19

    :cond_9
    move-object v1, v3

    goto :goto_19

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_2c

    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_1a

    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1b

    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1c

    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_1d

    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1e

    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_1f

    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_20

    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_21

    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_22

    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    goto/16 :goto_23

    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onTransact(Ljava/lang/Object;J)Z

    move-result v9

    goto/16 :goto_24

    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_25

    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_26

    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_27

    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_28

    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_29

    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v9

    goto/16 :goto_2a

    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/LoanSummary_ChargesJsonAdapter;->extraCallback(Ljava/lang/Object;J)D

    move-result-wide v11

    goto/16 :goto_2b

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/UpcomingEmiData;ILjava/lang/Object;I)V

    goto/16 :goto_2c

    :pswitch_58
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_2c

    :pswitch_59
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5a
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5b
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5c
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5d
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5e
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_5f
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_60
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_61
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_62
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_63
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_64
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_65
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_66
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_67
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->ICustomTabsCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_68
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->asBinder(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_69
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->onTransact(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_6a
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->newSession(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_6b
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->ICustomTabsService(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_6c
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_6d
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_2c

    :pswitch_6e
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Lo/PoweredBy;)V

    goto/16 :goto_2c

    :pswitch_6f
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;)V

    goto/16 :goto_2c

    :pswitch_70
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->getInterfaceDescriptor(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_71
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->warmup(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_72
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->asInterface(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_73
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->onRelationshipValidationResult(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_74
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->onPostMessage(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_75
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->extraCallback(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_76
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->onMessageChannelReady(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_77
    iget-object v10, p0, Lo/LoanSummary_ChargesJsonAdapter;->onPostMessage:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lo/PossibleValues;->onNavigationEvent(ILjava/util/List;Lo/UpcomingEmiData;Z)V

    goto/16 :goto_2c

    :pswitch_78
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_1a
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/UpcomingEmiData;->onNavigationEvent(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_2c

    :pswitch_79
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1b
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->onPostMessage(IJ)V

    goto/16 :goto_2c

    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_1c
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->asBinder(II)V

    goto/16 :goto_2c

    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_1d
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->onMessageChannelReady(IJ)V

    goto/16 :goto_2c

    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_1e
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->extraCallback(II)V

    goto/16 :goto_2c

    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_1f
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->onNavigationEvent(II)V

    goto/16 :goto_2c

    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_20
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->ICustomTabsCallback(II)V

    goto/16 :goto_2c

    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_21
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/LoanStatusResponse$Input;

    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->ICustomTabsCallback(ILo/LoanStatusResponse$Input;)V

    goto/16 :goto_2c

    :pswitch_80
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_22
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(I)Lo/PoweredBy;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/UpcomingEmiData;->onMessageChannelReady(ILjava/lang/Object;Lo/PoweredBy;)V

    goto/16 :goto_2c

    :pswitch_81
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_23
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onRelationshipValidationResult(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(ILjava/lang/Object;Lo/UpcomingEmiData;)V

    goto/16 :goto_2c

    :pswitch_82
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->extraCallback(Ljava/lang/Object;J)Z

    move-result v9

    :goto_24
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->extraCallback(IZ)V

    goto/16 :goto_2c

    :pswitch_83
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_25
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->onMessageChannelReady(II)V

    goto :goto_2c

    :pswitch_84
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_26
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->ICustomTabsCallback(IJ)V

    goto :goto_2c

    :pswitch_85
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    :goto_27
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->onPostMessage(II)V

    goto :goto_2c

    :pswitch_86
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_28
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->extraCallback(IJ)V

    goto :goto_2c

    :pswitch_87
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_29
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->onNavigationEvent(IJ)V

    goto :goto_2c

    :pswitch_88
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v9

    :goto_2a
    invoke-interface {p2, v10, v9}, Lo/UpcomingEmiData;->ICustomTabsCallback(IF)V

    goto :goto_2c

    :pswitch_89
    invoke-direct {p0, p1, v8}, Lo/LoanSummary_ChargesJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lo/StashLandingResponse;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide v11

    :goto_2b
    invoke-interface {p2, v10, v11, v12}, Lo/UpcomingEmiData;->onPostMessage(ID)V

    :cond_b
    :goto_2c
    add-int/lit8 v8, v8, 0x4

    goto/16 :goto_18

    :cond_c
    :goto_2d
    if-eqz v1, :cond_e

    iget-object v2, p0, Lo/LoanSummary_ChargesJsonAdapter;->requestPostMessageChannel:Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;

    invoke-virtual {v2, p2, v1}, Lo/LoanStatusResponse_AadhaarInfoJsonAdapter;->extraCallback(Lo/UpcomingEmiData;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_d
    move-object v1, v3

    goto :goto_2d

    :cond_e
    iget-object v0, p0, Lo/LoanSummary_ChargesJsonAdapter;->extraCommand:Lo/StashDataResponseJsonAdapter;

    invoke-static {v0, p1, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onMessageChannelReady(Lo/StashDataResponseJsonAdapter;Ljava/lang/Object;Lo/UpcomingEmiData;)V

    return-void

    :cond_f
    invoke-direct {p0, p1, p2}, Lo/LoanSummary_ChargesJsonAdapter;->onNavigationEvent(Ljava/lang/Object;Lo/UpcomingEmiData;)V

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
