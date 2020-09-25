.class final Lo/ResourceUnityVersionProvider$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ResourceUnityVersionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field volatile ICustomTabsCallback:Z

.field private extraCallback:Z

.field private final onMessageChannelReady:Lo/FirebaseCrashlyticsNdk;

.field final onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/FirebaseCrashlyticsNdk;Landroid/os/Handler;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onMessageChannelReady:Lo/FirebaseCrashlyticsNdk;

    .line 133
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onPostMessage:Ljava/lang/ref/WeakReference;

    .line 134
    iput-object p3, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onNavigationEvent:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 135
    iput-boolean p2, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->extraCallback:Z

    const/4 p2, 0x0

    .line 136
    iput-boolean p2, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->run()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->run()V

    return-void
.end method

.method public final run()V
    .locals 3

    .line 152
    iget-boolean v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 157
    iget-boolean v1, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onMessageChannelReady:Lo/FirebaseCrashlyticsNdk;

    invoke-virtual {v1, v0}, Lo/FirebaseCrashlyticsNdk;->ICustomTabsCallback(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onNavigationEvent:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1175
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->extraCallback:Z

    if-eqz v0, :cond_4

    .line 1176
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1180
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1183
    :cond_3
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onMessageChannelReady:Lo/FirebaseCrashlyticsNdk;

    invoke-virtual {v0}, Lo/FirebaseCrashlyticsNdk;->extraCallback()V

    :cond_4
    const/4 v0, 0x0

    .line 1185
    iput-boolean v0, p0, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->extraCallback:Z

    return-void
.end method
