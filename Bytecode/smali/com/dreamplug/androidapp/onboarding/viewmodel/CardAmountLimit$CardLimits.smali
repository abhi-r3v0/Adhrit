.class public final Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardLimits"
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J2\u0010\u000f\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\n\u0010\u0008R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
        "",
        "totalCreditLimit",
        "",
        "availableCreditLimit",
        "availableCashLimit",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V",
        "getAvailableCashLimit",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getAvailableCreditLimit",
        "getTotalCreditLimit",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field final extraCallback:Ljava/lang/Double;

.field final onMessageChannelReady:Ljava/lang/Double;

.field final onPostMessage:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_credit_limit"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "available_credit_limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "available_cash_limit"
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onPostMessage:Ljava/lang/Double;

    iput-object p2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onMessageChannelReady:Ljava/lang/Double;

    iput-object p3, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->extraCallback:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;
    .locals 1
    .param p1    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_credit_limit"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "available_credit_limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "available_cash_limit"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onPostMessage:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onPostMessage:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onMessageChannelReady:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onMessageChannelReady:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->extraCallback:Ljava/lang/Double;

    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->extraCallback:Ljava/lang/Double;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onPostMessage:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onMessageChannelReady:Ljava/lang/Double;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->extraCallback:Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardLimits(totalCreditLimit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onPostMessage:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availableCreditLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->onMessageChannelReady:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availableCashLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;->extraCallback:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
