.class final Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lo/PoweredByJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PoweredByJsonAdapter<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Z

.field private onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;-><init>(Z)V

    sput-object v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lo/PoweredByJsonAdapter;->onPostMessage(I)Lo/PoweredByJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    invoke-static {p1}, Lo/PoweredByJsonAdapter;->onPostMessage(I)Lo/PoweredByJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {p0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/getStatus_message;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lo/LoanStatusResponse_BankJsonAdapter;->ICustomTabsCallback:[I

    invoke-virtual {p0}, Lo/getStatus_message;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lo/LoanStatusResponse_DetailJsonAdapter;

    if-eqz p0, :cond_0

    check-cast p1, Lo/LoanStatusResponse_DetailJsonAdapter;

    invoke-interface {p1}, Lo/LoanStatusResponse_DetailJsonAdapter;->onPostMessage()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->warmup(I)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->warmup(I)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(J)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->onTransact(I)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asInterface(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lo/LoanStatusResponse$Input;

    if-eqz p0, :cond_1

    check-cast p1, Lo/LoanStatusResponse$Input;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanStatusResponse$Input;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady([B)I

    move-result p0

    return p0

    :pswitch_7
    instance-of p0, p1, Lo/LoanStatusResponse$Input;

    if-eqz p0, :cond_2

    check-cast p1, Lo/LoanStatusResponse$Input;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanStatusResponse$Input;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8
    instance-of p0, p1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz p0, :cond_3

    check-cast p1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanStatusResponse_OkycSetupJsonAdapter;)I

    move-result p0

    return p0

    :cond_3
    check-cast p1, Lo/LoanSummary$Details;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanSummary$Details;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lo/LoanSummary$Details;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(Lo/LoanSummary$Details;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Z)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->onRelationshipValidationResult(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->asBinder(I)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(F)I

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(D)I

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

.method private static ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lo/LoanSummaryJsonAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lo/LoanSummaryJsonAdapter;

    invoke-interface {p0}, Lo/LoanSummaryJsonAdapter;->onNavigationEvent()Lo/LoanSummaryJsonAdapter;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private final ICustomTabsCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onNavigationEvent()Lo/getStatus_message;

    move-result-object v4

    invoke-static {v4, v3}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onNavigationEvent()Lo/getStatus_message;

    move-result-object v0

    invoke-static {v0, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    :cond_3
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0, p1, p2}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final extraCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0, p1}, Lo/PoweredByJsonAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/LoanStatusResponse_InputDataJsonAdapter;->extraCallback()Lo/LoanSummary$Details;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final extraCallback(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz v1, :cond_0

    invoke-static {}, Lo/LoanStatusResponse_InputDataJsonAdapter;->extraCallback()Lo/LoanSummary$Details;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {p1, v0, v1}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->extraCallback()Lo/TotalPayable;

    move-result-object v1

    sget-object v2, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    if-ne v1, v2, :cond_6

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-static {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v2, v1, Lo/LoanSummaryJsonAdapter;

    if-eqz v2, :cond_5

    check-cast v1, Lo/LoanSummaryJsonAdapter;

    check-cast p1, Lo/LoanSummaryJsonAdapter;

    invoke-interface {v0, v1, p1}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onNavigationEvent(Lo/LoanSummaryJsonAdapter;Lo/LoanSummaryJsonAdapter;)Lo/LoanSummaryJsonAdapter;

    move-result-object p1

    goto :goto_1

    :cond_5
    check-cast v1, Lo/LoanSummary$Details;

    invoke-interface {v1}, Lo/LoanSummary$Details;->extraCommand()Lo/LoanSummaryData;

    move-result-object v1

    check-cast p1, Lo/LoanSummary$Details;

    invoke-interface {v0, v1, p1}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onPostMessage(Lo/LoanSummaryData;Lo/LoanSummary$Details;)Lo/LoanSummaryData;

    move-result-object p1

    invoke-interface {p1}, Lo/LoanSummaryData;->onMessageChannelReady()Lo/LoanSummary$Details;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1, v0, p1}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-static {p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/PoweredByJsonAdapter;->onMessageChannelReady(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onMessageChannelReady()Lo/LoanStatusResponse_AccountDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
            "TT;>;>()",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage:Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    return-object v0
.end method

.method private static onNavigationEvent(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->extraCallback()Lo/TotalPayable;

    move-result-object v2

    sget-object v3, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {p0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->ICustomTabsCallback()I

    move-result p0

    if-eqz v0, :cond_0

    check-cast v1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(ILo/LoanStatusResponse_OkycSetupJsonAdapter;)I

    move-result p0

    return p0

    :cond_0
    check-cast v1, Lo/LoanSummary$Details;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(ILo/LoanSummary$Details;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v0, v1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LoanStatusResponse_AadhaarOtpJsonAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onNavigationEvent()Lo/getStatus_message;

    move-result-object v0

    invoke-interface {p0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->ICustomTabsCallback()I

    move-result v1

    invoke-interface {p0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onPostMessage()Z

    move-result p0

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Lo/getStatus_message;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback$Stub$Proxy(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Lo/getStatus_message;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->ICustomTabsCallback(I)I

    move-result p1

    sget-object v0, Lo/getStatus_message;->onTransact:Lo/getStatus_message;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lo/LoanSummary$Details;

    invoke-static {v0}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onMessageChannelReady(Lo/LoanSummary$Details;)Z

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p0, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Lo/getStatus_message;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static onNavigationEvent(Lcom/google/android/gms/internal/ads/zzbav;Lo/getStatus_message;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo/getStatus_message;->onTransact:Lo/getStatus_message;

    if-ne p1, v0, :cond_0

    check-cast p3, Lo/LoanSummary$Details;

    invoke-static {p3}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onMessageChannelReady(Lo/LoanSummary$Details;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    invoke-interface {p3, p0}, Lo/LoanSummary$Details;->extraCallback(Lcom/google/android/gms/internal/ads/zzbav;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lo/getStatus_message;->ICustomTabsCallback()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(II)V

    sget-object p2, Lo/LoanStatusResponse_BankJsonAdapter;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Lo/getStatus_message;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of p1, p3, Lo/LoanStatusResponse_DetailJsonAdapter;

    if-eqz p1, :cond_1

    check-cast p3, Lo/LoanStatusResponse_DetailJsonAdapter;

    invoke-interface {p3}, Lo/LoanStatusResponse_DetailJsonAdapter;->onPostMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(I)V

    return-void

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(I)V

    goto/16 :goto_0

    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(J)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(I)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(J)V

    return-void

    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lo/LoanStatusResponse$Input;

    if-eqz p1, :cond_2

    check-cast p3, Lo/LoanStatusResponse$Input;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanStatusResponse$Input;)V

    return-void

    :cond_2
    check-cast p3, [B

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage([BII)V

    return-void

    :pswitch_7
    instance-of p1, p3, Lo/LoanStatusResponse$Input;

    if-eqz p1, :cond_3

    check-cast p3, Lo/LoanStatusResponse$Input;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Lo/LoanStatusResponse$Input;)V

    return-void

    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :pswitch_8
    check-cast p3, Lo/LoanSummary$Details;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(Lo/LoanSummary$Details;)V

    return-void

    :pswitch_9
    check-cast p3, Lo/LoanSummary$Details;

    invoke-interface {p3, p0}, Lo/LoanSummary$Details;->extraCallback(Lcom/google/android/gms/internal/ads/zzbav;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(Z)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onMessageChannelReady(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->onPostMessage(F)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->onNavigationEvent(D)V

    :goto_0
    return-void

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

.method private static onNavigationEvent(Lo/getStatus_message;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lo/LoanStatusResponse_ErrorObjectJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lo/LoanStatusResponse_BankJsonAdapter;->onMessageChannelReady:[I

    invoke-virtual {p0}, Lo/getStatus_message;->extraCallback()Lo/TotalPayable;

    move-result-object p0

    invoke-virtual {p0}, Lo/TotalPayable;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, p1, Lo/LoanSummary$Details;

    if-nez p0, :cond_1

    instance-of p0, p1, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lo/LoanStatusResponse_DetailJsonAdapter;

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_2
    instance-of p0, p1, Lo/LoanStatusResponse$Input;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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

.method private static onPostMessage(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->extraCallback()Lo/TotalPayable;

    move-result-object v1

    sget-object v2, Lo/TotalPayable;->ICustomTabsCallback$Stub:Lo/TotalPayable;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/LoanSummary$Details;

    invoke-interface {v0}, Lo/LoanSummary$Details;->ICustomTabsService()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    instance-of v0, p0, Lo/LoanSummary$Details;

    if-eqz v0, :cond_2

    check-cast p0, Lo/LoanSummary$Details;

    invoke-interface {p0}, Lo/LoanSummary$Details;->ICustomTabsService()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lo/LoanStatusResponse_InputDataJsonAdapter;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/LoanStatusResponse_RequiredDataJsonAdapter;

    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1}, Lo/PoweredByJsonAdapter;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_RequiredDataJsonAdapter;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2, v0}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->ICustomTabsCallback()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final asBinder()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2, v0}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->ICustomTabsCallback()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method final asInterface()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/LoanStatusResponse_RequiredDataJsonAdapter;

    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1}, Lo/PoweredByJsonAdapter;->onPostMessage()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_RequiredDataJsonAdapter;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->onPostMessage()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    invoke-direct {v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2, v1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1}, Lo/PoweredByJsonAdapter;->ICustomTabsCallback()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback(Lo/LoanStatusResponse_AadhaarOtpJsonAdapter;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    iput-boolean v1, v0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;

    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    iget-object p1, p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0, p1}, Lo/PoweredByJsonAdapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback()V
    .locals 1

    iget-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->onMessageChannelReady()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent:Z

    return-void
.end method

.method public final extraCallback(Lo/LoanStatusResponse_AccountDetailsJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LoanStatusResponse_AccountDetailsJsonAdapter<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1, v0}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {p1}, Lo/PoweredByJsonAdapter;->ICustomTabsCallback()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->extraCallback(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-boolean v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent:Z

    return v0
.end method

.method final onPostMessage()Z
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v0}, Lo/PoweredByJsonAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2}, Lo/PoweredByJsonAdapter;->onNavigationEvent()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v2, v1}, Lo/PoweredByJsonAdapter;->onNavigationEvent(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    invoke-virtual {v1}, Lo/PoweredByJsonAdapter;->ICustomTabsCallback()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onPostMessage(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
