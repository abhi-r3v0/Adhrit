.class public final Lo/remove$extraCallback;
.super Lo/CampaignResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/remove;->onNavigationEvent(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CampaignResponse<",
        "Lo/AFHelper;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J&\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/androidapp/utils/ImageViewKtKt$setImageUrl$controller$1",
        "Lcom/facebook/drawee/controller/BaseControllerListener;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "onFailure",
        "",
        "id",
        "",
        "throwable",
        "",
        "onFinalImageSet",
        "imageInfo",
        "animatable",
        "Landroid/graphics/drawable/Animatable;",
        "onIntermediateImageSet",
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
.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/setSpeed;


# direct methods
.method constructor <init>(Lo/setSpeed;Lo/toDebugString$ICustomTabsCallback;Z)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    iput-object p2, p0, Lo/remove$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    iput-boolean p3, p0, Lo/remove$extraCallback;->extraCallback:Z

    invoke-direct {p0}, Lo/CampaignResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 147
    check-cast p2, Lo/AFHelper;

    .line 2158
    invoke-super {p0, p1, p2, p3}, Lo/CampaignResponse;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2159
    iget-object p1, p0, Lo/remove$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/trimToSize;

    if-eqz p1, :cond_0

    .line 3100
    iget-object p1, p1, Lo/trimToSize;->onPostMessage:Lo/trimToSize$onNavigationEvent;

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 2159
    invoke-interface {p1, p3, p2}, Lo/trimToSize$onNavigationEvent;->ICustomTabsCallback(ZLo/AFHelper;)V

    .line 2160
    :cond_0
    iget-boolean p1, p0, Lo/remove$extraCallback;->extraCallback:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2161
    iget-object p1, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p3, -0x2

    if-ne p1, p3, :cond_1

    .line 2162
    iget-object p1, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {p2}, Lo/AFHelper;->onPostMessage()I

    move-result p3

    mul-int p1, p1, p3

    invoke-interface {p2}, Lo/AFHelper;->onMessageChannelReady()I

    move-result p2

    div-int/2addr p1, p2

    .line 2163
    iget-object p2, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 2164
    iget-object p2, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void

    .line 2165
    :cond_1
    iget-object p1, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p1, p3, :cond_2

    .line 2166
    iget-object p1, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p2}, Lo/AFHelper;->onMessageChannelReady()I

    move-result p3

    mul-int p1, p1, p3

    invoke-interface {p2}, Lo/AFHelper;->onPostMessage()I

    move-result p2

    div-int/2addr p1, p2

    .line 2167
    iget-object p2, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 2168
    iget-object p2, p0, Lo/remove$extraCallback;->onPostMessage:Lo/setSpeed;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_2
    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 147
    check-cast p2, Lo/AFHelper;

    .line 1149
    iget-object p1, p0, Lo/remove$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/trimToSize;

    if-eqz p1, :cond_0

    .line 2100
    iget-object p1, p1, Lo/trimToSize;->onPostMessage:Lo/trimToSize$onNavigationEvent;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1149
    invoke-interface {p1, v0, p2}, Lo/trimToSize$onNavigationEvent;->ICustomTabsCallback(ZLo/AFHelper;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2}, Lo/CampaignResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lo/remove$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/trimToSize;

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, v0, Lo/trimToSize;->extraCallback:Lo/trimToSize$extraCallback;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1, p2}, Lo/trimToSize$extraCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
