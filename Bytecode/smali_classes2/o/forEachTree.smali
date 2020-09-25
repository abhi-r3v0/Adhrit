.class public final Lo/forEachTree;
.super Lo/canBeRepresentedAsLong;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/forEachTree$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/canBeRepresentedAsLong;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0014B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlin/ranges/IntRange;",
        "Lkotlin/ranges/IntProgression;",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "start",
        "endInclusive",
        "(II)V",
        "getEndInclusive",
        "()Ljava/lang/Integer;",
        "getStart",
        "contains",
        "",
        "value",
        "equals",
        "other",
        "",
        "hashCode",
        "isEmpty",
        "toString",
        "",
        "Companion",
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
.field public static final extraCallback:Lo/forEachTree$ICustomTabsCallback;

.field private static final onTransact:Lo/forEachTree;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/forEachTree$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/forEachTree$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/forEachTree;->extraCallback:Lo/forEachTree$ICustomTabsCallback;

    .line 58
    new-instance v0, Lo/forEachTree;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/forEachTree;-><init>(II)V

    sput-object v0, Lo/forEachTree;->onTransact:Lo/forEachTree;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lo/canBeRepresentedAsLong;-><init>(III)V

    return-void
.end method

.method public static final synthetic onPostMessage()Lo/forEachTree;
    .locals 1

    .line 39
    sget-object v0, Lo/forEachTree;->onTransact:Lo/forEachTree;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 1087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 1092
    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 48
    instance-of v0, p1, Lo/forEachTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 2092
    iget v2, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 48
    move-object v0, p1

    check-cast v0, Lo/forEachTree;

    .line 3087
    iget v2, v0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 3092
    iget v0, v0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-le v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 4087
    :cond_2
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 48
    check-cast p1, Lo/forEachTree;

    .line 5087
    iget v2, p1, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    if-ne v0, v2, :cond_4

    .line 5092
    iget v0, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 6092
    iget p1, p1, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-ne v0, p1, :cond_4

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 7087
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 7092
    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 8087
    :cond_1
    iget v0, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    mul-int/lit8 v0, v0, 0x1f

    .line 8092
    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9087
    iget v1, p0, Lo/canBeRepresentedAsLong;->ICustomTabsCallback:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9092
    iget v1, p0, Lo/canBeRepresentedAsLong;->onMessageChannelReady:I

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
