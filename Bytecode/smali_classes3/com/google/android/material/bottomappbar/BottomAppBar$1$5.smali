.class final Lcom/google/android/material/bottomappbar/BottomAppBar$1$5;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onNavigationEvent(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar$1;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$1;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1$5;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$1$5;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;->onMessageChannelReady:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1452
    iget v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->extraCallback:I

    return-void
.end method
