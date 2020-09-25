.class final Lo/getLegacyAudioStream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getLegacyAudioStream$extraCallback;
    }
.end annotation


# static fields
.field private static onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/getLegacyAudioStream;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static onPostMessage(Landroid/content/Context;)V
    .locals 2

    .line 40
    sget-object v0, Lo/getLegacyAudioStream;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    new-instance v0, Lo/getLegacyAudioStream$extraCallback;

    invoke-direct {v0}, Lo/getLegacyAudioStream$extraCallback;-><init>()V

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
