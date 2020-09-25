.class final Lo/newCachedSingleThreadExecutor$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/newCachedSingleThreadExecutor;->ICustomTabsCallback(IILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:I

.field final synthetic onMessageChannelReady:I

.field final synthetic onNavigationEvent:Landroid/app/Notification;

.field final synthetic onPostMessage:Lo/newCachedSingleThreadExecutor;


# direct methods
.method constructor <init>(Lo/newCachedSingleThreadExecutor;ILandroid/app/Notification;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/newCachedSingleThreadExecutor$5;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    iput p2, p0, Lo/newCachedSingleThreadExecutor$5;->extraCallback:I

    iput-object p3, p0, Lo/newCachedSingleThreadExecutor$5;->onNavigationEvent:Landroid/app/Notification;

    iput p4, p0, Lo/newCachedSingleThreadExecutor$5;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor$5;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    iget v1, p0, Lo/newCachedSingleThreadExecutor$5;->extraCallback:I

    iget-object v2, p0, Lo/newCachedSingleThreadExecutor$5;->onNavigationEvent:Landroid/app/Notification;

    iget v3, p0, Lo/newCachedSingleThreadExecutor$5;->onMessageChannelReady:I

    invoke-virtual {v0, v1, v2, v3}, Lo/newCachedSingleThreadExecutor;->startForeground(ILandroid/app/Notification;I)V

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor$5;->onPostMessage:Lo/newCachedSingleThreadExecutor;

    iget v1, p0, Lo/newCachedSingleThreadExecutor$5;->extraCallback:I

    iget-object v2, p0, Lo/newCachedSingleThreadExecutor$5;->onNavigationEvent:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
