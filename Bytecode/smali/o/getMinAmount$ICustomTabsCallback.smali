.class final Lo/getMinAmount$ICustomTabsCallback;
.super Lo/setPointerStrokeWidth;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/getMinAmount;

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/getMinAmount;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getMinAmount$ICustomTabsCallback;->extraCallback:Lo/getMinAmount;

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lo/setPointerStrokeWidth;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/getMinAmount$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle this message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lo/getMinAmount$ICustomTabsCallback;->extraCallback:Lo/getMinAmount;

    iget-object v0, p0, Lo/getMinAmount$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result p1

    .line 7
    iget-object v0, p0, Lo/getMinAmount$ICustomTabsCallback;->extraCallback:Lo/getMinAmount;

    invoke-virtual {v0, p1}, Lo/PaymentItem;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lo/getMinAmount$ICustomTabsCallback;->extraCallback:Lo/getMinAmount;

    iget-object v1, p0, Lo/getMinAmount$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lo/getMinAmount;->onNavigationEvent(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
