.class public final Lo/getDecoratedMeasurementInOther;
.super Lo/calculateDistanceToFinalSnap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0019Bm\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u001b\u0008\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\t\u0012\u001b\u0008\u0002\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
        "title",
        "",
        "subTitle",
        "primaryCta",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "secondaryCta",
        "lottieRes",
        "",
        "lottieUrl",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/String;)V",
        "getLottieRes",
        "()I",
        "getLottieUrl",
        "()Ljava/lang/String;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta;",
        "getPrimaryCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/SimpleBottomSheetView$Cta;",
        "getSecondaryCta",
        "getSubTitle",
        "getTitle",
        "Cta",
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
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

.field public final onPostMessage:Ljava/lang/String;

.field public final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/getDecoratedMeasurementInOther;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;",
            "Lo/addWrites;",
            ">;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;",
            "Lo/addWrites;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lo/calculateDistanceToFinalSnap;-><init>(B)V

    iput-object p1, p0, Lo/getDecoratedMeasurementInOther;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/getDecoratedMeasurementInOther;->onPostMessage:Ljava/lang/String;

    iput p5, p0, Lo/getDecoratedMeasurementInOther;->onMessageChannelReady:I

    iput-object p6, p0, Lo/getDecoratedMeasurementInOther;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 28
    new-instance p2, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p2}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;-><init>()V

    .line 30
    invoke-interface {p3, p2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    new-instance p3, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    .line 1058
    iget-object p5, p2, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 1059
    iget-object p6, p2, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Ljava/lang/Integer;

    .line 1061
    iget-object p2, p2, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/getServerTime;

    .line 1057
    invoke-direct {p3, p5, p6, p2}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lo/getServerTime;)V

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 27
    :goto_0
    iput-object p3, p0, Lo/getDecoratedMeasurementInOther;->extraCallback:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    if-eqz p4, :cond_1

    .line 36
    new-instance p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;

    invoke-direct {p1}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;-><init>()V

    .line 38
    invoke-interface {p4, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    new-instance p2, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    .line 2058
    iget-object p3, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 2059
    iget-object p4, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Ljava/lang/Integer;

    .line 2061
    iget-object p1, p1, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/getServerTime;

    .line 2057
    invoke-direct {p2, p3, p4, p1}, Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lo/getServerTime;)V

    move-object p1, p2

    .line 35
    :cond_1
    iput-object p1, p0, Lo/getDecoratedMeasurementInOther;->onNavigationEvent:Lo/getDecoratedMeasurementInOther$ICustomTabsCallback;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;I)V
    .locals 6

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v1

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, v0

    move-object p3, v2

    move-object p4, v3

    move-object p5, v4

    move p6, v5

    .line 21
    invoke-direct/range {p1 .. p7}, Lo/getDecoratedMeasurementInOther;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;ILjava/lang/String;)V

    return-void
.end method
