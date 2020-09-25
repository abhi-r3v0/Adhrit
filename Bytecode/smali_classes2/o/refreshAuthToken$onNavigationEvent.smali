.class final enum Lo/refreshAuthToken$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refreshAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/refreshAuthToken$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

.field public static final enum extraCallback:Lo/refreshAuthToken$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

.field public static final enum onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

.field private static final synthetic onRelationshipValidationResult:[Lo/refreshAuthToken$onNavigationEvent;

.field public static final enum onTransact:Lo/refreshAuthToken$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 102
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    .line 107
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "PING_SCHEDULED"

    invoke-direct {v0, v3, v2}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    .line 111
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "PING_DELAYED"

    invoke-direct {v0, v4, v3}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

    .line 115
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "PING_SENT"

    invoke-direct {v0, v5, v4}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    .line 119
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "IDLE_AND_PING_SENT"

    invoke-direct {v0, v6, v5}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    .line 123
    new-instance v0, Lo/refreshAuthToken$onNavigationEvent;

    const/4 v6, 0x5

    const-string v7, "DISCONNECTED"

    invoke-direct {v0, v7, v6}, Lo/refreshAuthToken$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/refreshAuthToken$onNavigationEvent;->onTransact:Lo/refreshAuthToken$onNavigationEvent;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/refreshAuthToken$onNavigationEvent;

    .line 97
    sget-object v8, Lo/refreshAuthToken$onNavigationEvent;->ICustomTabsCallback:Lo/refreshAuthToken$onNavigationEvent;

    aput-object v8, v7, v1

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->extraCallback:Lo/refreshAuthToken$onNavigationEvent;

    aput-object v1, v7, v2

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onNavigationEvent:Lo/refreshAuthToken$onNavigationEvent;

    aput-object v1, v7, v3

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onPostMessage:Lo/refreshAuthToken$onNavigationEvent;

    aput-object v1, v7, v4

    sget-object v1, Lo/refreshAuthToken$onNavigationEvent;->onMessageChannelReady:Lo/refreshAuthToken$onNavigationEvent;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/refreshAuthToken$onNavigationEvent;->onRelationshipValidationResult:[Lo/refreshAuthToken$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/refreshAuthToken$onNavigationEvent;
    .locals 1

    .line 97
    const-class v0, Lo/refreshAuthToken$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/refreshAuthToken$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/refreshAuthToken$onNavigationEvent;
    .locals 1

    .line 97
    sget-object v0, Lo/refreshAuthToken$onNavigationEvent;->onRelationshipValidationResult:[Lo/refreshAuthToken$onNavigationEvent;

    invoke-virtual {v0}, [Lo/refreshAuthToken$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/refreshAuthToken$onNavigationEvent;

    return-object v0
.end method
