.class public final enum Lo/onAppLinkFetchFinished;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/onAppLinkFetchFinished;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/onAppLinkFetchFinished;

.field private static enum extraCallback:Lo/onAppLinkFetchFinished;

.field public static final enum onMessageChannelReady:Lo/onAppLinkFetchFinished;

.field private static enum onNavigationEvent:Lo/onAppLinkFetchFinished;

.field private static final synthetic onTransact:[Lo/onAppLinkFetchFinished;


# instance fields
.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lo/onAppLinkFetchFinished;

    const/4 v1, 0x0

    const-string v2, "NOT_SET"

    const-string v3, "not_set"

    invoke-direct {v0, v2, v1, v3}, Lo/onAppLinkFetchFinished;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onAppLinkFetchFinished;->onMessageChannelReady:Lo/onAppLinkFetchFinished;

    .line 12
    new-instance v0, Lo/onAppLinkFetchFinished;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    const-string v4, "network"

    invoke-direct {v0, v3, v2, v4}, Lo/onAppLinkFetchFinished;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onAppLinkFetchFinished;->ICustomTabsCallback:Lo/onAppLinkFetchFinished;

    .line 13
    new-instance v0, Lo/onAppLinkFetchFinished;

    const/4 v3, 0x2

    const-string v4, "DISK"

    const-string v5, "disk"

    invoke-direct {v0, v4, v3, v5}, Lo/onAppLinkFetchFinished;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onAppLinkFetchFinished;->extraCallback:Lo/onAppLinkFetchFinished;

    .line 14
    new-instance v0, Lo/onAppLinkFetchFinished;

    const/4 v4, 0x3

    const-string v5, "ENCODED_MEM_CACHE"

    const-string v6, "encoded_mem_cache"

    invoke-direct {v0, v5, v4, v6}, Lo/onAppLinkFetchFinished;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/onAppLinkFetchFinished;->onNavigationEvent:Lo/onAppLinkFetchFinished;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/onAppLinkFetchFinished;

    .line 10
    sget-object v6, Lo/onAppLinkFetchFinished;->onMessageChannelReady:Lo/onAppLinkFetchFinished;

    aput-object v6, v5, v1

    sget-object v1, Lo/onAppLinkFetchFinished;->ICustomTabsCallback:Lo/onAppLinkFetchFinished;

    aput-object v1, v5, v2

    sget-object v1, Lo/onAppLinkFetchFinished;->extraCallback:Lo/onAppLinkFetchFinished;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/onAppLinkFetchFinished;->onTransact:[Lo/onAppLinkFetchFinished;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lo/onAppLinkFetchFinished;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/onAppLinkFetchFinished;
    .locals 1

    .line 10
    const-class v0, Lo/onAppLinkFetchFinished;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/onAppLinkFetchFinished;

    return-object p0
.end method

.method public static values()[Lo/onAppLinkFetchFinished;
    .locals 1

    .line 10
    sget-object v0, Lo/onAppLinkFetchFinished;->onTransact:[Lo/onAppLinkFetchFinished;

    invoke-virtual {v0}, [Lo/onAppLinkFetchFinished;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/onAppLinkFetchFinished;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/onAppLinkFetchFinished;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method
