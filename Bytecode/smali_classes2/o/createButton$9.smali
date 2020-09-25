.class final Lo/createButton$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->ICustomTabsCallback(Ljava/io/InputStream;Ljava/lang/String;)Lo/createSeekBar;
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
.field private synthetic ICustomTabsCallback:Ljava/io/InputStream;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lo/createButton$9;->ICustomTabsCallback:Ljava/io/InputStream;

    iput-object p2, p0, Lo/createButton$9;->onNavigationEvent:Ljava/lang/String;

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

    .line 1277
    iget-object v0, p0, Lo/createButton$9;->ICustomTabsCallback:Ljava/io/InputStream;

    iget-object v1, p0, Lo/createButton$9;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/createButton;->onNavigationEvent(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    return-object v0
.end method
