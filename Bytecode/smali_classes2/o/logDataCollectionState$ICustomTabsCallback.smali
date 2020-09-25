.class final enum Lo/logDataCollectionState$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDataCollectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/logDataCollectionState$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/logDataCollectionState$ICustomTabsCallback;

.field public static final enum Authenticating:Lo/logDataCollectionState$ICustomTabsCallback;

.field public static final enum Connected:Lo/logDataCollectionState$ICustomTabsCallback;

.field public static final enum Connecting:Lo/logDataCollectionState$ICustomTabsCallback;

.field public static final enum Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

.field public static final enum GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 178
    new-instance v0, Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "Disconnected"

    invoke-direct {v0, v2, v1}, Lo/logDataCollectionState$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 179
    new-instance v0, Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "GettingToken"

    invoke-direct {v0, v3, v2}, Lo/logDataCollectionState$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 180
    new-instance v0, Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "Connecting"

    invoke-direct {v0, v4, v3}, Lo/logDataCollectionState$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Connecting:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 181
    new-instance v0, Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "Authenticating"

    invoke-direct {v0, v5, v4}, Lo/logDataCollectionState$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Authenticating:Lo/logDataCollectionState$ICustomTabsCallback;

    .line 182
    new-instance v0, Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "Connected"

    invoke-direct {v0, v6, v5}, Lo/logDataCollectionState$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->Connected:Lo/logDataCollectionState$ICustomTabsCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/logDataCollectionState$ICustomTabsCallback;

    .line 177
    sget-object v7, Lo/logDataCollectionState$ICustomTabsCallback;->Disconnected:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->GettingToken:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Connecting:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/logDataCollectionState$ICustomTabsCallback;->Authenticating:Lo/logDataCollectionState$ICustomTabsCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/logDataCollectionState$ICustomTabsCallback;->$VALUES:[Lo/logDataCollectionState$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/logDataCollectionState$ICustomTabsCallback;
    .locals 1

    .line 177
    const-class v0, Lo/logDataCollectionState$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/logDataCollectionState$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/logDataCollectionState$ICustomTabsCallback;
    .locals 1

    .line 177
    sget-object v0, Lo/logDataCollectionState$ICustomTabsCallback;->$VALUES:[Lo/logDataCollectionState$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/logDataCollectionState$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/logDataCollectionState$ICustomTabsCallback;

    return-object v0
.end method
