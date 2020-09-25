.class public Lo/getVariant_name;
.super Lo/getNfc_enabled;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getNfc_enabled;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lo/getNfc_enabled;->onMessageChannelReady(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
