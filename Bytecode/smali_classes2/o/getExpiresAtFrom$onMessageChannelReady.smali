.class public final enum Lo/getExpiresAtFrom$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExpiresAtFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getExpiresAtFrom$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic extraCallback:[Lo/getExpiresAtFrom$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lo/getExpiresAtFrom$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "MATCHED"

    invoke-direct {v0, v2, v1}, Lo/getExpiresAtFrom$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    .line 38
    new-instance v0, Lo/getExpiresAtFrom$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "NOT_MATCHED"

    invoke-direct {v0, v3, v2}, Lo/getExpiresAtFrom$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExpiresAtFrom$onMessageChannelReady;->onNavigationEvent:Lo/getExpiresAtFrom$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getExpiresAtFrom$onMessageChannelReady;

    .line 34
    sget-object v4, Lo/getExpiresAtFrom$onMessageChannelReady;->onPostMessage:Lo/getExpiresAtFrom$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getExpiresAtFrom$onMessageChannelReady;->extraCallback:[Lo/getExpiresAtFrom$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 1

    .line 34
    const-class v0, Lo/getExpiresAtFrom$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/getExpiresAtFrom$onMessageChannelReady;
    .locals 1

    .line 34
    sget-object v0, Lo/getExpiresAtFrom$onMessageChannelReady;->extraCallback:[Lo/getExpiresAtFrom$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/getExpiresAtFrom$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getExpiresAtFrom$onMessageChannelReady;

    return-object v0
.end method
