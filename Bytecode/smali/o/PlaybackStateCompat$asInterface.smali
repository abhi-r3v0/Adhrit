.class final Lo/PlaybackStateCompat$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 3157
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 4160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 4161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lo/PlaybackStateCompat$onMessageChannelReady;

    .line 4162
    iget-boolean v0, p1, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    iget-boolean v1, p2, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eq v0, v1, :cond_1

    .line 4163
    iget-boolean p1, p1, Lo/PlaybackStateCompat$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 4165
    :cond_1
    iget p1, p1, Lo/PlaybackStateCompat$onMessageChannelReady;->extraCallback:I

    iget p2, p2, Lo/PlaybackStateCompat$onMessageChannelReady;->extraCallback:I

    sub-int/2addr p1, p2

    return p1
.end method
