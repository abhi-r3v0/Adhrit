.class final Lo/newCachedSingleThreadExecutor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/newCachedSingleThreadExecutor;->extraCallback(ILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/newCachedSingleThreadExecutor;

.field final synthetic onNavigationEvent:I

.field final synthetic onPostMessage:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lo/newCachedSingleThreadExecutor;ILandroid/app/Notification;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/newCachedSingleThreadExecutor$2;->ICustomTabsCallback:Lo/newCachedSingleThreadExecutor;

    iput p2, p0, Lo/newCachedSingleThreadExecutor$2;->onNavigationEvent:I

    iput-object p3, p0, Lo/newCachedSingleThreadExecutor$2;->onPostMessage:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor$2;->ICustomTabsCallback:Lo/newCachedSingleThreadExecutor;

    iget-object v0, v0, Lo/newCachedSingleThreadExecutor;->onNavigationEvent:Landroid/app/NotificationManager;

    iget v1, p0, Lo/newCachedSingleThreadExecutor$2;->onNavigationEvent:I

    iget-object v2, p0, Lo/newCachedSingleThreadExecutor$2;->onPostMessage:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
