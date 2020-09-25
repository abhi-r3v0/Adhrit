.class public final enum Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/waitForAutomaticDataCollectionEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

.field public static final enum OTHER:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

.field public static final enum SERVER_RESET:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "SERVER_RESET"

    invoke-direct {v0, v2, v1}, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->SERVER_RESET:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    .line 25
    new-instance v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v2}, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->OTHER:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    .line 23
    sget-object v4, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->SERVER_RESET:Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->$VALUES:[Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;
    .locals 1

    .line 23
    const-class v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;
    .locals 1

    .line 23
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->$VALUES:[Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;

    return-object v0
.end method
