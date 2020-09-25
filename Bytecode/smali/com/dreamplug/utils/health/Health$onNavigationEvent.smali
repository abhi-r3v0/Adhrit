.class public final enum Lcom/dreamplug/utils/health/Health$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/utils/health/Health;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dreamplug/utils/health/Health$onNavigationEvent;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/utils/health/Health$Status;",
        "",
        "status",
        "",
        "(Ljava/lang/String;II)V",
        "getStatus",
        "()I",
        "GREEN",
        "YELLOW",
        "RED",
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
.field public static final enum ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

.field public static final enum extraCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

.field public static final onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;

.field public static final enum onPostMessage:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

.field private static final onRelationshipValidationResult:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

.field private static final synthetic onTransact:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;


# instance fields
.field public final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    new-instance v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "GREEN"

    .line 57
    invoke-direct {v2, v5, v4, v3}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onPostMessage:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    aput-object v2, v1, v4

    new-instance v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    const/4 v5, 0x2

    const-string v6, "YELLOW"

    .line 58
    invoke-direct {v2, v6, v3, v5}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    const/4 v3, 0x3

    const-string v6, "RED"

    .line 59
    invoke-direct {v2, v6, v5, v3}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    aput-object v2, v1, v5

    new-instance v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    const-string v5, "UNKNOWN"

    .line 60
    invoke-direct {v2, v5, v3, v0}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->extraCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    aput-object v2, v1, v3

    sput-object v1, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onTransact:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    new-instance v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;

    invoke-direct {v0, v4}, Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;-><init>(B)V

    sput-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;

    .line 63
    invoke-static {}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->values()[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v0

    sput-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onRelationshipValidationResult:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onNavigationEvent:I

    return-void
.end method

.method public static final synthetic onMessageChannelReady()[Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 1

    .line 56
    sget-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onRelationshipValidationResult:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 1

    const-class v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 1

    sget-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onTransact:[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    invoke-virtual {v0}, [Lcom/dreamplug/utils/health/Health$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-object v0
.end method
