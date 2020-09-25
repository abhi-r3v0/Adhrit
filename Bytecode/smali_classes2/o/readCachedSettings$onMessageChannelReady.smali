.class public final enum Lo/readCachedSettings$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/readCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/readCachedSettings$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/readCachedSettings$onMessageChannelReady;

.field public static final enum extraCallback:Lo/readCachedSettings$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lo/readCachedSettings$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "CLIENT"

    invoke-direct {v0, v2, v1}, Lo/readCachedSettings$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    new-instance v0, Lo/readCachedSettings$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "SERVER"

    invoke-direct {v0, v3, v2}, Lo/readCachedSettings$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/readCachedSettings$onMessageChannelReady;->onNavigationEvent:Lo/readCachedSettings$onMessageChannelReady;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/readCachedSettings$onMessageChannelReady;

    .line 12
    sget-object v4, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/readCachedSettings$onMessageChannelReady;->ICustomTabsCallback:[Lo/readCachedSettings$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/readCachedSettings$onMessageChannelReady;
    .locals 1

    .line 12
    const-class v0, Lo/readCachedSettings$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/readCachedSettings$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lo/readCachedSettings$onMessageChannelReady;
    .locals 1

    .line 12
    sget-object v0, Lo/readCachedSettings$onMessageChannelReady;->ICustomTabsCallback:[Lo/readCachedSettings$onMessageChannelReady;

    invoke-virtual {v0}, [Lo/readCachedSettings$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/readCachedSettings$onMessageChannelReady;

    return-object v0
.end method
