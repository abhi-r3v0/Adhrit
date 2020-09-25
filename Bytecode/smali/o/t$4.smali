.class final Lo/t$4;
.super Lo/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Lo/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 0

    .line 543
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 0

    .line 523
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 0

    .line 533
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
