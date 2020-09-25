.class public final enum Lo/useEmulator;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/useEmulator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/useEmulator;

.field private static final synthetic extraCallback:[Lo/useEmulator;

.field public static final enum onMessageChannelReady:Lo/useEmulator;

.field public static final enum onNavigationEvent:Lo/useEmulator;

.field public static final enum onPostMessage:Lo/useEmulator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lo/useEmulator;

    const/4 v1, 0x0

    const-string v2, "SPDY_SYN_STREAM"

    invoke-direct {v0, v2, v1}, Lo/useEmulator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/useEmulator;->onPostMessage:Lo/useEmulator;

    .line 20
    new-instance v0, Lo/useEmulator;

    const/4 v2, 0x1

    const-string v3, "SPDY_REPLY"

    invoke-direct {v0, v3, v2}, Lo/useEmulator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/useEmulator;->onNavigationEvent:Lo/useEmulator;

    .line 21
    new-instance v0, Lo/useEmulator;

    const/4 v3, 0x2

    const-string v4, "SPDY_HEADERS"

    invoke-direct {v0, v4, v3}, Lo/useEmulator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/useEmulator;->onMessageChannelReady:Lo/useEmulator;

    .line 22
    new-instance v0, Lo/useEmulator;

    const/4 v4, 0x3

    const-string v5, "HTTP_20_HEADERS"

    invoke-direct {v0, v5, v4}, Lo/useEmulator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/useEmulator;->ICustomTabsCallback:Lo/useEmulator;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/useEmulator;

    .line 18
    sget-object v6, Lo/useEmulator;->onPostMessage:Lo/useEmulator;

    aput-object v6, v5, v1

    sget-object v1, Lo/useEmulator;->onNavigationEvent:Lo/useEmulator;

    aput-object v1, v5, v2

    sget-object v1, Lo/useEmulator;->onMessageChannelReady:Lo/useEmulator;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/useEmulator;->extraCallback:[Lo/useEmulator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/useEmulator;
    .locals 1

    .line 18
    const-class v0, Lo/useEmulator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/useEmulator;

    return-object p0
.end method

.method public static values()[Lo/useEmulator;
    .locals 1

    .line 18
    sget-object v0, Lo/useEmulator;->extraCallback:[Lo/useEmulator;

    invoke-virtual {v0}, [Lo/useEmulator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/useEmulator;

    return-object v0
.end method
