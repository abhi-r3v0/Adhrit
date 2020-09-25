.class final Lo/BinaryImagesConverter$FileIdStrategy$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/parseCustomAttribute$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BinaryImagesConverter$FileIdStrategy;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/BinaryImagesConverter$FileIdStrategy;


# direct methods
.method constructor <init>(Lo/BinaryImagesConverter$FileIdStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/BinaryImagesConverter$FileIdStrategy$3;->this$0:Lo/BinaryImagesConverter$FileIdStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/BinaryImagesConverter$FileIdStrategy$3;->this$0:Lo/BinaryImagesConverter$FileIdStrategy;

    invoke-static {v0, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->access$000(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
