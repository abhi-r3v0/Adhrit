.class public final enum Lo/readCachedSettings$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/readCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/readCachedSettings$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

.field private static final synthetic asInterface:[Lo/readCachedSettings$onNavigationEvent;

.field public static final enum extraCallback:Lo/readCachedSettings$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/readCachedSettings$onNavigationEvent;

.field public static final enum onPostMessage:Lo/readCachedSettings$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lo/readCachedSettings$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "NOT_YET_CONNECTED"

    invoke-direct {v0, v2, v1}, Lo/readCachedSettings$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onNavigationEvent;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    new-instance v0, Lo/readCachedSettings$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "CONNECTING"

    invoke-direct {v0, v3, v2}, Lo/readCachedSettings$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onNavigationEvent;->onNavigationEvent:Lo/readCachedSettings$onNavigationEvent;

    new-instance v0, Lo/readCachedSettings$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "OPEN"

    invoke-direct {v0, v4, v3}, Lo/readCachedSettings$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    new-instance v0, Lo/readCachedSettings$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "CLOSING"

    invoke-direct {v0, v5, v4}, Lo/readCachedSettings$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    new-instance v0, Lo/readCachedSettings$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "CLOSED"

    invoke-direct {v0, v6, v5}, Lo/readCachedSettings$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onNavigationEvent;->ICustomTabsCallback:Lo/readCachedSettings$onNavigationEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/readCachedSettings$onNavigationEvent;

    .line 16
    sget-object v7, Lo/readCachedSettings$onNavigationEvent;->onMessageChannelReady:Lo/readCachedSettings$onNavigationEvent;

    aput-object v7, v6, v1

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onNavigationEvent:Lo/readCachedSettings$onNavigationEvent;

    aput-object v1, v6, v2

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->onPostMessage:Lo/readCachedSettings$onNavigationEvent;

    aput-object v1, v6, v3

    sget-object v1, Lo/readCachedSettings$onNavigationEvent;->extraCallback:Lo/readCachedSettings$onNavigationEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/readCachedSettings$onNavigationEvent;->asInterface:[Lo/readCachedSettings$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/readCachedSettings$onNavigationEvent;
    .locals 1

    .line 16
    const-class v0, Lo/readCachedSettings$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/readCachedSettings$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/readCachedSettings$onNavigationEvent;
    .locals 1

    .line 16
    sget-object v0, Lo/readCachedSettings$onNavigationEvent;->asInterface:[Lo/readCachedSettings$onNavigationEvent;

    invoke-virtual {v0}, [Lo/readCachedSettings$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/readCachedSettings$onNavigationEvent;

    return-object v0
.end method
