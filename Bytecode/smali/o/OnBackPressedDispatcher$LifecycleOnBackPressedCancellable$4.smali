.class final Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;


# direct methods
.method constructor <init>(Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable$4;->onNavigationEvent:Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 43
    iget-object p1, p0, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable$4;->onNavigationEvent:Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-virtual {p1, p2}, Lo/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
