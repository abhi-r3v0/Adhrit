.class public final enum Lo/toFeaturesJson$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toFeaturesJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/toFeaturesJson$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

.field private static final synthetic asInterface:[Lo/toFeaturesJson$onMessageChannelReady;

.field public static final enum extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

.field public static final enum onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

.field public static final enum onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "CONTINUOUS"

    invoke-direct {v0, v2, v1}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "BINARY"

    invoke-direct {v0, v4, v3}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v4, 0x3

    const-string v5, "PING"

    invoke-direct {v0, v5, v4}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v5, 0x4

    const-string v6, "PONG"

    invoke-direct {v0, v6, v5}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    new-instance v0, Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v6, 0x5

    const-string v7, "CLOSING"

    invoke-direct {v0, v7, v6}, Lo/toFeaturesJson$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onRelationshipValidationResult:Lo/toFeaturesJson$onMessageChannelReady;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/toFeaturesJson$onMessageChannelReady;

    .line 8
    sget-object v8, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    aput-object v8, v7, v1

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    aput-object v1, v7, v2

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

    aput-object v1, v7, v3

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->ICustomTabsCallback:Lo/toFeaturesJson$onMessageChannelReady;

    aput-object v1, v7, v4

    sget-object v1, Lo/toFeaturesJson$onMessageChannelReady;->onMessageChannelReady:Lo/toFeaturesJson$onMessageChannelReady;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/toFeaturesJson$onMessageChannelReady;->asInterface:[Lo/toFeaturesJson$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/toFeaturesJson$onMessageChannelReady;
    .locals 1

    .line 8
    const-class v0, Lo/toFeaturesJson$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/toFeaturesJson$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/toFeaturesJson$onMessageChannelReady;
    .locals 1

    .line 8
    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->asInterface:[Lo/toFeaturesJson$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/toFeaturesJson$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/toFeaturesJson$onMessageChannelReady;

    return-object v0
.end method
