.class final Lo/findFirstVisibleItemClosestToEnd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstVisibleItemClosestToEnd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/findFirstVisibleItemClosestToEnd;


# direct methods
.method constructor <init>(Lo/findFirstVisibleItemClosestToEnd;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    const-string v2, "parentView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Integer;)V

    .line 48
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->extraCallback(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Integer;)V

    .line 49
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->parentView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/onChildrenLoaded;->getX()F

    move-result v1

    iget-object v2, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    invoke-static {v2}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(Lo/findFirstVisibleItemClosestToEnd;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->extraCallback(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Float;)V

    .line 50
    iget-object v0, p0, Lo/findFirstVisibleItemClosestToEnd$3;->onPostMessage:Lo/findFirstVisibleItemClosestToEnd;

    sget v1, Lo/preferLastSpan$ICustomTabsCallback;->textView:I

    invoke-virtual {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lo/findFirstVisibleItemClosestToEnd;->onNavigationEvent(Lo/findFirstVisibleItemClosestToEnd;Ljava/lang/Float;)V

    return-void
.end method
