.class public final enum Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

.field private static final enum extraCallback:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

.field public static final enum onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

.field private static final enum onNavigationEvent:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

.field private static final synthetic onPostMessage:[Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    new-instance v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    new-instance v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onNavigationEvent:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    new-instance v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    const/4 v4, 0x3

    const-string v5, "IMMEDIATE"

    invoke-direct {v0, v5, v4}, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->extraCallback:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    sget-object v6, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    aput-object v6, v5, v1

    sget-object v1, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    aput-object v1, v5, v2

    sget-object v1, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onNavigationEvent:Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onPostMessage:[Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;
    .locals 1

    sget-object v0, Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->onPostMessage:[Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    invoke-virtual {v0}, [Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/NBAHomeBaseHolder$animateToHide$$inlined$executeOnResume$1;

    return-object v0
.end method
