.class final Lo/signInWithEmailAndPassword$1;
.super Lo/confirmPasswordReset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/signInWithEmailAndPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/signInWithEmailAndPassword;


# direct methods
.method constructor <init>(Lo/signInWithEmailAndPassword;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lo/signInWithEmailAndPassword$1;->onPostMessage:Lo/signInWithEmailAndPassword;

    invoke-direct {p0}, Lo/confirmPasswordReset;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lo/signInWithEmailAndPassword$1;->onPostMessage:Lo/signInWithEmailAndPassword;

    const/4 p2, 0x1

    .line 1039
    iput-boolean p2, p1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 51
    iget-object p1, p0, Lo/signInWithEmailAndPassword$1;->onPostMessage:Lo/signInWithEmailAndPassword;

    .line 2039
    iget-object p1, p1, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/signInWithEmailAndPassword$onPostMessage;

    if-eqz p1, :cond_1

    .line 53
    invoke-interface {p1}, Lo/signInWithEmailAndPassword$onPostMessage;->onPostMessage()V

    :cond_1
    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 59
    iget-object p1, p0, Lo/signInWithEmailAndPassword$1;->onPostMessage:Lo/signInWithEmailAndPassword;

    const/4 v0, 0x1

    .line 3039
    iput-boolean v0, p1, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 61
    iget-object p1, p0, Lo/signInWithEmailAndPassword$1;->onPostMessage:Lo/signInWithEmailAndPassword;

    .line 4039
    iget-object p1, p1, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/signInWithEmailAndPassword$onPostMessage;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Lo/signInWithEmailAndPassword$onPostMessage;->onPostMessage()V

    :cond_0
    return-void
.end method
