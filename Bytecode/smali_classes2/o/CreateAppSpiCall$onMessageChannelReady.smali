.class public final Lo/CreateAppSpiCall$onMessageChannelReady;
.super Lo/CreateAppSpiCall;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateAppSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p2}, Lo/CreateAppSpiCall;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lo/CreateAppSpiCall$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lo/CreateAppSpiCall$onMessageChannelReady;->extraCallback()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    const-class v0, Landroid/R$drawable;

    return-object v0
.end method

.method protected final onPostMessage()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/CreateAppSpiCall$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
