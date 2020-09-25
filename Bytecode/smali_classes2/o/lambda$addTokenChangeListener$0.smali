.class public final enum Lo/lambda$addTokenChangeListener$0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/lambda$addTokenChangeListener$0;",
        ">;"
    }
.end annotation


# static fields
.field private static enum extraCallback:Lo/lambda$addTokenChangeListener$0;

.field private static final synthetic onNavigationEvent:[Lo/lambda$addTokenChangeListener$0;

.field private static enum onPostMessage:Lo/lambda$addTokenChangeListener$0;


# instance fields
.field private onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lo/lambda$addTokenChangeListener$0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NO_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lo/lambda$addTokenChangeListener$0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/lambda$addTokenChangeListener$0;->extraCallback:Lo/lambda$addTokenChangeListener$0;

    .line 28
    new-instance v0, Lo/lambda$addTokenChangeListener$0;

    const/4 v3, 0x2

    const-string v4, "NO_STORE"

    invoke-direct {v0, v4, v2, v3}, Lo/lambda$addTokenChangeListener$0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/lambda$addTokenChangeListener$0;->onPostMessage:Lo/lambda$addTokenChangeListener$0;

    new-array v3, v3, [Lo/lambda$addTokenChangeListener$0;

    .line 19
    sget-object v4, Lo/lambda$addTokenChangeListener$0;->extraCallback:Lo/lambda$addTokenChangeListener$0;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/lambda$addTokenChangeListener$0;->onNavigationEvent:[Lo/lambda$addTokenChangeListener$0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady:I

    return-void
.end method

.method static ICustomTabsCallback(I)Z
    .locals 1

    .line 35
    sget-object v0, Lo/lambda$addTokenChangeListener$0;->onPostMessage:Lo/lambda$addTokenChangeListener$0;

    iget v0, v0, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onMessageChannelReady(I)Z
    .locals 1

    .line 31
    sget-object v0, Lo/lambda$addTokenChangeListener$0;->extraCallback:Lo/lambda$addTokenChangeListener$0;

    iget v0, v0, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/lambda$addTokenChangeListener$0;
    .locals 1

    .line 19
    const-class v0, Lo/lambda$addTokenChangeListener$0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/lambda$addTokenChangeListener$0;

    return-object p0
.end method

.method public static values()[Lo/lambda$addTokenChangeListener$0;
    .locals 1

    .line 19
    sget-object v0, Lo/lambda$addTokenChangeListener$0;->onNavigationEvent:[Lo/lambda$addTokenChangeListener$0;

    invoke-virtual {v0}, [Lo/lambda$addTokenChangeListener$0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/lambda$addTokenChangeListener$0;

    return-object v0
.end method
