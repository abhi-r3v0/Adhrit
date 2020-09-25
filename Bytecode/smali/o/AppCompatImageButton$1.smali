.class final Lo/AppCompatImageButton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppCompatImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/AppCompatImageButton;


# direct methods
.method constructor <init>(Lo/AppCompatImageButton;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/AppCompatImageButton$1;->extraCallback:Lo/AppCompatImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/AppCompatImageButton$1;->extraCallback:Lo/AppCompatImageButton;

    iget-object v0, v0, Lo/AppCompatImageButton;->onMessageChannelReady:Lo/setMeasureWithLargestChildEnabled;

    iget-object v1, p0, Lo/AppCompatImageButton$1;->extraCallback:Lo/AppCompatImageButton;

    invoke-interface {v0, v1}, Lo/setMeasureWithLargestChildEnabled;->onPostMessage(Lo/hasDividerBeforeChildAt;)V

    return-void
.end method
