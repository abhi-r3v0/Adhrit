.class public final Lo/orderBy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field public final onNavigationEvent:[I

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1085
    iput-object v0, p0, Lo/orderBy;->onNavigationEvent:[I

    return-void
.end method

.method public static onMessageChannelReady(Lo/isFullyInitialized;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lo/isFullyInitialized;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lo/isFullyInitialized;->onTransact()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onPostMessage(II)Lo/orderBy;
    .locals 3

    .line 1093
    iget-object v0, p0, Lo/orderBy;->onNavigationEvent:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 1098
    iget v2, p0, Lo/orderBy;->onPostMessage:I

    or-int/2addr v2, v1

    iput v2, p0, Lo/orderBy;->onPostMessage:I

    .line 1102
    iget v2, p0, Lo/orderBy;->ICustomTabsCallback:I

    not-int v1, v1

    and-int/2addr v2, v1

    iput v2, p0, Lo/orderBy;->ICustomTabsCallback:I

    .line 1107
    iget v2, p0, Lo/orderBy;->onMessageChannelReady:I

    and-int/2addr v1, v2

    iput v1, p0, Lo/orderBy;->onMessageChannelReady:I

    .line 1110
    aput p2, v0, p1

    return-object p0
.end method
