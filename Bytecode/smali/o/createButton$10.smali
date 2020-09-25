.class final Lo/createButton$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->extraCallback(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/verifyNotNull<",
        "Lo/createCheckBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/createCheckBox;


# direct methods
.method constructor <init>(Lo/createCheckBox;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lo/createButton$10;->onNavigationEvent:Lo/createCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1484
    new-instance v0, Lo/verifyNotNull;

    iget-object v1, p0, Lo/createButton$10;->onNavigationEvent:Lo/createCheckBox;

    invoke-direct {v0, v1}, Lo/verifyNotNull;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
