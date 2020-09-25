.class public final enum Lo/onSearchResult$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onSearchResult$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

.field private static final synthetic ICustomTabsCallback$Stub:[Lo/onSearchResult$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/onSearchResult$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/onSearchResult$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/onSearchResult$ICustomTabsCallback;

.field private static enum onPostMessage:Lo/onSearchResult$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 69
    new-instance v0, Lo/onSearchResult$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, Lo/onSearchResult$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    .line 73
    new-instance v0, Lo/onSearchResult$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, Lo/onSearchResult$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onSearchResult$ICustomTabsCallback;->onPostMessage:Lo/onSearchResult$ICustomTabsCallback;

    .line 77
    new-instance v0, Lo/onSearchResult$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, Lo/onSearchResult$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onSearchResult$ICustomTabsCallback;->extraCallback:Lo/onSearchResult$ICustomTabsCallback;

    .line 81
    new-instance v0, Lo/onSearchResult$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lo/onSearchResult$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onSearchResult$ICustomTabsCallback;->onNavigationEvent:Lo/onSearchResult$ICustomTabsCallback;

    .line 85
    new-instance v0, Lo/onSearchResult$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lo/onSearchResult$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/onSearchResult$ICustomTabsCallback;->onMessageChannelReady:Lo/onSearchResult$ICustomTabsCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/onSearchResult$ICustomTabsCallback;

    .line 65
    sget-object v7, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/onSearchResult$ICustomTabsCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->onPostMessage:Lo/onSearchResult$ICustomTabsCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->extraCallback:Lo/onSearchResult$ICustomTabsCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/onSearchResult$ICustomTabsCallback;->onNavigationEvent:Lo/onSearchResult$ICustomTabsCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:[Lo/onSearchResult$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onSearchResult$ICustomTabsCallback;
    .locals 1

    .line 65
    const-class v0, Lo/onSearchResult$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onSearchResult$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/onSearchResult$ICustomTabsCallback;
    .locals 1

    .line 65
    sget-object v0, Lo/onSearchResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:[Lo/onSearchResult$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/onSearchResult$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onSearchResult$ICustomTabsCallback;

    return-object v0
.end method
