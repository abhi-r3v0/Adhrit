.class public final Lo/CreateAppSpiCall$extraCallback;
.super Lo/CreateAppSpiCall;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateAppSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lo/CreateAppSpiCall;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lo/CreateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lo/CreateAppSpiCall$extraCallback;->extraCallback()V

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

    .line 28
    const-class v0, Landroid/R$id;

    return-object v0
.end method

.method protected final onPostMessage()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/CreateAppSpiCall$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
