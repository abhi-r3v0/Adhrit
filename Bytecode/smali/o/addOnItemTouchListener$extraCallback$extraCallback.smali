.class final Lo/addOnItemTouchListener$extraCallback$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addOnItemTouchListener$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/StoreLandingFragment$buttonAnimationObserver$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addOnItemTouchListener$extraCallback;

.field private synthetic onMessageChannelReady:Ljava/lang/Float;


# direct methods
.method constructor <init>(Ljava/lang/Float;Lo/addOnItemTouchListener$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->onMessageChannelReady:Ljava/lang/Float;

    iput-object p2, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1347
    iget-object v0, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v0, v0, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->order:I

    invoke-virtual {v0, v1}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/saveOldPosition;

    const-string v1, "order"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1348
    iget-object v2, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v2, v2, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    invoke-static {v2}, Lo/addOnItemTouchListener;->onRelationshipValidationResult(Lo/addOnItemTouchListener;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 1349
    iget-object v2, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v2, v2, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    iget-object v3, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v3, v3, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->order:I

    invoke-virtual {v3, v4}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/saveOldPosition;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;I)V

    .line 2009
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Resources.getSystem()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x42280000    # 42.0f

    const/4 v5, 0x1

    .line 2010
    invoke-static {v5, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1351
    iget-object v6, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v6, v6, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    invoke-static {v6}, Lo/addOnItemTouchListener;->onRelationshipValidationResult(Lo/addOnItemTouchListener;)I

    move-result v6

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 3010
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    .line 1351
    iget-object v4, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->onMessageChannelReady:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1352
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1353
    iget-object v2, p0, Lo/addOnItemTouchListener$extraCallback$extraCallback;->extraCallback:Lo/addOnItemTouchListener$extraCallback;

    iget-object v2, v2, Lo/addOnItemTouchListener$extraCallback;->onMessageChannelReady:Lo/addOnItemTouchListener;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->order:I

    invoke-virtual {v2, v3}, Lo/addOnItemTouchListener;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/saveOldPosition;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
