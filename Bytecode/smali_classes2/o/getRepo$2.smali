.class final Lo/getRepo$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRepo;->extraCallback(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/newPersistentConnection;

.field private synthetic onNavigationEvent:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lo/newPersistentConnection;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lo/getRepo$2;->ICustomTabsCallback:Lo/newPersistentConnection;

    iput-object p2, p0, Lo/getRepo$2;->onNavigationEvent:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 433
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transformation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getRepo$2;->ICustomTabsCallback:Lo/newPersistentConnection;

    .line 434
    invoke-interface {v2}, Lo/newPersistentConnection;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " crashed with exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/getRepo$2;->onNavigationEvent:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method