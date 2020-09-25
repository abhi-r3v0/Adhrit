.class final Lo/getIdentifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getGaid;

.field private final synthetic onPostMessage:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lo/getGaid;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo/getIdentifier;->onNavigationEvent:Lo/getGaid;

    iput-object p2, p0, Lo/getIdentifier;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    iget-object v0, p0, Lo/getIdentifier;->onNavigationEvent:Lo/getGaid;

    iget-object v1, p0, Lo/getIdentifier;->onPostMessage:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/getGaid;->onPostMessage(Lo/getGaid;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
