.class final Lo/DiffUtil$ItemCallback$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DiffUtil$ItemCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/DiffUtil$ItemCallback$warmup$4;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/dreamplug/fabrik/ui/fileUpload/UploadFilesBottomSheet$startLoopAnimationListener$2$1",
        "invoke",
        "()Lcom/dreamplug/fabrik/ui/fileUpload/UploadFilesBottomSheet$startLoopAnimationListener$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DiffUtil$ItemCallback$warmup;->extraCallback:Lo/DiffUtil$ItemCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1202
    new-instance v0, Lo/DiffUtil$ItemCallback$warmup$4;

    invoke-direct {v0, p0}, Lo/DiffUtil$ItemCallback$warmup$4;-><init>(Lo/DiffUtil$ItemCallback$warmup;)V

    return-object v0
.end method
