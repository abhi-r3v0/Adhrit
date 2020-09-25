.class final Lcom/google/android/material/bottomappbar/BottomAppBar$1;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field private synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onNavigationEvent:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onNavigationEvent:I

    .line 2109
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->ICustomTabsCallback(I)F

    move-result v0

    .line 558
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 559
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$1;)V

    .line 3434
    iget-object v1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    if-nez v1, :cond_0

    .line 3435
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->ICustomTabsCallback()Lo/getUid;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 3437
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onRelationshipValidationResult:Lo/getUid;

    .line 3714
    new-instance v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;

    invoke-direct {v2, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;)V

    const/4 p1, 0x1

    .line 2584
    invoke-virtual {v1, v2, p1}, Lo/getUid;->onNavigationEvent(Lo/getUid$onMessageChannelReady;Z)V

    return-void
.end method
