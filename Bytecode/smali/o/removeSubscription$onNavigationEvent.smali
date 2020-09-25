.class public final enum Lo/removeSubscription$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/removeSubscription$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

.field public static final enum extraCallback:Lo/removeSubscription$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

.field private static final synthetic onPostMessage:[Lo/removeSubscription$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 143
    new-instance v0, Lo/removeSubscription$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v2, v1}, Lo/removeSubscription$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    new-instance v0, Lo/removeSubscription$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT"

    invoke-direct {v0, v3, v2}, Lo/removeSubscription$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    new-instance v0, Lo/removeSubscription$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "MATCH_CONSTRAINT"

    invoke-direct {v0, v4, v3}, Lo/removeSubscription$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    new-instance v0, Lo/removeSubscription$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "MATCH_PARENT"

    invoke-direct {v0, v5, v4}, Lo/removeSubscription$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeSubscription$onNavigationEvent;->onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/removeSubscription$onNavigationEvent;

    .line 142
    sget-object v6, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v6, v5, v1

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    aput-object v1, v5, v2

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/removeSubscription$onNavigationEvent;->onPostMessage:[Lo/removeSubscription$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/removeSubscription$onNavigationEvent;
    .locals 1

    .line 142
    const-class v0, Lo/removeSubscription$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/removeSubscription$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/removeSubscription$onNavigationEvent;
    .locals 1

    .line 142
    sget-object v0, Lo/removeSubscription$onNavigationEvent;->onPostMessage:[Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v0}, [Lo/removeSubscription$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/removeSubscription$onNavigationEvent;

    return-object v0
.end method
