.class final Lo/createButton$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/createButton$2;->onMessageChannelReady:Landroid/content/Context;

    iput-object p2, p0, Lo/createButton$2;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/createButton$2;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lo/createButton$2;->onMessageChannelReady:Landroid/content/Context;

    iget-object v1, p0, Lo/createButton$2;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/createButton$2;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/createButton;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    return-object v0
.end method
