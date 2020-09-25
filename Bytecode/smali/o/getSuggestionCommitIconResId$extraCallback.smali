.class public final Lo/getSuggestionCommitIconResId$extraCallback;
.super Lo/CampaignResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSuggestionCommitIconResId;->onNavigationEvent(Ljava/lang/String;)V
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
        "com/cred/pay/ui/views/CredPaymentImageView$loadImageAdjustBound$controller$1",
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
.field final synthetic ICustomTabsCallback:Lo/getHostPrefix;

.field final synthetic extraCallback:Lo/getSuggestionCommitIconResId;

.field final synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/getSuggestionCommitIconResId;Lo/getHostPrefix;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getHostPrefix;",
            "Z)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lo/getSuggestionCommitIconResId$extraCallback;->extraCallback:Lo/getSuggestionCommitIconResId;

    iput-object p2, p0, Lo/getSuggestionCommitIconResId$extraCallback;->ICustomTabsCallback:Lo/getHostPrefix;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/getSuggestionCommitIconResId$extraCallback;->onNavigationEvent:Z

    invoke-direct {p0}, Lo/CampaignResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 50
    check-cast p2, Lo/AFHelper;

    .line 2061
    invoke-super {p0, p1, p2, p3}, Lo/CampaignResponse;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2069
    iget-object p1, p0, Lo/getSuggestionCommitIconResId$extraCallback;->extraCallback:Lo/getSuggestionCommitIconResId;

    new-instance p3, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;

    invoke-direct {p3, p0, p2}, Lo/getSuggestionCommitIconResId$extraCallback$ICustomTabsCallback;-><init>(Lo/getSuggestionCommitIconResId$extraCallback;Lo/AFHelper;)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 52
    invoke-super {p0, p1, p2}, Lo/CampaignResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "image_load"

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
