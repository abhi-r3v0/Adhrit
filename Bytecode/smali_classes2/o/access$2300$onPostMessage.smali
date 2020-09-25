.class public final enum Lo/access$2300$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$2300;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/access$2300$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/access$2300$onPostMessage;

.field private static final synthetic onMessageChannelReady:[Lo/access$2300$onPostMessage;

.field public static final enum onNavigationEvent:Lo/access$2300$onPostMessage;

.field public static final enum onPostMessage:Lo/access$2300$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 76
    new-instance v0, Lo/access$2300$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "ALPN_AND_NPN"

    invoke-direct {v0, v2, v1}, Lo/access$2300$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    .line 77
    new-instance v0, Lo/access$2300$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "NPN"

    invoke-direct {v0, v3, v2}, Lo/access$2300$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/access$2300$onPostMessage;->onNavigationEvent:Lo/access$2300$onPostMessage;

    .line 78
    new-instance v0, Lo/access$2300$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3}, Lo/access$2300$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/access$2300$onPostMessage;->ICustomTabsCallback:Lo/access$2300$onPostMessage;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/access$2300$onPostMessage;

    .line 75
    sget-object v5, Lo/access$2300$onPostMessage;->onPostMessage:Lo/access$2300$onPostMessage;

    aput-object v5, v4, v1

    sget-object v1, Lo/access$2300$onPostMessage;->onNavigationEvent:Lo/access$2300$onPostMessage;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/access$2300$onPostMessage;->onMessageChannelReady:[Lo/access$2300$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/access$2300$onPostMessage;
    .locals 1

    .line 75
    const-class v0, Lo/access$2300$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/access$2300$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/access$2300$onPostMessage;
    .locals 1

    .line 75
    sget-object v0, Lo/access$2300$onPostMessage;->onMessageChannelReady:[Lo/access$2300$onPostMessage;

    invoke-virtual {v0}, [Lo/access$2300$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/access$2300$onPostMessage;

    return-object v0
.end method
