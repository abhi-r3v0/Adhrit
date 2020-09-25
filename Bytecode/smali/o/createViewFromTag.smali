.class public final enum Lo/createViewFromTag;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/createViewFromTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/createViewFromTag;

.field public static final enum extraCallback:Lo/createViewFromTag;

.field private static final synthetic onMessageChannelReady:[Lo/createViewFromTag;

.field public static final enum onNavigationEvent:Lo/createViewFromTag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lo/createViewFromTag;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Lo/createViewFromTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    .line 11
    new-instance v0, Lo/createViewFromTag;

    const/4 v2, 0x1

    const-string v3, "HARDWARE"

    invoke-direct {v0, v3, v2}, Lo/createViewFromTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/createViewFromTag;->onNavigationEvent:Lo/createViewFromTag;

    .line 12
    new-instance v0, Lo/createViewFromTag;

    const/4 v3, 0x2

    const-string v4, "SOFTWARE"

    invoke-direct {v0, v4, v3}, Lo/createViewFromTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/createViewFromTag;->extraCallback:Lo/createViewFromTag;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/createViewFromTag;

    .line 9
    sget-object v5, Lo/createViewFromTag;->ICustomTabsCallback:Lo/createViewFromTag;

    aput-object v5, v4, v1

    sget-object v1, Lo/createViewFromTag;->onNavigationEvent:Lo/createViewFromTag;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/createViewFromTag;->onMessageChannelReady:[Lo/createViewFromTag;

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

.method public static valueOf(Ljava/lang/String;)Lo/createViewFromTag;
    .locals 1

    .line 9
    const-class v0, Lo/createViewFromTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/createViewFromTag;

    return-object p0
.end method

.method public static values()[Lo/createViewFromTag;
    .locals 1

    .line 9
    sget-object v0, Lo/createViewFromTag;->onMessageChannelReady:[Lo/createViewFromTag;

    invoke-virtual {v0}, [Lo/createViewFromTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/createViewFromTag;

    return-object v0
.end method
