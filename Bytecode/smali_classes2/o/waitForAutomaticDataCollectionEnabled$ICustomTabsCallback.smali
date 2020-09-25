.class final enum Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/waitForAutomaticDataCollectionEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

.field public static final enum REALTIME_CONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

.field public static final enum REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

.field public static final enum REALTIME_DISCONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    new-instance v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "REALTIME_CONNECTING"

    invoke-direct {v0, v2, v1}, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 44
    new-instance v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "REALTIME_CONNECTED"

    invoke-direct {v0, v3, v2}, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 45
    new-instance v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "REALTIME_DISCONNECTED"

    invoke-direct {v0, v4, v3}, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_DISCONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    .line 42
    sget-object v5, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTING:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->REALTIME_CONNECTED:Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->$VALUES:[Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;
    .locals 1

    .line 42
    const-class v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;
    .locals 1

    .line 42
    sget-object v0, Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->$VALUES:[Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/waitForAutomaticDataCollectionEnabled$ICustomTabsCallback;

    return-object v0
.end method
