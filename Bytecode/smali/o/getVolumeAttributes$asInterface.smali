.class Lo/getVolumeAttributes$asInterface;
.super Lo/getVolumeAttributes$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asInterface"
.end annotation


# direct methods
.method constructor <init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asInterface;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$ICustomTabsCallback$Stub;)V

    return-void
.end method


# virtual methods
.method asInterface()Lo/getVolumeAttributes;
    .locals 1

    .line 768
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 774
    :cond_0
    instance-of v0, p1, Lo/getVolumeAttributes$asInterface;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 775
    :cond_1
    check-cast p1, Lo/getVolumeAttributes$asInterface;

    .line 777
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    iget-object p1, p1, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method extraCallback()Lo/RatingCompat$Style;
    .locals 1

    .line 762
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Lo/RatingCompat$Style;->onMessageChannelReady(Ljava/lang/Object;)Lo/RatingCompat$Style;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 782
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
