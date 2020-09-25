.class public final enum Lo/getInstallVersion;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getInstallVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/getInstallVersion;

.field public static final enum extraCallback:Lo/getInstallVersion;

.field public static final enum onMessageChannelReady:Lo/getInstallVersion;

.field public static final enum onPostMessage:Lo/getInstallVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lo/getInstallVersion;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lo/getInstallVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getInstallVersion;->onMessageChannelReady:Lo/getInstallVersion;

    .line 23
    new-instance v0, Lo/getInstallVersion;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lo/getInstallVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    .line 26
    new-instance v0, Lo/getInstallVersion;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lo/getInstallVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getInstallVersion;

    .line 13
    sget-object v5, Lo/getInstallVersion;->onMessageChannelReady:Lo/getInstallVersion;

    aput-object v5, v4, v1

    sget-object v1, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getInstallVersion;->ICustomTabsCallback:[Lo/getInstallVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static extraCallback(Lo/getInstallVersion;Lo/getInstallVersion;)Lo/getInstallVersion;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getInstallVersion;
    .locals 1

    .line 13
    const-class v0, Lo/getInstallVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getInstallVersion;

    return-object p0
.end method

.method public static values()[Lo/getInstallVersion;
    .locals 1

    .line 13
    sget-object v0, Lo/getInstallVersion;->ICustomTabsCallback:[Lo/getInstallVersion;

    invoke-virtual {v0}, [Lo/getInstallVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getInstallVersion;

    return-object v0
.end method
