.class public Lo/hasFocus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lo/hasFocus;->ICustomTabsCallback:Ljava/lang/Object;

    return-void

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/hasFocus;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/hasFocus;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method
