.class public final enum Lo/getSessionData$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getSessionData$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

.field private static final synthetic asInterface:[Lo/getSessionData$onNavigationEvent;

.field public static final enum extraCallback:Lo/getSessionData$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/getSessionData$onNavigationEvent;

.field public static final enum onPostMessage:Lo/getSessionData$onNavigationEvent;


# instance fields
.field final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lo/getSessionData$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "EVENTS"

    const-string v3, "events"

    invoke-direct {v0, v2, v1, v3}, Lo/getSessionData$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 35
    new-instance v0, Lo/getSessionData$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "PEOPLE"

    const-string v4, "people"

    invoke-direct {v0, v3, v2, v4}, Lo/getSessionData$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    .line 36
    new-instance v0, Lo/getSessionData$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "ANONYMOUS_PEOPLE"

    const-string v5, "anonymous_people"

    invoke-direct {v0, v4, v3, v5}, Lo/getSessionData$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 37
    new-instance v0, Lo/getSessionData$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "GROUPS"

    const-string v6, "groups"

    invoke-direct {v0, v5, v4, v6}, Lo/getSessionData$onNavigationEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getSessionData$onNavigationEvent;

    .line 33
    sget-object v6, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    aput-object v6, v5, v1

    sget-object v1, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    aput-object v1, v5, v2

    sget-object v1, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getSessionData$onNavigationEvent;->asInterface:[Lo/getSessionData$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getSessionData$onNavigationEvent;
    .locals 1

    .line 33
    const-class v0, Lo/getSessionData$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getSessionData$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/getSessionData$onNavigationEvent;
    .locals 1

    .line 33
    sget-object v0, Lo/getSessionData$onNavigationEvent;->asInterface:[Lo/getSessionData$onNavigationEvent;

    invoke-virtual {v0}, [Lo/getSessionData$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getSessionData$onNavigationEvent;

    return-object v0
.end method
