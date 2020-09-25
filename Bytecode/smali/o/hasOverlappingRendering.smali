.class public final enum Lo/hasOverlappingRendering;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/hasOverlappingRendering;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/hasOverlappingRendering;

.field public static final extraCallback:Lo/hasOverlappingRendering;

.field public static final enum onNavigationEvent:Lo/hasOverlappingRendering;

.field private static final synthetic onPostMessage:[Lo/hasOverlappingRendering;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lo/hasOverlappingRendering;

    const/4 v1, 0x0

    const-string v2, "PREFER_ARGB_8888"

    invoke-direct {v0, v2, v1}, Lo/hasOverlappingRendering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/hasOverlappingRendering;->ICustomTabsCallback:Lo/hasOverlappingRendering;

    .line 40
    new-instance v0, Lo/hasOverlappingRendering;

    const/4 v2, 0x1

    const-string v3, "PREFER_RGB_565"

    invoke-direct {v0, v3, v2}, Lo/hasOverlappingRendering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/hasOverlappingRendering;->onNavigationEvent:Lo/hasOverlappingRendering;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/hasOverlappingRendering;

    .line 12
    sget-object v4, Lo/hasOverlappingRendering;->ICustomTabsCallback:Lo/hasOverlappingRendering;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/hasOverlappingRendering;->onPostMessage:[Lo/hasOverlappingRendering;

    .line 43
    sput-object v4, Lo/hasOverlappingRendering;->extraCallback:Lo/hasOverlappingRendering;

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

.method public static valueOf(Ljava/lang/String;)Lo/hasOverlappingRendering;
    .locals 1

    .line 12
    const-class v0, Lo/hasOverlappingRendering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/hasOverlappingRendering;

    return-object p0
.end method

.method public static values()[Lo/hasOverlappingRendering;
    .locals 1

    .line 12
    sget-object v0, Lo/hasOverlappingRendering;->onPostMessage:[Lo/hasOverlappingRendering;

    invoke-virtual {v0}, [Lo/hasOverlappingRendering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/hasOverlappingRendering;

    return-object v0
.end method
