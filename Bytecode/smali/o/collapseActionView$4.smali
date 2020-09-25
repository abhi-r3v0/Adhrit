.class final Lo/collapseActionView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getFixedHeightMinor$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/collapseActionView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Landroid/content/Context;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/collapseActionView$4;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/collapseActionView$4;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/io/File;
    .locals 3

    .line 31
    iget-object v0, p0, Lo/collapseActionView$4;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lo/collapseActionView$4;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lo/collapseActionView$4;->onPostMessage:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method
