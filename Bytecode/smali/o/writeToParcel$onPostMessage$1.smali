.class final Lo/writeToParcel$onPostMessage$1;
.super Lo/isBrowsable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeToParcel$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isBrowsable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback$Stub:Lo/writeToParcel$onPostMessage;


# direct methods
.method constructor <init>(Lo/writeToParcel$onPostMessage;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lo/writeToParcel$onPostMessage$1;->ICustomTabsCallback$Stub:Lo/writeToParcel$onPostMessage;

    invoke-direct {p0}, Lo/isBrowsable;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onPostMessage()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lo/writeToParcel$onPostMessage$1;->ICustomTabsCallback$Stub:Lo/writeToParcel$onPostMessage;

    iget-object v0, v0, Lo/writeToParcel$onPostMessage;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeToParcel$ICustomTabsCallback;

    if-nez v0, :cond_0

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tag=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
