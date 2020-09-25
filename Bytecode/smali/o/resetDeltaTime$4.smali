.class final Lo/resetDeltaTime$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPageMargin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resetDeltaTime;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPageMargin<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/resetDeltaTime;


# direct methods
.method constructor <init>(Lo/resetDeltaTime;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/resetDeltaTime$4;->onNavigationEvent:Lo/resetDeltaTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1039
    :try_start_0
    iget-object v0, p0, Lo/resetDeltaTime$4;->onNavigationEvent:Lo/resetDeltaTime;

    invoke-virtual {v0, p1}, Lo/resetDeltaTime;->onNavigationEvent(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method
