.class public final enum Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeObject$onMessageChannelReady$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field private static enum extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field public static final enum onMessageChannelReady:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field private static final synthetic onNavigationEvent:[Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field public static final enum onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 531
    new-instance v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v1, 0x0

    const-string v2, "CT_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    new-instance v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v2, 0x1

    const-string v3, "CT_INFO"

    invoke-direct {v0, v3, v2}, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    new-instance v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v3, 0x2

    const-string v4, "CT_WARNING"

    invoke-direct {v0, v4, v3}, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onMessageChannelReady:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    new-instance v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v4, 0x3

    const-string v5, "CT_ERROR"

    invoke-direct {v0, v5, v4}, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 530
    sget-object v6, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onPostMessage:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onMessageChannelReady:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onNavigationEvent:[Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;
    .locals 1

    .line 530
    const-class v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;
    .locals 1

    .line 530
    sget-object v0, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->onNavigationEvent:[Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    invoke-virtual {v0}, [Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    return-object v0
.end method
