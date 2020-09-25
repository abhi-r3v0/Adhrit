.class public final Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;,
        Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002%&BW\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0016\u0008\u0003\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0017\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000cH\u00c6\u0003J[\u0010\u001f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0016\u0008\u0003\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u000cH\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001f\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
        "",
        "instrument_id",
        "",
        "statement_date",
        "card_limits",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
        "diagnosticsReport",
        "",
        "dues",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
        "insightsCount",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;I)V",
        "getCard_limits",
        "()Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
        "getDiagnosticsReport",
        "()Ljava/util/Map;",
        "getDues",
        "()Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
        "getInsightsCount",
        "()I",
        "getInstrument_id",
        "()Ljava/lang/String;",
        "getStatement_date",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "CardLimits",
        "Dues",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:I

.field public final extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

.field public final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

.field final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;I)V
    .locals 0
    .param p4    # Ljava/util/Map;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "diagnostics_report"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "insights_count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
            "I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    iput-object p4, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    iput-object p5, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    iput p6, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    const/4 p6, 0x0

    const/4 p7, 0x0

    goto :goto_5

    :cond_5
    move p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v0

    .line 14
    invoke-direct/range {p1 .. p7}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;I)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;I)Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;
    .locals 8
    .param p4    # Ljava/util/Map;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "diagnostics_report"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "insights_count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
            "I)",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;"
        }
    .end annotation

    new-instance v7, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;Ljava/util/Map;Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;I)V

    return-object v7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    iget p1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardAmountLimit(instrument_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statement_date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", card_limits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diagnosticsReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insightsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
