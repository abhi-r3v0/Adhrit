.class final enum Lo/fromCode$ICustomTabsCallback$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromCode$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/fromCode$ICustomTabsCallback$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

.field private static final synthetic asInterface:[Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

.field public static final enum extraCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

.field public static final enum onMessageChannelReady:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

.field public static final enum onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 946
    new-instance v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    .line 947
    new-instance v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "MISSING_SCHEME"

    invoke-direct {v0, v3, v2}, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    .line 948
    new-instance v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v4, v3}, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    .line 949
    new-instance v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "INVALID_PORT"

    invoke-direct {v0, v5, v4}, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    .line 950
    new-instance v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v5, 0x4

    const-string v6, "INVALID_HOST"

    invoke-direct {v0, v6, v5}, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    .line 945
    sget-object v7, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    aput-object v7, v6, v1

    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onMessageChannelReady:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    aput-object v1, v6, v2

    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    aput-object v1, v6, v3

    sget-object v1, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onNavigationEvent:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->asInterface:[Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 945
    const-class v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/fromCode$ICustomTabsCallback$onNavigationEvent;
    .locals 1

    .line 945
    sget-object v0, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->asInterface:[Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    invoke-virtual {v0}, [Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    return-object v0
.end method
