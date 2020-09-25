.class public final enum Lo/setTransactionSuccessful;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setTransactionSuccessful;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setTransactionSuccessful;

.field private static final synthetic asBinder:[Lo/setTransactionSuccessful;

.field public static final enum extraCallback:Lo/setTransactionSuccessful;

.field public static final enum onMessageChannelReady:Lo/setTransactionSuccessful;

.field public static final enum onNavigationEvent:Lo/setTransactionSuccessful;

.field public static final enum onPostMessage:Lo/setTransactionSuccessful;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lo/setTransactionSuccessful;

    const/4 v1, 0x0

    const-string v2, "CONNECTING"

    invoke-direct {v0, v2, v1}, Lo/setTransactionSuccessful;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    .line 39
    new-instance v0, Lo/setTransactionSuccessful;

    const/4 v2, 0x1

    const-string v3, "READY"

    invoke-direct {v0, v3, v2}, Lo/setTransactionSuccessful;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    .line 50
    new-instance v0, Lo/setTransactionSuccessful;

    const/4 v3, 0x2

    const-string v4, "TRANSIENT_FAILURE"

    invoke-direct {v0, v4, v3}, Lo/setTransactionSuccessful;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 61
    new-instance v0, Lo/setTransactionSuccessful;

    const/4 v4, 0x3

    const-string v5, "IDLE"

    invoke-direct {v0, v5, v4}, Lo/setTransactionSuccessful;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    .line 71
    new-instance v0, Lo/setTransactionSuccessful;

    const/4 v5, 0x4

    const-string v6, "SHUTDOWN"

    invoke-direct {v0, v6, v5}, Lo/setTransactionSuccessful;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setTransactionSuccessful;

    .line 25
    sget-object v7, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    aput-object v7, v6, v1

    sget-object v1, Lo/setTransactionSuccessful;->onPostMessage:Lo/setTransactionSuccessful;

    aput-object v1, v6, v2

    sget-object v1, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    aput-object v1, v6, v3

    sget-object v1, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setTransactionSuccessful;->asBinder:[Lo/setTransactionSuccessful;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setTransactionSuccessful;
    .locals 1

    .line 25
    const-class v0, Lo/setTransactionSuccessful;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setTransactionSuccessful;

    return-object p0
.end method

.method public static values()[Lo/setTransactionSuccessful;
    .locals 1

    .line 25
    sget-object v0, Lo/setTransactionSuccessful;->asBinder:[Lo/setTransactionSuccessful;

    invoke-virtual {v0}, [Lo/setTransactionSuccessful;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setTransactionSuccessful;

    return-object v0
.end method
