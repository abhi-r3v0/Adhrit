.class public final enum Lo/getQueryParams;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getQueryParams;",
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JC\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n2\u001c\u0010\u000b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000c2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\\\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\u0011\"\u0004\u0008\u0001\u0010\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012\u00a2\u0006\u0002\u0008\u00132\u0006\u0010\u0014\u001a\u0002H\u00112\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0087\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0007j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineStart;",
        "",
        "(Ljava/lang/String;I)V",
        "isLazy",
        "",
        "isLazy$annotations",
        "()V",
        "()Z",
        "invoke",
        "",
        "T",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "completion",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "R",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "receiver",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "DEFAULT",
        "LAZY",
        "ATOMIC",
        "UNDISPATCHED",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getQueryParams;

.field public static final enum extraCallback:Lo/getQueryParams;

.field private static final synthetic onMessageChannelReady:[Lo/getQueryParams;

.field public static final enum onNavigationEvent:Lo/getQueryParams;

.field public static final enum onPostMessage:Lo/getQueryParams;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lo/getQueryParams;

    new-instance v1, Lo/getQueryParams;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lo/getQueryParams;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getQueryParams;->ICustomTabsCallback:Lo/getQueryParams;

    aput-object v1, v0, v2

    new-instance v1, Lo/getQueryParams;

    const/4 v2, 0x1

    const-string v3, "LAZY"

    invoke-direct {v1, v3, v2}, Lo/getQueryParams;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getQueryParams;->onNavigationEvent:Lo/getQueryParams;

    aput-object v1, v0, v2

    new-instance v1, Lo/getQueryParams;

    const/4 v2, 0x2

    const-string v3, "ATOMIC"

    invoke-direct {v1, v3, v2}, Lo/getQueryParams;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getQueryParams;->extraCallback:Lo/getQueryParams;

    aput-object v1, v0, v2

    new-instance v1, Lo/getQueryParams;

    const/4 v2, 0x3

    const-string v3, "UNDISPATCHED"

    invoke-direct {v1, v3, v2}, Lo/getQueryParams;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/getQueryParams;->onPostMessage:Lo/getQueryParams;

    aput-object v1, v0, v2

    sput-object v0, Lo/getQueryParams;->onMessageChannelReady:[Lo/getQueryParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getQueryParams;
    .locals 1

    const-class v0, Lo/getQueryParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getQueryParams;

    return-object p0
.end method

.method public static values()[Lo/getQueryParams;
    .locals 1

    sget-object v0, Lo/getQueryParams;->onMessageChannelReady:[Lo/getQueryParams;

    invoke-virtual {v0}, [Lo/getQueryParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getQueryParams;

    return-object v0
.end method
