.class public final Lo/FarmsResponseModel;
.super Lo/dump;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/FarmResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FarmResult;)V
    .locals 1

    invoke-direct {p0}, Lo/dump;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/FarmsResponseModel;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/content/ComponentName;Lo/getStateLabel;)V
    .locals 0

    iget-object p1, p0, Lo/FarmsResponseModel;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FarmResult;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lo/FarmResult;->extraCallback(Lo/getStateLabel;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lo/FarmsResponseModel;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FarmResult;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/FarmResult;->extraCallback()V

    :cond_0
    return-void
.end method
