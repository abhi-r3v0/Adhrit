.class final Lo/skipToNext$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/skipToNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/skipToNext;


# direct methods
.method constructor <init>(Lo/skipToNext;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lo/skipToNext$4;->onMessageChannelReady:Lo/skipToNext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lo/skipToNext$4;->onMessageChannelReady:Lo/skipToNext;

    iget-object v0, v0, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    iget-object v1, p0, Lo/skipToNext$4;->onMessageChannelReady:Lo/skipToNext;

    iget-object v1, v1, Lo/skipToNext;->onMessageChannelReady:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
