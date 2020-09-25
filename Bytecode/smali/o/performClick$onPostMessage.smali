.class final Lo/performClick$onPostMessage;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/performClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lo/setTextFuture<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/AppCompatImageHelper;

.field final onMessageChannelReady:Z

.field onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AppCompatImageHelper;Lo/setTextFuture;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Lo/setTextFuture<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lo/setTextFuture<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    if-eqz p1, :cond_2

    .line 185
    check-cast p1, Lo/AppCompatImageHelper;

    iput-object p1, p0, Lo/performClick$onPostMessage;->ICustomTabsCallback:Lo/AppCompatImageHelper;

    .line 1045
    iget-boolean p1, p2, Lo/setTextFuture;->onMessageChannelReady:Z

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 2041
    iget-object p1, p2, Lo/setTextFuture;->onNavigationEvent:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    if-eqz p1, :cond_0

    .line 188
    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    goto :goto_0

    .line 3029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 189
    :goto_0
    iput-object p1, p0, Lo/performClick$onPostMessage;->onPostMessage:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 3045
    iget-boolean p1, p2, Lo/setTextFuture;->onMessageChannelReady:Z

    .line 190
    iput-boolean p1, p0, Lo/performClick$onPostMessage;->onMessageChannelReady:Z

    return-void

    .line 1029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
