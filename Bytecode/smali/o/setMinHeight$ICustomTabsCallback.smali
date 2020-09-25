.class public final enum Lo/setMinHeight$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMinHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setMinHeight$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setMinHeight$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/setMinHeight$ICustomTabsCallback;

.field private static final synthetic onMessageChannelReady:[Lo/setMinHeight$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/setMinHeight$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lo/setMinHeight$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNIVERSAL"

    invoke-direct {v0, v2, v1}, Lo/setMinHeight$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setMinHeight$ICustomTabsCallback;->extraCallback:Lo/setMinHeight$ICustomTabsCallback;

    new-instance v0, Lo/setMinHeight$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "APPLICATION"

    invoke-direct {v0, v3, v2}, Lo/setMinHeight$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setMinHeight$ICustomTabsCallback;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    new-instance v0, Lo/setMinHeight$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "CONTEXT_SPECIFIC"

    invoke-direct {v0, v4, v3}, Lo/setMinHeight$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setMinHeight$ICustomTabsCallback;->ICustomTabsCallback:Lo/setMinHeight$ICustomTabsCallback;

    new-instance v0, Lo/setMinHeight$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "PRIVATE"

    invoke-direct {v0, v5, v4}, Lo/setMinHeight$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setMinHeight$ICustomTabsCallback;->onPostMessage:Lo/setMinHeight$ICustomTabsCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/setMinHeight$ICustomTabsCallback;

    .line 9
    sget-object v6, Lo/setMinHeight$ICustomTabsCallback;->extraCallback:Lo/setMinHeight$ICustomTabsCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/setMinHeight$ICustomTabsCallback;->onNavigationEvent:Lo/setMinHeight$ICustomTabsCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/setMinHeight$ICustomTabsCallback;->ICustomTabsCallback:Lo/setMinHeight$ICustomTabsCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/setMinHeight$ICustomTabsCallback;->onMessageChannelReady:[Lo/setMinHeight$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setMinHeight$ICustomTabsCallback;
    .locals 1

    .line 9
    const-class v0, Lo/setMinHeight$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setMinHeight$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/setMinHeight$ICustomTabsCallback;
    .locals 1

    .line 9
    sget-object v0, Lo/setMinHeight$ICustomTabsCallback;->onMessageChannelReady:[Lo/setMinHeight$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/setMinHeight$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setMinHeight$ICustomTabsCallback;

    return-object v0
.end method
