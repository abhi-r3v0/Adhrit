.class public final enum Lo/getProgress$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getProgress$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/getProgress$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/getProgress$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/getProgress$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lo/getProgress$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "BLEND_WITH_PREVIOUS"

    invoke-direct {v0, v2, v1}, Lo/getProgress$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getProgress$ICustomTabsCallback;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    .line 38
    new-instance v0, Lo/getProgress$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "NO_BLEND"

    invoke-direct {v0, v3, v2}, Lo/getProgress$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getProgress$ICustomTabsCallback;->extraCallback:Lo/getProgress$ICustomTabsCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getProgress$ICustomTabsCallback;

    .line 34
    sget-object v4, Lo/getProgress$ICustomTabsCallback;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getProgress$ICustomTabsCallback;->ICustomTabsCallback:[Lo/getProgress$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getProgress$ICustomTabsCallback;
    .locals 1

    .line 34
    const-class v0, Lo/getProgress$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getProgress$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/getProgress$ICustomTabsCallback;
    .locals 1

    .line 34
    sget-object v0, Lo/getProgress$ICustomTabsCallback;->ICustomTabsCallback:[Lo/getProgress$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/getProgress$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getProgress$ICustomTabsCallback;

    return-object v0
.end method
