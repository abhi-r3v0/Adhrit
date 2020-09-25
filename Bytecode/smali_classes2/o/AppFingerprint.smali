.class final Lo/AppFingerprint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/ref/WeakReference;

.field private final synthetic onPostMessage:Lo/getGaid;


# direct methods
.method constructor <init>(Lo/getGaid;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo/AppFingerprint;->onPostMessage:Lo/getGaid;

    iput-object p2, p0, Lo/AppFingerprint;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lo/AppFingerprint;->onPostMessage:Lo/getGaid;

    iget-object v1, p0, Lo/AppFingerprint;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/getGaid;->onPostMessage(Lo/getGaid;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
