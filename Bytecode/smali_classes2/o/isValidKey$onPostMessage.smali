.class public final enum Lo/isValidKey$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isValidKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/isValidKey$onPostMessage;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "",
        "(Ljava/lang/String;I)V",
        "CPU_ACQUIRED",
        "BLOCKING",
        "PARKING",
        "DORMANT",
        "TERMINATED",
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
.field public static final enum ICustomTabsCallback:Lo/isValidKey$onPostMessage;

.field public static final enum extraCallback:Lo/isValidKey$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/isValidKey$onPostMessage;

.field public static final enum onNavigationEvent:Lo/isValidKey$onPostMessage;

.field public static final enum onPostMessage:Lo/isValidKey$onPostMessage;

.field private static final synthetic onTransact:[Lo/isValidKey$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lo/isValidKey$onPostMessage;

    new-instance v1, Lo/isValidKey$onPostMessage;

    const/4 v2, 0x0

    const-string v3, "CPU_ACQUIRED"

    invoke-direct {v1, v3, v2}, Lo/isValidKey$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/isValidKey$onPostMessage;->ICustomTabsCallback:Lo/isValidKey$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/isValidKey$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "BLOCKING"

    invoke-direct {v1, v3, v2}, Lo/isValidKey$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/isValidKey$onPostMessage;->onPostMessage:Lo/isValidKey$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/isValidKey$onPostMessage;

    const/4 v2, 0x2

    const-string v3, "PARKING"

    invoke-direct {v1, v3, v2}, Lo/isValidKey$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/isValidKey$onPostMessage;->extraCallback:Lo/isValidKey$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/isValidKey$onPostMessage;

    const/4 v2, 0x3

    const-string v3, "DORMANT"

    invoke-direct {v1, v3, v2}, Lo/isValidKey$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/isValidKey$onPostMessage;->onMessageChannelReady:Lo/isValidKey$onPostMessage;

    aput-object v1, v0, v2

    new-instance v1, Lo/isValidKey$onPostMessage;

    const/4 v2, 0x4

    const-string v3, "TERMINATED"

    invoke-direct {v1, v3, v2}, Lo/isValidKey$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/isValidKey$onPostMessage;->onNavigationEvent:Lo/isValidKey$onPostMessage;

    aput-object v1, v0, v2

    sput-object v0, Lo/isValidKey$onPostMessage;->onTransact:[Lo/isValidKey$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 927
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/isValidKey$onPostMessage;
    .locals 1

    const-class v0, Lo/isValidKey$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/isValidKey$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/isValidKey$onPostMessage;
    .locals 1

    sget-object v0, Lo/isValidKey$onPostMessage;->onTransact:[Lo/isValidKey$onPostMessage;

    invoke-virtual {v0}, [Lo/isValidKey$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/isValidKey$onPostMessage;

    return-object v0
.end method
