.class final Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove$mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setViewData$1$1$1$2",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$$special$$inlined$let$lambda$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/offsetPositionRecordsForRemove$mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove$mayLaunchUrl;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$mayLaunchUrl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1388
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$mayLaunchUrl;

    iget-object p1, p1, Lo/offsetPositionRecordsForRemove$mayLaunchUrl;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object p2, p0, Lo/offsetPositionRecordsForRemove$mayLaunchUrl$3;->onMessageChannelReady:Lo/offsetPositionRecordsForRemove$mayLaunchUrl;

    iget-object p2, p2, Lo/offsetPositionRecordsForRemove$mayLaunchUrl;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    .line 2078
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    .line 3022
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 1388
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p2, v0, v1, v0, v2}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
