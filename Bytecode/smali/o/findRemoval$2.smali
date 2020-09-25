.class final Lo/findRemoval$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findRemoval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Boolean;",
        "Lo/AFHelper;",
        "Lo/addWrites;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/findRemoval;


# direct methods
.method constructor <init>(Lo/findRemoval;)V
    .locals 0

    iput-object p1, p0, Lo/findRemoval$2;->extraCallback:Lo/findRemoval;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1022
    iget-object p1, p0, Lo/findRemoval$2;->extraCallback:Lo/findRemoval;

    iget-object p1, p1, Lo/findRemoval;->extraCallback:Lo/areItemsTheSame;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->image1:I

    invoke-virtual {p1, p2}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string p2, "image1"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    check-cast p1, Lo/setMaxFrame;

    .line 1022
    check-cast p1, Lo/getComposition;

    const-string v0, "image1.hierarchy"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onRelationshipValidationResult()Lo/setFailureListener$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    .line 3369
    invoke-virtual {p1, v1}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 3370
    instance-of v1, p1, Lo/fromAssets;

    if-eqz v1, :cond_0

    .line 3371
    check-cast p1, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v1, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v1}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 4094
    :goto_0
    iget-object v1, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_1

    .line 5053
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    .line 4098
    iput-object v0, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object p2, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 3215
    :cond_4
    throw p2

    .line 2215
    :cond_5
    throw p2
.end method
