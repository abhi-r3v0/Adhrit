.class Lo/onProgressUpdate$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onProgressUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onProgressUpdate;


# direct methods
.method constructor <init>(Lo/onProgressUpdate;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 704
    iget-object v0, p0, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/onProgressUpdate;->mResolveHoverRunnable:Lo/onProgressUpdate$extraCallback;

    .line 705
    iget-object v0, p0, Lo/onProgressUpdate$extraCallback;->onPostMessage:Lo/onProgressUpdate;

    invoke-virtual {v0}, Lo/onProgressUpdate;->drawableStateChanged()V

    return-void
.end method
