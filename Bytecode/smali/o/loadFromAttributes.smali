.class public final enum Lo/loadFromAttributes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/loadFromAttributes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/loadFromAttributes;

.field public static final enum onMessageChannelReady:Lo/loadFromAttributes;

.field private static final synthetic onNavigationEvent:[Lo/loadFromAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lo/loadFromAttributes;

    const/4 v1, 0x0

    const-string v2, "SRGB"

    invoke-direct {v0, v2, v1}, Lo/loadFromAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/loadFromAttributes;->onMessageChannelReady:Lo/loadFromAttributes;

    .line 35
    new-instance v0, Lo/loadFromAttributes;

    const/4 v2, 0x1

    const-string v3, "DISPLAY_P3"

    invoke-direct {v0, v3, v2}, Lo/loadFromAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/loadFromAttributes;->ICustomTabsCallback:Lo/loadFromAttributes;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/loadFromAttributes;

    .line 31
    sget-object v4, Lo/loadFromAttributes;->onMessageChannelReady:Lo/loadFromAttributes;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/loadFromAttributes;->onNavigationEvent:[Lo/loadFromAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/loadFromAttributes;
    .locals 1

    .line 31
    const-class v0, Lo/loadFromAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/loadFromAttributes;

    return-object p0
.end method

.method public static values()[Lo/loadFromAttributes;
    .locals 1

    .line 31
    sget-object v0, Lo/loadFromAttributes;->onNavigationEvent:[Lo/loadFromAttributes;

    invoke-virtual {v0}, [Lo/loadFromAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/loadFromAttributes;

    return-object v0
.end method
