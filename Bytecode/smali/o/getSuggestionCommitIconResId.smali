.class public final Lo/getSuggestionCommitIconResId;
.super Lo/setSpeed;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cred/pay/ui/views/CredPaymentImageView;",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "loadImage",
        "",
        "url",
        "",
        "placeholderImage",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "loadImageAdjustBound",
        "adjustWidth",
        "",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lo/getSuggestionCommitIconResId;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lo/getSuggestionCommitIconResId;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lo/setSpeed;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/getSuggestionCommitIconResId;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lo/getSuggestionCommitIconResId;->onPostMessage(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lo/setSpeed;->setImageURI(Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8054
    new-instance v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 8112
    iput-object p1, v1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->ICustomTabsCallback:Landroid/net/Uri;

    .line 44
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->onNavigationEvent()Lo/getHostPrefix;

    move-result-object p1

    .line 46
    invoke-static {}, Lo/CombineContinuationsWorker;->onMessageChannelReady()Lo/CredPointCountModel;

    move-result-object v0

    .line 9124
    iput-object p1, v0, Lo/Campaign;->ICustomTabsCallback:Ljava/lang/Object;

    .line 47
    check-cast v0, Lo/CredPointCountModel;

    const/4 v1, 0x1

    .line 10231
    iput-boolean v1, v0, Lo/Campaign;->onMessageChannelReady:Z

    .line 48
    check-cast v0, Lo/CredPointCountModel;

    .line 11139
    iget-object v2, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 11195
    iget-object v2, v2, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    .line 11291
    iput-object v2, v0, Lo/Campaign;->asInterface:Lo/getMinFrame;

    .line 49
    check-cast v0, Lo/CredPointCountModel;

    .line 50
    new-instance v2, Lo/getSuggestionCommitIconResId$extraCallback;

    invoke-direct {v2, p0, p1, v1}, Lo/getSuggestionCommitIconResId$extraCallback;-><init>(Lo/getSuggestionCommitIconResId;Lo/getHostPrefix;Z)V

    check-cast v2, Lo/CampaignResponseJsonAdapter;

    .line 12243
    iput-object v2, v0, Lo/Campaign;->onPostMessage:Lo/CampaignResponseJsonAdapter;

    .line 50
    check-cast v0, Lo/CredPointCountModel;

    .line 86
    invoke-virtual {v0}, Lo/Campaign;->extraCallback()Lo/DataCampaign;

    move-result-object p1

    .line 87
    check-cast p1, Lo/getMinFrame;

    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setController(Lo/getMinFrame;)V

    return-void

    .line 8215
    :cond_1
    throw v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 30
    invoke-virtual {p0, p1}, Lo/setSpeed;->setImageURI(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1116
    iget-object v1, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v1, v1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v1, :cond_0

    check-cast v1, Lo/setMaxFrame;

    .line 32
    check-cast v1, Lo/getComposition;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 2459
    iget-object v2, v1, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3433
    invoke-virtual {v1, p1, p2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2215
    :cond_0
    throw v0

    .line 4116
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 4216
    iget-object p2, p2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p2, :cond_7

    check-cast p2, Lo/setMaxFrame;

    .line 33
    check-cast p2, Lo/getComposition;

    const-string v1, "hierarchy"

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    .line 6369
    invoke-virtual {p2, v2}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p2

    .line 6370
    instance-of v2, p2, Lo/fromAssets;

    if-eqz v2, :cond_2

    .line 6371
    check-cast p2, Lo/fromAssets;

    goto :goto_1

    .line 6373
    :cond_2
    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p2, v2}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p2

    .line 7094
    :goto_1
    iget-object v2, p2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v2, v1, :cond_4

    if-eqz v2, :cond_3

    .line 8053
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 7098
    iput-object v1, p2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 7099
    iput-object v0, p2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 7100
    invoke-virtual {p2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 7101
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void

    .line 6215
    :cond_6
    throw v0

    .line 5215
    :cond_7
    throw v0
.end method
