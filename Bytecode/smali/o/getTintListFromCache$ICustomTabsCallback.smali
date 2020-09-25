.class public final Lo/getTintListFromCache$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTintListFromCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cred/pay/ui/instrumentlisting/adapter/InstrumentListAdapter$Companion;",
        "",
        "()V",
        "ITEM_DIVIDER",
        "",
        "ITEM_TEXT",
        "ITEM_TYPE_INSTRUMENT",
        "ITEM_TYPE_INSTRUMENTS_GRID",
        "ITEM_TYPE_INSTRUMENT_HEADER",
        "ITEM_TYPE_UPI_SETUP",
        "ITEM_UPI_BANKS_BUTTON",
        "ITEM_UPI_VIEW_ALL",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public extraCallback:Lo/setMinHeight;

.field public onMessageChannelReady:[B

.field public onPostMessage:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setMinHeight;I[B[B)V
    .locals 1

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    array-length v0, p4

    if-ne p2, v0, :cond_0

    .line 1040
    iput-object p1, p0, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 1041
    iput-object p3, p0, Lo/getTintListFromCache$ICustomTabsCallback;->onPostMessage:[B

    .line 1042
    iput-object p4, p0, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    return-void

    .line 1038
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length != bytes.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
