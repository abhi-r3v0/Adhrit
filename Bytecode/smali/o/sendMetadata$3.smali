.class final Lo/sendMetadata$3;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendMetadata;->onMessageChannelReady(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroid/view/View;

.field final synthetic onNavigationEvent:Lo/sendMetadata;


# direct methods
.method constructor <init>(Lo/sendMetadata;Landroid/view/View;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/sendMetadata$3;->onNavigationEvent:Lo/sendMetadata;

    iput-object p2, p0, Lo/sendMetadata$3;->extraCallback:Landroid/view/View;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lo/sendMetadata$3;->extraCallback:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/equals;->onPostMessage(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Lo/sendMetadata$3;->extraCallback:Landroid/view/View;

    invoke-static {v0}, Lo/equals;->extraCallback(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method
