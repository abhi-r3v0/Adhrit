.class public final enum Lo/getExpiresAtFrom$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExpiresAtFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getExpiresAtFrom$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/getExpiresAtFrom$ICustomTabsCallback;

.field private static final synthetic onMessageChannelReady:[Lo/getExpiresAtFrom$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/getExpiresAtFrom$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lo/getExpiresAtFrom$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/getExpiresAtFrom$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

    new-instance v0, Lo/getExpiresAtFrom$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "ONEWAY"

    invoke-direct {v0, v3, v2}, Lo/getExpiresAtFrom$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->extraCallback:Lo/getExpiresAtFrom$ICustomTabsCallback;

    new-instance v0, Lo/getExpiresAtFrom$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "TWOWAY"

    invoke-direct {v0, v4, v3}, Lo/getExpiresAtFrom$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->onPostMessage:Lo/getExpiresAtFrom$ICustomTabsCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/getExpiresAtFrom$ICustomTabsCallback;

    .line 40
    sget-object v5, Lo/getExpiresAtFrom$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtFrom$ICustomTabsCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/getExpiresAtFrom$ICustomTabsCallback;->extraCallback:Lo/getExpiresAtFrom$ICustomTabsCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/getExpiresAtFrom$ICustomTabsCallback;->onMessageChannelReady:[Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getExpiresAtFrom$ICustomTabsCallback;
    .locals 1

    .line 40
    const-class v0, Lo/getExpiresAtFrom$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/getExpiresAtFrom$ICustomTabsCallback;
    .locals 1

    .line 40
    sget-object v0, Lo/getExpiresAtFrom$ICustomTabsCallback;->onMessageChannelReady:[Lo/getExpiresAtFrom$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/getExpiresAtFrom$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getExpiresAtFrom$ICustomTabsCallback;

    return-object v0
.end method
