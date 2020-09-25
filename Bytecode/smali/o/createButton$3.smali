.class final Lo/createButton$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->onNavigationEvent(Landroid/content/Context;ILjava/lang/String;)Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/verifyNotNull<",
        "Lo/createCheckBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Landroid/content/Context;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/createButton$3;->onPostMessage:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lo/createButton$3;->onMessageChannelReady:Landroid/content/Context;

    iput p3, p0, Lo/createButton$3;->onNavigationEvent:I

    iput-object p4, p0, Lo/createButton$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lo/createButton$3;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v0, p0, Lo/createButton$3;->onMessageChannelReady:Landroid/content/Context;

    .line 1219
    :goto_0
    iget v1, p0, Lo/createButton$3;->onNavigationEvent:I

    iget-object v2, p0, Lo/createButton$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/createButton;->extraCallback(Landroid/content/Context;ILjava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    return-object v0
.end method
