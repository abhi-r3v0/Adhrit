.class public final Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrencyAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrencyAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/dreamplug/androidapp/data/states/CredCurrency;",
        "currencyString",
        "",
        "toJson",
        "currency",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lo/drawableHotspotChanged;
    .locals 2
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrency;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "currencyString"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x215304

    if-eq v0, v1, :cond_1

    const v1, 0x3d52be2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "COINS"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lo/drawableHotspotChanged$onMessageChannelReady;->onMessageChannelReady:Lo/drawableHotspotChanged$onMessageChannelReady;

    check-cast p1, Lo/drawableHotspotChanged;

    return-object p1

    :cond_1
    const-string v0, "GEMS"

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lo/drawableHotspotChanged$ICustomTabsCallback;->ICustomTabsCallback:Lo/drawableHotspotChanged$ICustomTabsCallback;

    check-cast p1, Lo/drawableHotspotChanged;

    return-object p1

    .line 58
    :cond_2
    :goto_0
    new-instance v0, Lo/drawableHotspotChanged$onPostMessage;

    invoke-direct {v0, p1}, Lo/drawableHotspotChanged$onPostMessage;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/drawableHotspotChanged;

    return-object v0
.end method

.method public final toJson(Lo/drawableHotspotChanged;)Ljava/lang/String;
    .locals 1
    .param p1    # Lo/drawableHotspotChanged;
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrency;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string v0, "currency"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lo/drawableHotspotChanged$onMessageChannelReady;->onMessageChannelReady:Lo/drawableHotspotChanged$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "COINS"

    return-object p1

    .line 47
    :cond_0
    sget-object v0, Lo/drawableHotspotChanged$ICustomTabsCallback;->ICustomTabsCallback:Lo/drawableHotspotChanged$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "GEMS"

    return-object p1

    .line 48
    :cond_1
    instance-of v0, p1, Lo/drawableHotspotChanged$onPostMessage;

    if-eqz v0, :cond_2

    check-cast p1, Lo/drawableHotspotChanged$onPostMessage;

    .line 1006
    iget-object p1, p1, Lo/drawableHotspotChanged$onPostMessage;->onPostMessage:Ljava/lang/String;

    return-object p1

    .line 48
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
