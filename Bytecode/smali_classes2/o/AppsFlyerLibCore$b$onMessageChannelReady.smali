.class public final enum Lo/AppsFlyerLibCore$b$onMessageChannelReady;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppsFlyerLibCore$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/AppsFlyerLibCore$b$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/AppsFlyerLibCore$b$onMessageChannelReady;

.field public static final enum extraCallback:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/AppsFlyerLibCore$b$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    new-instance v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "MALE"

    invoke-direct {v0, v3, v2}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->extraCallback:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    new-instance v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "FEMALE"

    invoke-direct {v0, v4, v3}, Lo/AppsFlyerLibCore$b$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->onPostMessage:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    sget-object v5, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->onMessageChannelReady:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->extraCallback:Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->ICustomTabsCallback:[Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/AppsFlyerLibCore$b$onMessageChannelReady;
    .locals 1

    const-class v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/AppsFlyerLibCore$b$onMessageChannelReady;
    .locals 1

    sget-object v0, Lo/AppsFlyerLibCore$b$onMessageChannelReady;->ICustomTabsCallback:[Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/AppsFlyerLibCore$b$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/AppsFlyerLibCore$b$onMessageChannelReady;

    return-object v0
.end method
