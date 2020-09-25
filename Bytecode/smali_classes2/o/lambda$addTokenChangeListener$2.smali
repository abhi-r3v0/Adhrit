.class public final enum Lo/lambda$addTokenChangeListener$2;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/lambda$addTokenChangeListener$2;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/lambda$addTokenChangeListener$2;

.field public static final enum onMessageChannelReady:Lo/lambda$addTokenChangeListener$2;

.field public static final enum onNavigationEvent:Lo/lambda$addTokenChangeListener$2;

.field private static final synthetic onPostMessage:[Lo/lambda$addTokenChangeListener$2;


# instance fields
.field final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lo/lambda$addTokenChangeListener$2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NO_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lo/lambda$addTokenChangeListener$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent:Lo/lambda$addTokenChangeListener$2;

    .line 30
    new-instance v0, Lo/lambda$addTokenChangeListener$2;

    const/4 v3, 0x2

    const-string v4, "NO_STORE"

    invoke-direct {v0, v4, v2, v3}, Lo/lambda$addTokenChangeListener$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/lambda$addTokenChangeListener$2;->ICustomTabsCallback:Lo/lambda$addTokenChangeListener$2;

    .line 33
    new-instance v0, Lo/lambda$addTokenChangeListener$2;

    const-string v4, "OFFLINE"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, Lo/lambda$addTokenChangeListener$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/lambda$addTokenChangeListener$2;->onMessageChannelReady:Lo/lambda$addTokenChangeListener$2;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/lambda$addTokenChangeListener$2;

    .line 19
    sget-object v5, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent:Lo/lambda$addTokenChangeListener$2;

    aput-object v5, v4, v1

    sget-object v1, Lo/lambda$addTokenChangeListener$2;->ICustomTabsCallback:Lo/lambda$addTokenChangeListener$2;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/lambda$addTokenChangeListener$2;->onPostMessage:[Lo/lambda$addTokenChangeListener$2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    return-void
.end method

.method public static ICustomTabsCallback(I)Z
    .locals 1

    .line 36
    sget-object v0, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent:Lo/lambda$addTokenChangeListener$2;

    iget v0, v0, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(I)Z
    .locals 1

    .line 40
    sget-object v0, Lo/lambda$addTokenChangeListener$2;->ICustomTabsCallback:Lo/lambda$addTokenChangeListener$2;

    iget v0, v0, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage(I)Z
    .locals 1

    .line 44
    sget-object v0, Lo/lambda$addTokenChangeListener$2;->onMessageChannelReady:Lo/lambda$addTokenChangeListener$2;

    iget v0, v0, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/lambda$addTokenChangeListener$2;
    .locals 1

    .line 19
    const-class v0, Lo/lambda$addTokenChangeListener$2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/lambda$addTokenChangeListener$2;

    return-object p0
.end method

.method public static values()[Lo/lambda$addTokenChangeListener$2;
    .locals 1

    .line 19
    sget-object v0, Lo/lambda$addTokenChangeListener$2;->onPostMessage:[Lo/lambda$addTokenChangeListener$2;

    invoke-virtual {v0}, [Lo/lambda$addTokenChangeListener$2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/lambda$addTokenChangeListener$2;

    return-object v0
.end method
