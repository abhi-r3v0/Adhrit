.class public final Lo/signInWithEmailAndPassword;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/signInWithEmailAndPassword$onPostMessage;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

.field public extraCallback:F

.field public final onMessageChannelReady:Lo/confirmPasswordReset;

.field onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/signInWithEmailAndPassword$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lo/signInWithEmailAndPassword$onPostMessage;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lo/signInWithEmailAndPassword$1;

    invoke-direct {v0, p0}, Lo/signInWithEmailAndPassword$1;-><init>(Lo/signInWithEmailAndPassword;)V

    iput-object v0, p0, Lo/signInWithEmailAndPassword;->onMessageChannelReady:Lo/confirmPasswordReset;

    .line 69
    iput-boolean v1, p0, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    .line 1082
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/verifyPasswordResetCode;Landroid/content/Context;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    if-eq v0, p1, :cond_2

    .line 135
    iput-object p1, p0, Lo/signInWithEmailAndPassword;->ICustomTabsCallback$Stub:Lo/verifyPasswordResetCode;

    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/signInWithEmailAndPassword;->onMessageChannelReady:Lo/confirmPasswordReset;

    .line 1314
    invoke-virtual {p1, p2, v0, v1}, Lo/verifyPasswordResetCode;->extraCallback(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    .line 139
    iget-object v0, p0, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/signInWithEmailAndPassword$onPostMessage;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    invoke-interface {v0}, Lo/signInWithEmailAndPassword$onPostMessage;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 143
    :cond_0
    iget-object v0, p0, Lo/signInWithEmailAndPassword;->onPostMessage:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/signInWithEmailAndPassword;->onMessageChannelReady:Lo/confirmPasswordReset;

    invoke-virtual {p1, p2, v0, v1}, Lo/verifyPasswordResetCode;->onMessageChannelReady(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lo/signInWithEmailAndPassword;->ICustomTabsCallback:Z

    .line 147
    :cond_1
    iget-object p1, p0, Lo/signInWithEmailAndPassword;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/signInWithEmailAndPassword$onPostMessage;

    if-eqz p1, :cond_2

    .line 149
    invoke-interface {p1}, Lo/signInWithEmailAndPassword$onPostMessage;->onPostMessage()V

    .line 150
    invoke-interface {p1}, Lo/signInWithEmailAndPassword$onPostMessage;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lo/signInWithEmailAndPassword$onPostMessage;->onStateChange([I)Z

    :cond_2
    return-void
.end method
