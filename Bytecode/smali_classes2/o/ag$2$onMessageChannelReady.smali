.class public final enum Lo/ag$2$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ag$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ag$2$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/ag$2$onMessageChannelReady;

.field public static final enum extraCallback:Lo/ag$2$onMessageChannelReady;

.field private static final synthetic onMessageChannelReady:[Lo/ag$2$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/ag$2$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lo/ag$2$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "NETWORK_UNMETERED"

    invoke-direct {v0, v2, v1}, Lo/ag$2$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ag$2$onMessageChannelReady;->extraCallback:Lo/ag$2$onMessageChannelReady;

    .line 34
    new-instance v0, Lo/ag$2$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DEVICE_IDLE"

    invoke-direct {v0, v3, v2}, Lo/ag$2$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ag$2$onMessageChannelReady;->onPostMessage:Lo/ag$2$onMessageChannelReady;

    .line 35
    new-instance v0, Lo/ag$2$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "DEVICE_CHARGING"

    invoke-direct {v0, v4, v3}, Lo/ag$2$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ag$2$onMessageChannelReady;->ICustomTabsCallback:Lo/ag$2$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/ag$2$onMessageChannelReady;

    .line 32
    sget-object v5, Lo/ag$2$onMessageChannelReady;->extraCallback:Lo/ag$2$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/ag$2$onMessageChannelReady;->onPostMessage:Lo/ag$2$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/ag$2$onMessageChannelReady;->onMessageChannelReady:[Lo/ag$2$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ag$2$onMessageChannelReady;
    .locals 1

    .line 32
    const-class v0, Lo/ag$2$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/ag$2$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/ag$2$onMessageChannelReady;
    .locals 1

    .line 32
    sget-object v0, Lo/ag$2$onMessageChannelReady;->onMessageChannelReady:[Lo/ag$2$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/ag$2$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ag$2$onMessageChannelReady;

    return-object v0
.end method
