.class public final enum Lo/Campaign$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Campaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/Campaign$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/Campaign$onMessageChannelReady;

.field public static final enum extraCallback:Lo/Campaign$onMessageChannelReady;

.field private static final synthetic onNavigationEvent:[Lo/Campaign$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/Campaign$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 503
    new-instance v0, Lo/Campaign$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "FULL_FETCH"

    invoke-direct {v0, v2, v1}, Lo/Campaign$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Campaign$onMessageChannelReady;->extraCallback:Lo/Campaign$onMessageChannelReady;

    .line 506
    new-instance v0, Lo/Campaign$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "DISK_CACHE"

    invoke-direct {v0, v3, v2}, Lo/Campaign$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Campaign$onMessageChannelReady;->onPostMessage:Lo/Campaign$onMessageChannelReady;

    .line 509
    new-instance v0, Lo/Campaign$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "BITMAP_MEMORY_CACHE"

    invoke-direct {v0, v4, v3}, Lo/Campaign$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/Campaign$onMessageChannelReady;->ICustomTabsCallback:Lo/Campaign$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/Campaign$onMessageChannelReady;

    .line 501
    sget-object v5, Lo/Campaign$onMessageChannelReady;->extraCallback:Lo/Campaign$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lo/Campaign$onMessageChannelReady;->onPostMessage:Lo/Campaign$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/Campaign$onMessageChannelReady;->onNavigationEvent:[Lo/Campaign$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/Campaign$onMessageChannelReady;
    .locals 1

    .line 501
    const-class v0, Lo/Campaign$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/Campaign$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/Campaign$onMessageChannelReady;
    .locals 1

    .line 501
    sget-object v0, Lo/Campaign$onMessageChannelReady;->onNavigationEvent:[Lo/Campaign$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/Campaign$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/Campaign$onMessageChannelReady;

    return-object v0
.end method
