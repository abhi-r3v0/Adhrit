.class public abstract Lo/setVerticalGravity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ListPopupWindow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ListPopupWindow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private onPostMessage:Lo/getNextLocationOffset;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lo/setVerticalGravity;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 67
    invoke-static {p1, p1}, Lo/getHorizontalOffset;->onMessageChannelReady(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lo/setVerticalGravity;->onNavigationEvent:I

    .line 77
    iput p1, p0, Lo/setVerticalGravity;->onMessageChannelReady:I

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " and height: -2147483648"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/LinearLayoutCompat$OrientationMode;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 107
    invoke-interface {p1, v0, v0}, Lo/LinearLayoutCompat$OrientationMode;->extraCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(Lo/LinearLayoutCompat$OrientationMode;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()Lo/getNextLocationOffset;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/setVerticalGravity;->onPostMessage:Lo/getNextLocationOffset;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/getNextLocationOffset;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/setVerticalGravity;->onPostMessage:Lo/getNextLocationOffset;

    return-void
.end method
