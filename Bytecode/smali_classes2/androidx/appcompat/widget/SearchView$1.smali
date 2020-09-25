.class final Landroidx/appcompat/widget/SearchView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$1;->extraCallback:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 193
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$1;->extraCallback:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lo/stop;

    instance-of v0, v0, Lo/MediaBrowserCompat$CustomActionCallback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$1;->extraCallback:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Lo/stop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/stop;->onPostMessage(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
