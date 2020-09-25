.class final Lo/getPromptPosition$extraCallback$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPromptPosition$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/getPromptPosition$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getPromptPosition$extraCallback;)V
    .locals 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/getPromptPosition$extraCallback$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    const-string v0, "ViewTarget"

    const/4 v1, 0x2

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    iget-object v0, p0, Lo/getPromptPosition$extraCallback$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPromptPosition$extraCallback;

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {v0}, Lo/getPromptPosition$extraCallback;->extraCallback()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
