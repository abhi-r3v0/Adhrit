.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getUid$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getUid$onNavigationEvent;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/validateRunningExperiments;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/validateRunningExperiments<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lo/validateRunningExperiments;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/validateRunningExperiments<",
            "TT;>;)V"
        }
    .end annotation

    .line 1366
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1382
    instance-of v0, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;

    iget-object p1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    .line 1383
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lo/validateRunningExperiments;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()V
    .locals 2

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->ICustomTabsCallback:Lo/validateRunningExperiments;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$onPostMessage;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-interface {v0, v1}, Lo/validateRunningExperiments;->onPostMessage(Landroid/view/View;)V

    return-void
.end method
