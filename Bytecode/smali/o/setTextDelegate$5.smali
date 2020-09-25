.class final Lo/setTextDelegate$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTextDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setTextDelegate;


# direct methods
.method constructor <init>(Lo/setTextDelegate;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lo/setTextDelegate$5;->onPostMessage:Lo/setTextDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/setTextDelegate$5;->onPostMessage:Lo/setTextDelegate;

    invoke-static {v0}, Lo/setTextDelegate;->extraCallback(Lo/setTextDelegate;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lo/setTextDelegate$5;->onPostMessage:Lo/setTextDelegate;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
