.class final enum Lo/getAndroidMinimumVersion$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getAndroidMinimumVersion$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getAndroidMinimumVersion$onPostMessage;

.field private static final synthetic onMessageChannelReady:[Lo/getAndroidMinimumVersion$onPostMessage;

.field public static final enum onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lo/getAndroidMinimumVersion$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "DAY"

    invoke-direct {v0, v2, v1}, Lo/getAndroidMinimumVersion$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    .line 64
    new-instance v0, Lo/getAndroidMinimumVersion$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "YEAR"

    invoke-direct {v0, v3, v2}, Lo/getAndroidMinimumVersion$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->ICustomTabsCallback:Lo/getAndroidMinimumVersion$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getAndroidMinimumVersion$onPostMessage;

    .line 62
    sget-object v4, Lo/getAndroidMinimumVersion$onPostMessage;->onPostMessage:Lo/getAndroidMinimumVersion$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getAndroidMinimumVersion$onPostMessage;->onMessageChannelReady:[Lo/getAndroidMinimumVersion$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getAndroidMinimumVersion$onPostMessage;
    .locals 1

    .line 62
    const-class v0, Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getAndroidMinimumVersion$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/getAndroidMinimumVersion$onPostMessage;
    .locals 1

    .line 62
    sget-object v0, Lo/getAndroidMinimumVersion$onPostMessage;->onMessageChannelReady:[Lo/getAndroidMinimumVersion$onPostMessage;

    invoke-virtual {v0}, [Lo/getAndroidMinimumVersion$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getAndroidMinimumVersion$onPostMessage;

    return-object v0
.end method
