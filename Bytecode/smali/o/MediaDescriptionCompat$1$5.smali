.class final Lo/MediaDescriptionCompat$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaDescriptionCompat$1;->ICustomTabsCallback(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/MediaDescriptionCompat$1$onPostMessage;

.field final synthetic onNavigationEvent:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;Lo/MediaDescriptionCompat$1$onPostMessage;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/MediaDescriptionCompat$1$5;->onNavigationEvent:Landroid/app/Application;

    iput-object p2, p0, Lo/MediaDescriptionCompat$1$5;->onMessageChannelReady:Lo/MediaDescriptionCompat$1$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lo/MediaDescriptionCompat$1$5;->onNavigationEvent:Landroid/app/Application;

    iget-object v1, p0, Lo/MediaDescriptionCompat$1$5;->onMessageChannelReady:Lo/MediaDescriptionCompat$1$onPostMessage;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
