.class final enum Lo/getSessionEventSize$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSessionEventSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getSessionEventSize$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/getSessionEventSize$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/getSessionEventSize$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getSessionEventSize$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getSessionEventSize$onMessageChannelReady;

.field private static final synthetic onTransact:[Lo/getSessionEventSize$onMessageChannelReady;


# instance fields
.field final ICustomTabsCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 330
    new-instance v0, Lo/getSessionEventSize$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lo/getSessionEventSize$onMessageChannelReady;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/getSessionEventSize$onMessageChannelReady;->extraCallback:Lo/getSessionEventSize$onMessageChannelReady;

    .line 331
    new-instance v0, Lo/getSessionEventSize$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lo/getSessionEventSize$onMessageChannelReady;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/getSessionEventSize$onMessageChannelReady;->onNavigationEvent:Lo/getSessionEventSize$onMessageChannelReady;

    .line 332
    new-instance v0, Lo/getSessionEventSize$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lo/getSessionEventSize$onMessageChannelReady;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/getSessionEventSize$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionEventSize$onMessageChannelReady;

    .line 333
    new-instance v0, Lo/getSessionEventSize$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lo/getSessionEventSize$onMessageChannelReady;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo/getSessionEventSize$onMessageChannelReady;->onPostMessage:Lo/getSessionEventSize$onMessageChannelReady;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getSessionEventSize$onMessageChannelReady;

    .line 329
    sget-object v6, Lo/getSessionEventSize$onMessageChannelReady;->extraCallback:Lo/getSessionEventSize$onMessageChannelReady;

    aput-object v6, v5, v1

    sget-object v1, Lo/getSessionEventSize$onMessageChannelReady;->onNavigationEvent:Lo/getSessionEventSize$onMessageChannelReady;

    aput-object v1, v5, v2

    sget-object v1, Lo/getSessionEventSize$onMessageChannelReady;->onMessageChannelReady:Lo/getSessionEventSize$onMessageChannelReady;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getSessionEventSize$onMessageChannelReady;->onTransact:[Lo/getSessionEventSize$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    iput-boolean p3, p0, Lo/getSessionEventSize$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getSessionEventSize$onMessageChannelReady;
    .locals 1

    .line 329
    const-class v0, Lo/getSessionEventSize$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getSessionEventSize$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getSessionEventSize$onMessageChannelReady;
    .locals 1

    .line 329
    sget-object v0, Lo/getSessionEventSize$onMessageChannelReady;->onTransact:[Lo/getSessionEventSize$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getSessionEventSize$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getSessionEventSize$onMessageChannelReady;

    return-object v0
.end method
