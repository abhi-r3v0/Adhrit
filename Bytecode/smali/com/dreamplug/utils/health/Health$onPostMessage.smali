.class public final enum Lcom/dreamplug/utils/health/Health$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/utils/health/Health;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dreamplug/utils/health/Health$onPostMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/utils/health/Health$Service;",
        "",
        "service",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getService",
        "()Ljava/lang/String;",
        "RIVER",
        "ONBOARDING",
        "NBA",
        "WIN",
        "LIFESTYLE",
        "CONTROL_FARM",
        "BENEFIT_FARM",
        "UNBILLED_FARM",
        "DEEPLINK",
        "MAINTENANCE",
        "UNKNOWN",
        "Companion",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum ICustomTabsCallback$Stub:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field private static final ICustomTabsService:[Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum asBinder:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum asInterface:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum extraCallback:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field private static final synthetic newSession:[Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum onNavigationEvent:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum onPostMessage:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final enum onTransact:Lcom/dreamplug/utils/health/Health$onPostMessage;

.field public static final warmup:Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;


# instance fields
.field public final ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/dreamplug/utils/health/Health$onPostMessage;

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v2, 0x0

    const-string v3, "RIVER"

    const-string/jumbo v4, "river"

    .line 38
    invoke-direct {v1, v3, v2, v4}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onPostMessage:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x1

    const-string v4, "ONBOARDING"

    const-string v5, "onboarding"

    .line 39
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "NBA"

    const-string v5, "nba"

    .line 40
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x3

    const-string v4, "WIN"

    const-string/jumbo v5, "win"

    .line 41
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onNavigationEvent:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x4

    const-string v4, "LIFESTYLE"

    const-string v5, "lifestyle"

    .line 42
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->extraCallback:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x5

    const-string v4, "CONTROL_FARM"

    const-string v5, "control_farm"

    .line 43
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x6

    const-string v4, "BENEFIT_FARM"

    const-string v5, "benefits_farm"

    .line 44
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onRelationshipValidationResult:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/4 v3, 0x7

    const-string v4, "UNBILLED_FARM"

    const-string/jumbo v5, "unbilled_farm"

    .line 45
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->asInterface:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/16 v3, 0x8

    const-string v4, "DEEPLINK"

    const-string v5, "deeplink"

    .line 46
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->asBinder:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/16 v3, 0x9

    const-string v4, "MAINTENANCE"

    const-string v5, "maintenance"

    .line 47
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->onTransact:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    new-instance v1, Lcom/dreamplug/utils/health/Health$onPostMessage;

    const/16 v3, 0xa

    const-string v4, "UNKNOWN"

    const-string/jumbo v5, "unknown"

    .line 48
    invoke-direct {v1, v4, v3, v5}, Lcom/dreamplug/utils/health/Health$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsCallback$Stub:Lcom/dreamplug/utils/health/Health$onPostMessage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->newSession:[Lcom/dreamplug/utils/health/Health$onPostMessage;

    new-instance v0, Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;

    invoke-direct {v0, v2}, Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;-><init>(B)V

    sput-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->warmup:Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;

    .line 51
    invoke-static {}, Lcom/dreamplug/utils/health/Health$onPostMessage;->values()[Lcom/dreamplug/utils/health/Health$onPostMessage;

    move-result-object v0

    sput-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsService:[Lcom/dreamplug/utils/health/Health$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic onMessageChannelReady()[Lcom/dreamplug/utils/health/Health$onPostMessage;
    .locals 1

    .line 37
    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsService:[Lcom/dreamplug/utils/health/Health$onPostMessage;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dreamplug/utils/health/Health$onPostMessage;
    .locals 1

    const-class v0, Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/utils/health/Health$onPostMessage;

    return-object p0
.end method

.method public static values()[Lcom/dreamplug/utils/health/Health$onPostMessage;
    .locals 1

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->newSession:[Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-virtual {v0}, [Lcom/dreamplug/utils/health/Health$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dreamplug/utils/health/Health$onPostMessage;

    return-object v0
.end method
