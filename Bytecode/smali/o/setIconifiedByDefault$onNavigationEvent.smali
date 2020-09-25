.class public final enum Lo/setIconifiedByDefault$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setIconifiedByDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setIconifiedByDefault$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

.field public static final enum onNavigationEvent:Lo/setIconifiedByDefault$onNavigationEvent;

.field private static final synthetic onPostMessage:[Lo/setIconifiedByDefault$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lo/setIconifiedByDefault$onNavigationEvent;

    const/4 v1, 0x0

    const-string/jumbo v2, "running"

    invoke-direct {v0, v2, v1}, Lo/setIconifiedByDefault$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setIconifiedByDefault$onNavigationEvent;->onNavigationEvent:Lo/setIconifiedByDefault$onNavigationEvent;

    new-instance v0, Lo/setIconifiedByDefault$onNavigationEvent;

    const/4 v2, 0x1

    const-string v3, "idle"

    invoke-direct {v0, v3, v2}, Lo/setIconifiedByDefault$onNavigationEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setIconifiedByDefault$onNavigationEvent;->extraCallback:Lo/setIconifiedByDefault$onNavigationEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/setIconifiedByDefault$onNavigationEvent;

    .line 49
    sget-object v4, Lo/setIconifiedByDefault$onNavigationEvent;->onNavigationEvent:Lo/setIconifiedByDefault$onNavigationEvent;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/setIconifiedByDefault$onNavigationEvent;->onPostMessage:[Lo/setIconifiedByDefault$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setIconifiedByDefault$onNavigationEvent;
    .locals 1

    .line 49
    const-class v0, Lo/setIconifiedByDefault$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setIconifiedByDefault$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/setIconifiedByDefault$onNavigationEvent;
    .locals 1

    .line 49
    sget-object v0, Lo/setIconifiedByDefault$onNavigationEvent;->onPostMessage:[Lo/setIconifiedByDefault$onNavigationEvent;

    invoke-virtual {v0}, [Lo/setIconifiedByDefault$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setIconifiedByDefault$onNavigationEvent;

    return-object v0
.end method
