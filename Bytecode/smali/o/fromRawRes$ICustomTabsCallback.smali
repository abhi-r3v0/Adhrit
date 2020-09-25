.class public final enum Lo/fromRawRes$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromRawRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/fromRawRes$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum onMessageChannelReady:Lo/fromRawRes$ICustomTabsCallback;

.field private static final synthetic onNavigationEvent:[Lo/fromRawRes$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/fromRawRes$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lo/fromRawRes$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "OVERLAY_COLOR"

    invoke-direct {v0, v2, v1}, Lo/fromRawRes$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromRawRes$ICustomTabsCallback;->onPostMessage:Lo/fromRawRes$ICustomTabsCallback;

    .line 35
    new-instance v0, Lo/fromRawRes$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "CLIPPING"

    invoke-direct {v0, v3, v2}, Lo/fromRawRes$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fromRawRes$ICustomTabsCallback;->onMessageChannelReady:Lo/fromRawRes$ICustomTabsCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/fromRawRes$ICustomTabsCallback;

    .line 26
    sget-object v4, Lo/fromRawRes$ICustomTabsCallback;->onPostMessage:Lo/fromRawRes$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/fromRawRes$ICustomTabsCallback;->onNavigationEvent:[Lo/fromRawRes$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/fromRawRes$ICustomTabsCallback;
    .locals 1

    .line 26
    const-class v0, Lo/fromRawRes$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/fromRawRes$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/fromRawRes$ICustomTabsCallback;
    .locals 1

    .line 26
    sget-object v0, Lo/fromRawRes$ICustomTabsCallback;->onNavigationEvent:[Lo/fromRawRes$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/fromRawRes$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fromRawRes$ICustomTabsCallback;

    return-object v0
.end method
