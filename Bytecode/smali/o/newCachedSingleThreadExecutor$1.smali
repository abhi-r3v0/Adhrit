.class final Lo/newCachedSingleThreadExecutor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/newCachedSingleThreadExecutor;->onNavigationEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/newCachedSingleThreadExecutor;

.field final synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/newCachedSingleThreadExecutor;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lo/newCachedSingleThreadExecutor$1;->extraCallback:Lo/newCachedSingleThreadExecutor;

    iput p2, p0, Lo/newCachedSingleThreadExecutor$1;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lo/newCachedSingleThreadExecutor$1;->extraCallback:Lo/newCachedSingleThreadExecutor;

    iget-object v0, v0, Lo/newCachedSingleThreadExecutor;->onNavigationEvent:Landroid/app/NotificationManager;

    iget v1, p0, Lo/newCachedSingleThreadExecutor$1;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
