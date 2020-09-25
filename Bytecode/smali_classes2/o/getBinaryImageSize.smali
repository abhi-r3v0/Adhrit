.class final Lo/getBinaryImageSize;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getBinaryImageSize$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/getBinaryImageSize$ICustomTabsCallback<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/getBinaryImageSize;


# instance fields
.field final ICustomTabsCallback:Lo/Report$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Report$Type<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Z

.field onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Lo/getBinaryImageSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getBinaryImageSize;-><init>(B)V

    sput-object v0, Lo/getBinaryImageSize;->extraCallback:Lo/getBinaryImageSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    new-instance v0, Lo/Report$Type$3;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lo/Report$Type$3;-><init>(I)V

    .line 82
    iput-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .line 2095
    new-instance p1, Lo/Report$Type$3;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lo/Report$Type$3;-><init>(I)V

    .line 88
    invoke-direct {p0, p1}, Lo/getBinaryImageSize;-><init>(Lo/Report$Type;)V

    .line 2124
    iget-boolean p1, p0, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    .line 2127
    iget-object p1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {p1}, Lo/Report$Type;->ICustomTabsCallback()V

    const/4 p1, 0x1

    .line 2128
    iput-boolean p1, p0, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    :cond_0
    return-void
.end method

.method private constructor <init>(Lo/Report$Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Report$Type<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 3124
    iget-boolean v0, p0, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 3127
    invoke-virtual {p1}, Lo/Report$Type;->ICustomTabsCallback()V

    const/4 p1, 0x1

    .line 3128
    iput-boolean p1, p0, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    :cond_0
    return-void
.end method

.method static ICustomTabsCallback(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 783
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getBinaryImageSize$ICustomTabsCallback;

    .line 784
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 785
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onMessageChannelReady()Lo/DefaultCreateReportSpiCall$extraCallback;

    move-result-object v2

    sget-object v3, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    if-ne v2, v3, :cond_1

    .line 786
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 788
    instance-of v0, v1, Lo/getFrameSize;

    if-eqz v0, :cond_0

    .line 790
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onNavigationEvent()I

    move-result p0

    check-cast v1, Lo/getFrameSize;

    .line 789
    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/WireFormat;)I

    move-result p0

    return p0

    .line 793
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onNavigationEvent()I

    move-result p0

    check-cast v1, Lo/WireFormat$FieldType$2;

    .line 792
    invoke-static {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(ILo/WireFormat$FieldType$2;)I

    move-result p0

    return p0

    .line 796
    :cond_1
    invoke-static {v0, v1}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static ICustomTabsCallback(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)I
    .locals 1

    .line 811
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p1

    .line 812
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne p0, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 817
    :cond_0
    invoke-static {p0, p2}, Lo/getBinaryImageSize;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static extraCallback()Lo/getBinaryImageSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/getBinaryImageSize$ICustomTabsCallback<",
            "TT;>;>()",
            "Lo/getBinaryImageSize<",
            "TT;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lo/getBinaryImageSize;->extraCallback:Lo/getBinaryImageSize;

    return-object v0
.end method

.method static extraCallback(Lcom/google/protobuf/CodedOutputStream;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    .line 631
    check-cast p3, Lo/WireFormat$FieldType$2;

    const/4 p1, 0x3

    .line 14013
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 14038
    invoke-interface {p3, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    .line 14015
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    return-void

    .line 15164
    :cond_0
    iget v0, p1, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->updateVisuals:I

    .line 633
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(II)V

    .line 15649
    sget-object p2, Lo/getBinaryImageSize$3;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 15711
    :pswitch_0
    instance-of p1, p3, Lo/getEventLogSize$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 15712
    check-cast p3, Lo/getEventLogSize$ICustomTabsCallback;

    invoke-interface {p3}, Lo/getEventLogSize$ICustomTabsCallback;->extraCallback()I

    move-result p1

    .line 23455
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(I)V

    return-void

    .line 15714
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 24455
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(I)V

    goto/16 :goto_0

    .line 15707
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const/4 p3, 0x1

    shl-long v0, p1, p3

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    .line 22423
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void

    .line 15704
    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 21400
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void

    .line 15701
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 20432
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    return-void

    .line 15698
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 20409
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    return-void

    .line 15695
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(I)V

    return-void

    .line 15688
    :pswitch_6
    instance-of p1, p3, Lo/SessionProtobufHelper;

    if-eqz p1, :cond_2

    .line 15689
    check-cast p3, Lo/SessionProtobufHelper;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Lo/SessionProtobufHelper;)V

    return-void

    .line 15691
    :cond_2
    check-cast p3, [B

    .line 19469
    array-length p1, p3

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage([BI)V

    return-void

    .line 15681
    :pswitch_7
    instance-of p1, p3, Lo/SessionProtobufHelper;

    if-eqz p1, :cond_3

    .line 15682
    check-cast p3, Lo/SessionProtobufHelper;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Lo/SessionProtobufHelper;)V

    return-void

    .line 15684
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Ljava/lang/String;)V

    return-void

    .line 15678
    :pswitch_8
    check-cast p3, Lo/WireFormat$FieldType$2;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)V

    return-void

    .line 15675
    :pswitch_9
    check-cast p3, Lo/WireFormat$FieldType$2;

    .line 19038
    invoke-interface {p3, p0}, Lo/WireFormat$FieldType$2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void

    .line 15672
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    .line 18447
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(B)V

    return-void

    .line 15669
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    return-void

    .line 15666
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    return-void

    .line 15663
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(I)V

    return-void

    .line 15660
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void

    .line 15657
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 18414
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(J)V

    return-void

    .line 15654
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 17437
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(I)V

    return-void

    .line 15651
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 16442
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(J)V

    :goto_0
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
.end method

.method private static extraCallback(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/getBinaryImageSize$ICustomTabsCallback<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 459
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getBinaryImageSize$ICustomTabsCallback;

    .line 460
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onMessageChannelReady()Lo/DefaultCreateReportSpiCall$extraCallback;

    move-result-object v1

    sget-object v2, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 461
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WireFormat$FieldType$2;

    .line 463
    invoke-interface {v0}, Lo/WireFormat$FieldType$2;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 468
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 469
    instance-of v0, p0, Lo/WireFormat$FieldType$2;

    if-eqz v0, :cond_2

    .line 470
    check-cast p0, Lo/WireFormat$FieldType$2;

    invoke-interface {p0}, Lo/WireFormat$FieldType$2;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 473
    :cond_2
    instance-of p0, p0, Lo/getFrameSize;

    if-eqz p0, :cond_3

    return v3

    .line 476
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static onNavigationEvent(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBinaryImageSize$ICustomTabsCallback<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 893
    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->extraCallback()Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    move-result-object v0

    .line 894
    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onNavigationEvent()I

    move-result v1

    .line 895
    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    invoke-interface {p0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onPostMessage()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 898
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 899
    invoke-static {v0, p1}, Lo/getBinaryImageSize;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 902
    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 903
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->updateVisuals(I)I

    move-result p1

    :goto_1
    add-int/2addr p0, p1

    return p0

    .line 906
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 24811
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result v3

    .line 24812
    sget-object v4, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne v0, v4, :cond_2

    shl-int/lit8 v3, v3, 0x1

    .line 24817
    :cond_2
    invoke-static {v0, p1}, Lo/getBinaryImageSize;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v3, p1

    add-int/2addr v2, v3

    goto :goto_2

    :cond_3
    return v2

    .line 25811
    :cond_4
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->getInterfaceDescriptor(I)I

    move-result p0

    .line 25812
    sget-object v1, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    if-ne v0, v1, :cond_5

    shl-int/lit8 p0, p0, 0x1

    .line 25817
    :cond_5
    invoke-static {v0, p1}, Lo/getBinaryImageSize;->onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)I

    move-result p1

    goto :goto_1
.end method

.method private static onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)Z
    .locals 2

    .line 408
    invoke-static {p1}, Lo/getEventLogSize;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lo/getBinaryImageSize$3;->ICustomTabsCallback:[I

    .line 8160
    iget-object p0, p0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->requestPostMessageChannel:Lo/DefaultCreateReportSpiCall$extraCallback;

    .line 409
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 429
    :pswitch_0
    instance-of p0, p1, Lo/WireFormat$FieldType$2;

    if-nez p0, :cond_1

    instance-of p0, p1, Lo/getFrameSize;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    .line 426
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lo/getEventLogSize$ICustomTabsCallback;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0

    .line 423
    :pswitch_2
    instance-of p0, p1, Lo/SessionProtobufHelper;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v0

    .line 421
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 419
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 417
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 415
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 413
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 411
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static onPostMessage(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)I
    .locals 1

    .line 829
    sget-object v0, Lo/getBinaryImageSize$3;->onMessageChannelReady:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 888
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 881
    :pswitch_0
    instance-of p0, p1, Lo/getEventLogSize$ICustomTabsCallback;

    if-eqz p0, :cond_0

    .line 882
    check-cast p1, Lo/getEventLogSize$ICustomTabsCallback;

    invoke-interface {p1}, Lo/getEventLogSize$ICustomTabsCallback;->extraCallback()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->extraCommand(I)I

    move-result p0

    return p0

    .line 884
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->extraCommand(I)I

    move-result p0

    return p0

    .line 871
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady(J)I

    move-result p0

    return p0

    .line 869
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->newSession(I)I

    move-result p0

    return p0

    .line 867
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent()I

    move-result p0

    return p0

    .line 865
    :pswitch_4
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->extraCallback()I

    move-result p0

    return p0

    .line 863
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->warmup(I)I

    move-result p0

    return p0

    .line 851
    :pswitch_6
    instance-of p0, p1, Lo/SessionProtobufHelper;

    if-eqz p0, :cond_1

    .line 852
    check-cast p1, Lo/SessionProtobufHelper;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Lo/SessionProtobufHelper;)I

    move-result p0

    return p0

    .line 854
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback([B)I

    move-result p0

    return p0

    .line 857
    :pswitch_7
    instance-of p0, p1, Lo/SessionProtobufHelper;

    if-eqz p0, :cond_2

    .line 858
    check-cast p1, Lo/SessionProtobufHelper;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage(Lo/SessionProtobufHelper;)I

    move-result p0

    return p0

    .line 860
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 874
    :pswitch_8
    instance-of p0, p1, Lo/getFrameSize;

    if-eqz p0, :cond_3

    .line 875
    check-cast p1, Lo/getFrameSize;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(Lo/WireFormat;)I

    move-result p0

    return p0

    .line 877
    :cond_3
    check-cast p1, Lo/WireFormat$FieldType$2;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(Lo/WireFormat$FieldType$2;)I

    move-result p0

    return p0

    .line 849
    :pswitch_9
    check-cast p1, Lo/WireFormat$FieldType$2;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->extraCallback(Lo/WireFormat$FieldType$2;)I

    move-result p0

    return p0

    .line 847
    :pswitch_a
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onRelationshipValidationResult()I

    move-result p0

    return p0

    .line 845
    :pswitch_b
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onMessageChannelReady()I

    move-result p0

    return p0

    .line 843
    :pswitch_c
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback()I

    move-result p0

    return p0

    .line 841
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback$Stub$Proxy(I)I

    move-result p0

    return p0

    .line 839
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback(J)I

    move-result p0

    return p0

    .line 837
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->onNavigationEvent(J)I

    move-result p0

    return p0

    .line 835
    :pswitch_10
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onPostMessage()I

    move-result p0

    return p0

    .line 833
    :pswitch_11
    invoke-static {}, Lcom/google/protobuf/CodedOutputStream;->onTransact()I

    move-result p0

    return p0

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
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getBinaryImageSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBinaryImageSize<",
            "TT;>;"
        }
    .end annotation

    .line 4099
    new-instance v0, Lo/getBinaryImageSize;

    invoke-direct {v0}, Lo/getBinaryImageSize;-><init>()V

    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 4179
    iget-object v2, v2, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 4184
    iget-object v2, v2, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 4194
    iget-object v2, v1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 4196
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 175
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lo/getBinaryImageSize;->onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V

    goto :goto_2

    .line 178
    :cond_2
    iget-boolean v1, p0, Lo/getBinaryImageSize;->onNavigationEvent:Z

    iput-boolean v1, v0, Lo/getBinaryImageSize;->onNavigationEvent:Z

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lo/getBinaryImageSize;->ICustomTabsCallback()Lo/getBinaryImageSize;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    instance-of v0, p1, Lo/getBinaryImageSize;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_1
    check-cast p1, Lo/getBinaryImageSize;

    .line 152
    iget-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    iget-object p1, p1, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 157
    iget-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lo/getBinaryImageSize;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lo/getFrameSize$ICustomTabsCallback;

    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getFrameSize$ICustomTabsCallback;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final onMessageChannelReady(Ljava/util/Map$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 520
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getBinaryImageSize$ICustomTabsCallback;

    .line 521
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 522
    instance-of v1, p1, Lo/getFrameSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 523
    check-cast p1, Lo/getFrameSize;

    .line 9067
    invoke-virtual {p1, v2}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object p1

    .line 526
    :cond_0
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 9266
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9267
    instance-of v4, v1, Lo/getFrameSize;

    if-eqz v4, :cond_1

    .line 9268
    check-cast v1, Lo/getFrameSize;

    .line 10067
    invoke-virtual {v1, v2}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 532
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    .line 10508
    instance-of v5, v2, [B

    if-eqz v5, :cond_3

    .line 10509
    check-cast v2, [B

    .line 10510
    array-length v5, v2

    new-array v5, v5, [B

    .line 10511
    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    .line 532
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_4
    iget-object p1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {p1, v0, v1}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 535
    :cond_5
    invoke-interface {v0}, Lo/getBinaryImageSize$ICustomTabsCallback;->onMessageChannelReady()Lo/DefaultCreateReportSpiCall$extraCallback;

    move-result-object v1

    sget-object v4, Lo/DefaultCreateReportSpiCall$extraCallback;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$extraCallback;

    if-ne v1, v4, :cond_9

    .line 11266
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11267
    instance-of v4, v1, Lo/getFrameSize;

    if-eqz v4, :cond_6

    .line 11268
    check-cast v1, Lo/getFrameSize;

    .line 12067
    invoke-virtual {v1, v2}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_8

    .line 538
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 12508
    instance-of v2, p1, [B

    if-eqz v2, :cond_7

    .line 12509
    check-cast p1, [B

    .line 12510
    array-length v2, p1

    new-array v2, v2, [B

    .line 12511
    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 538
    :cond_7
    invoke-virtual {v1, v0, p1}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 541
    :cond_8
    check-cast v1, Lo/WireFormat$FieldType$2;

    .line 543
    invoke-interface {v1}, Lo/WireFormat$FieldType$2;->toBuilder()Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object v1

    check-cast p1, Lo/WireFormat$FieldType$2;

    invoke-interface {v0, v1, p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->onPostMessage(Lo/WireFormat$FieldType$2$extraCallback;Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2$extraCallback;

    move-result-object p1

    .line 544
    invoke-interface {p1}, Lo/WireFormat$FieldType$2$extraCallback;->build()Lo/WireFormat$FieldType$2;

    move-result-object p1

    .line 545
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1, v0, p1}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 548
    :cond_9
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 13508
    instance-of v2, p1, [B

    if-eqz v2, :cond_a

    .line 13509
    check-cast p1, [B

    .line 13510
    array-length v2, p1

    new-array v2, v2, [B

    .line 13511
    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 548
    :cond_a
    invoke-virtual {v1, v0, p1}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onMessageChannelReady(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-interface {p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->extraCallback()Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    move-result-object v0

    .line 6394
    invoke-static {v0, p2}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7266
    iget-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7267
    instance-of v1, v0, Lo/getFrameSize;

    if-eqz v1, :cond_0

    .line 7268
    check-cast v0, Lo/getFrameSize;

    const/4 v1, 0x0

    .line 8067
    invoke-virtual {v0, v1}, Lo/WireFormat;->onMessageChannelReady(Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v1, p1, v0}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 383
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6402
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/getBinaryImageSize$ICustomTabsCallback;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v0

    const-string v1, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_3

    .line 279
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 289
    invoke-interface {p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->extraCallback()Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    move-result-object v3

    .line 4394
    invoke-static {v3, v2}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4402
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object p2, v0

    goto :goto_1

    .line 280
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_3
    invoke-interface {p1}, Lo/getBinaryImageSize$ICustomTabsCallback;->extraCallback()Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    move-result-object v0

    .line 5394
    invoke-static {v0, p2}, Lo/getBinaryImageSize;->onNavigationEvent(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    :goto_1
    instance-of v0, p2, Lo/getFrameSize;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lo/getBinaryImageSize;->onNavigationEvent:Z

    .line 299
    :cond_4
    iget-object v0, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    invoke-virtual {v0, p1, p2}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5402
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    :goto_0
    iget-object v2, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 8179
    iget-object v2, v2, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 444
    iget-object v2, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 8184
    iget-object v2, v2, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 444
    invoke-static {v2}, Lo/getBinaryImageSize;->extraCallback(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lo/getBinaryImageSize;->ICustomTabsCallback:Lo/Report$Type;

    .line 8194
    iget-object v2, v1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 8196
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 448
    :goto_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 449
    invoke-static {v2}, Lo/getBinaryImageSize;->extraCallback(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
