.class final Lo/setSession$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/setPlatform;",
        ">;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lo/setSession;


# direct methods
.method constructor <init>(Lo/setSession;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lo/setDiskUsed;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lo/setSession$extraCallback;->this$0:Lo/setSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lo/setSession$extraCallback;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/setSession$extraCallback;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lo/setSession$extraCallback;->next()Lo/setPlatform;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/setPlatform;
    .locals 2

    .line 71
    iget-object v0, p0, Lo/setSession$extraCallback;->this$0:Lo/setSession;

    iget-object v1, p0, Lo/setSession$extraCallback;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setDiskUsed;

    invoke-static {v0, v1}, Lo/setSession;->access$000(Lo/setSession;Lo/setDiskUsed;)Lo/setPlatform;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "QuerySnapshot does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
