.class final Lo/CtaActionJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CtaActionJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final extraCallback:[Ljava/lang/String;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 495
    sput-object v0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->extraCallback:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p2, p0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onMessageChannelReady:I

    .line 504
    iput-object p1, p0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 506
    iput-object p4, p0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->onPostMessage:[Ljava/lang/String;

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;I)Lo/CtaActionJsonAdapter$onMessageChannelReady;
    .locals 4

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    const-string v1, "\\."

    .line 522
    invoke-static {p0, v1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 523
    aget-object v1, p0, v2

    .line 525
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 526
    array-length v2, p0

    invoke-static {p0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_1

    .line 528
    :cond_2
    sget-object p0, Lo/CtaActionJsonAdapter$onMessageChannelReady;->extraCallback:[Ljava/lang/String;

    .line 530
    :goto_1
    new-instance v2, Lo/CtaActionJsonAdapter$onMessageChannelReady;

    invoke-direct {v2, v1, p1, v0, p0}, Lo/CtaActionJsonAdapter$onMessageChannelReady;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static onNavigationEvent()Lo/CtaActionJsonAdapter$onMessageChannelReady;
    .locals 4

    .line 534
    new-instance v0, Lo/CtaActionJsonAdapter$onMessageChannelReady;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3, v1, v3, v2}, Lo/CtaActionJsonAdapter$onMessageChannelReady;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
