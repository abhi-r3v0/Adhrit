.class Lo/MediaBrowserCompat$MediaBrowserImplBase$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplBase;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$1;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageChannelReady(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    .line 34
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
