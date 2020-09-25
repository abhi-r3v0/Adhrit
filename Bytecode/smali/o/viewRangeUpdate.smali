.class public final Lo/viewRangeUpdate;
.super Lo/getPreserveFocusAfterLayout;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\rJ\u0008\u0010\u000e\u001a\u00020\u0005H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/adapters/LuckyNumberAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/adapters/AbstractDigitTextAdapter;",
        "context",
        "Landroid/content/Context;",
        "width",
        "",
        "minValue",
        "maxValue",
        "(Landroid/content/Context;III)V",
        "digitsView",
        "",
        "getItemDigitImage",
        "index",
        "getItemDigitImage$app_release",
        "getItemsCount",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:[I

.field private final onMessageChannelReady:I

.field private final onPostMessage:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x9

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lo/viewRangeUpdate;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lo/getPreserveFocusAfterLayout;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lo/viewRangeUpdate;->onPostMessage:I

    const/16 p1, 0x9

    iput p1, p0, Lo/viewRangeUpdate;->onMessageChannelReady:I

    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/viewRangeUpdate;->extraCallback:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0804ee
        0x7f080483
        0x7f0804ca
        0x7f0804b7
        0x7f080226
        0x7f080223
        0x7f0804a7
        0x7f08049c
        0x7f080200
        0x7f080471
    .end array-data
.end method


# virtual methods
.method public final extraCallback(I)I
    .locals 2

    .line 1034
    iget v0, p0, Lo/viewRangeUpdate;->onMessageChannelReady:I

    iget v1, p0, Lo/viewRangeUpdate;->onPostMessage:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    add-int/2addr v1, p1

    .line 29
    iget-object p1, p0, Lo/viewRangeUpdate;->extraCallback:[I

    aget p1, p1, v1

    return p1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/viewRangeUpdate;->extraCallback:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 2

    .line 34
    iget v0, p0, Lo/viewRangeUpdate;->onMessageChannelReady:I

    iget v1, p0, Lo/viewRangeUpdate;->onPostMessage:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
