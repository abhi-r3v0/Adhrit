.class public final Lo/setSwitchTextAppearance;
.super Lo/AppCompatImageButton;
.source ""


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lo/AppCompatImageButton;-><init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setHorizontalGravity;)V
    .locals 1

    .line 167
    instance-of v0, p1, Lo/setSwitchPadding;

    if-eqz v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Lo/AppCompatImageButton;->ICustomTabsCallback(Lo/setHorizontalGravity;)V

    return-void

    .line 170
    :cond_0
    new-instance v0, Lo/setSwitchPadding;

    invoke-direct {v0}, Lo/setSwitchPadding;-><init>()V

    invoke-virtual {v0, p1}, Lo/setSwitchPadding;->onNavigationEvent(Lo/measureChildBeforeLayout;)Lo/setSwitchPadding;

    move-result-object p1

    invoke-super {p0, p1}, Lo/AppCompatImageButton;->ICustomTabsCallback(Lo/setHorizontalGravity;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/getSwitchPadding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/getSwitchPadding<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lo/AppCompatImageButton;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    check-cast p1, Lo/getSwitchPadding;

    return-object p1
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Integer;)Lo/setTextClassifier;
    .locals 0

    .line 1120
    invoke-super {p0, p1}, Lo/AppCompatImageButton;->onMessageChannelReady(Ljava/lang/Integer;)Lo/setTextClassifier;

    move-result-object p1

    check-cast p1, Lo/getSwitchPadding;

    return-object p1
.end method

.method public final bridge synthetic onNavigationEvent()Lo/setTextClassifier;
    .locals 1

    .line 4064
    invoke-super {p0}, Lo/AppCompatImageButton;->onNavigationEvent()Lo/setTextClassifier;

    move-result-object v0

    check-cast v0, Lo/getSwitchPadding;

    return-object v0
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Class;)Lo/setTextClassifier;
    .locals 3

    .line 1039
    new-instance v0, Lo/getSwitchPadding;

    iget-object v1, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lo/AppCompatImageButton;->onPostMessage:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lo/getSwitchPadding;-><init>(Lcom/bumptech/glide/Glide;Lo/AppCompatImageButton;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final bridge synthetic onPostMessage()Lo/setTextClassifier;
    .locals 1

    .line 3078
    invoke-super {p0}, Lo/AppCompatImageButton;->onPostMessage()Lo/setTextClassifier;

    move-result-object v0

    check-cast v0, Lo/getSwitchPadding;

    return-object v0
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;
    .locals 0

    .line 2099
    invoke-super {p0, p1}, Lo/AppCompatImageButton;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    check-cast p1, Lo/getSwitchPadding;

    return-object p1
.end method
