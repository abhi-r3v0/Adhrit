.class final enum Lo/getGravity$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getGravity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getGravity$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

.field private static final synthetic asBinder:[Lo/getGravity$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/getGravity$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/getGravity$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/getGravity$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/getGravity$ICustomTabsCallback;

.field public static final enum onTransact:Lo/getGravity$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 44
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->onMessageChannelReady:Lo/getGravity$ICustomTabsCallback;

    .line 46
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    .line 48
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "WAITING_FOR_SIZE"

    invoke-direct {v0, v4, v3}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    .line 50
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    .line 52
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "FAILED"

    invoke-direct {v0, v6, v5}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->onNavigationEvent:Lo/getGravity$ICustomTabsCallback;

    .line 54
    new-instance v0, Lo/getGravity$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "CLEARED"

    invoke-direct {v0, v7, v6}, Lo/getGravity$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getGravity$ICustomTabsCallback;->onTransact:Lo/getGravity$ICustomTabsCallback;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/getGravity$ICustomTabsCallback;

    .line 42
    sget-object v8, Lo/getGravity$ICustomTabsCallback;->onMessageChannelReady:Lo/getGravity$ICustomTabsCallback;

    aput-object v8, v7, v1

    sget-object v1, Lo/getGravity$ICustomTabsCallback;->extraCallback:Lo/getGravity$ICustomTabsCallback;

    aput-object v1, v7, v2

    sget-object v1, Lo/getGravity$ICustomTabsCallback;->onPostMessage:Lo/getGravity$ICustomTabsCallback;

    aput-object v1, v7, v3

    sget-object v1, Lo/getGravity$ICustomTabsCallback;->ICustomTabsCallback:Lo/getGravity$ICustomTabsCallback;

    aput-object v1, v7, v4

    sget-object v1, Lo/getGravity$ICustomTabsCallback;->onNavigationEvent:Lo/getGravity$ICustomTabsCallback;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/getGravity$ICustomTabsCallback;->asBinder:[Lo/getGravity$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getGravity$ICustomTabsCallback;
    .locals 1

    .line 42
    const-class v0, Lo/getGravity$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getGravity$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/getGravity$ICustomTabsCallback;
    .locals 1

    .line 42
    sget-object v0, Lo/getGravity$ICustomTabsCallback;->asBinder:[Lo/getGravity$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/getGravity$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getGravity$ICustomTabsCallback;

    return-object v0
.end method
