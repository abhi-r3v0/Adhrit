.class public abstract Lo/getRootNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRootNode$onNavigationEvent;,
        Lo/getRootNode$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u0016H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/random/Random;",
        "",
        "()V",
        "nextBits",
        "",
        "bitCount",
        "nextBoolean",
        "",
        "nextBytes",
        "",
        "array",
        "fromIndex",
        "toIndex",
        "size",
        "nextDouble",
        "",
        "until",
        "from",
        "nextFloat",
        "",
        "nextInt",
        "nextLong",
        "",
        "Companion",
        "Default",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getRootNode$extraCallback;

.field private static final onPostMessage:Lo/getRootNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getRootNode$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getRootNode$extraCallback;-><init>(B)V

    sput-object v0, Lo/getRootNode;->onNavigationEvent:Lo/getRootNode$extraCallback;

    .line 242
    sget-object v0, Lo/deferredInitialization;->onMessageChannelReady:Lo/restoreWrites;

    invoke-virtual {v0}, Lo/restoreWrites;->ICustomTabsCallback()Lo/getRootNode;

    move-result-object v0

    sput-object v0, Lo/getRootNode;->onPostMessage:Lo/getRootNode;

    .line 268
    sget-object v0, Lo/getRootNode$onNavigationEvent;->onMessageChannelReady:Lo/getRootNode$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Lo/getRootNode;
    .locals 1

    .line 20
    sget-object v0, Lo/getRootNode;->onPostMessage:Lo/getRootNode;

    return-object v0
.end method


# virtual methods
.method public extraCallback(II)I
    .locals 4

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    sub-int v1, p2, p1

    if-gtz v1, :cond_3

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 74
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lo/getRootNode;->onNavigationEvent()I

    move-result v0

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    if-le p2, v0, :cond_1

    return v0

    :cond_3
    :goto_2
    neg-int p2, v1

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_4

    .line 2342
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x1f

    .line 62
    invoke-virtual {p0, p2}, Lo/getRootNode;->onPostMessage(I)I

    move-result p2

    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {p0}, Lo/getRootNode;->onNavigationEvent()I

    move-result p2

    ushr-int/2addr p2, v0

    .line 67
    rem-int v2, p2, v1

    sub-int/2addr p2, v2

    add-int/lit8 v3, v1, -0x1

    add-int/2addr p2, v3

    if-ltz p2, :cond_4

    move p2, v2

    :goto_3
    add-int/2addr p1, p2

    return p1

    .line 1348
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "from"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "until"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Random range is empty: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public onNavigationEvent()I
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lo/getRootNode;->onPostMessage(I)I

    move-result v0

    return v0
.end method

.method public abstract onPostMessage(I)I
.end method
