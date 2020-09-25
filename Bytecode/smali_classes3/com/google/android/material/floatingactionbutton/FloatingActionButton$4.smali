.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getUid$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private synthetic onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;->onNavigationEvent(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$4;->onPostMessage:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$extraCallback;->onMessageChannelReady()V

    return-void
.end method
