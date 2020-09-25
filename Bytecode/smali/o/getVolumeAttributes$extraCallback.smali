.class Lo/getVolumeAttributes$extraCallback;
.super Lo/getVolumeAttributes$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final onPostMessage:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1115
    invoke-direct {p0}, Lo/getVolumeAttributes$ICustomTabsCallback;-><init>()V

    .line 1116
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lo/getVolumeAttributes$extraCallback;->onPostMessage:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;)V
    .locals 1

    .line 1119
    invoke-direct {p0}, Lo/getVolumeAttributes$ICustomTabsCallback;-><init>()V

    .line 1120
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onRelationshipValidationResult()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1122
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 1123
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lo/getVolumeAttributes$extraCallback;->onPostMessage:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Lo/getLong;)V
    .locals 4

    .line 1148
    iget-object v0, p0, Lo/getVolumeAttributes$extraCallback;->onPostMessage:Landroid/view/WindowInsets$Builder;

    .line 3146
    iget v1, p1, Lo/getLong;->onPostMessage:I

    iget v2, p1, Lo/getLong;->ICustomTabsCallback:I

    iget v3, p1, Lo/getLong;->onMessageChannelReady:I

    iget p1, p1, Lo/getLong;->onNavigationEvent:I

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    .line 1148
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method onNavigationEvent(Lo/getLong;)V
    .locals 4

    .line 1128
    iget-object v0, p0, Lo/getVolumeAttributes$extraCallback;->onPostMessage:Landroid/view/WindowInsets$Builder;

    .line 2146
    iget v1, p1, Lo/getLong;->onPostMessage:I

    iget v2, p1, Lo/getLong;->ICustomTabsCallback:I

    iget v3, p1, Lo/getLong;->onMessageChannelReady:I

    iget p1, p1, Lo/getLong;->onNavigationEvent:I

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    .line 1128
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method onPostMessage()Lo/getVolumeAttributes;
    .locals 1

    .line 1159
    iget-object v0, p0, Lo/getVolumeAttributes$extraCallback;->onPostMessage:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method
